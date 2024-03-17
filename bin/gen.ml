[@@@ocaml.warning "-69"]

open Printf

let () =
  Printexc.register_printer (function
    | Ppx_yojson_conv_lib.Yojson_conv.Of_yojson_error (exn, json) ->
        let json =
          let json = Yojson.Safe.to_string json in
          String.sub ~pos:0 ~len:(min 100 (String.length json)) json
        in
        Some
          (Printf.sprintf "exn=%s json=%s"
             (Printexc.to_string exn)
             json)
    | _ -> None)

open Cmdliner

type 'a assoc = (string * 'a) list

let assoc_of_yojson f = function
  | `Assoc l -> List.map ~f:(fun (k, v) -> k, f v) l
  | _ -> failwith "expected an object"

type attribute_type =
  | String
  | Number
  | Bool
  | Dynamic
  | Opt of attribute_type
  | Set of attribute_type
  | Map of attribute_type
  | List of attribute_type
  | Object of attribute_type assoc

let rec attribute_type_of_yojson = function
  | `String "string" -> String
  | `String "number" -> Number
  | `String "bool" -> Bool
  | `String "dynamic" -> Dynamic
  | `List [ `String "set"; ty ] -> Set (attribute_type_of_yojson ty)
  | `List [ `String "list"; ty ] ->
      List (attribute_type_of_yojson ty)
  | `List [ `String "map"; ty ] -> Map (attribute_type_of_yojson ty)
  | `List [ `String "object"; json ] ->
      Object (assoc_of_yojson attribute_type_of_yojson json)
  | json ->
      raise
        (Ppx_yojson_conv_lib.Yojson_conv.Of_yojson_error
           (Failure "invalid attribute type", json))

type nesting_mode = Single | List | Set | Map

let nesting_mode_of_yojson = function
  | `String "single" -> Single
  | `String "list" -> List
  | `String "set" -> Set
  | `String "map" -> Map
  | json ->
      raise
        (Ppx_yojson_conv_lib.Yojson_conv.Of_yojson_error
           (Failure "invalid nesting mode", json))

type root = {
  format_version : string;
  provider_schemas : provider assoc;
}
[@@deriving of_yojson]

and provider = {
  provider : schema;
  resource_schemas : schema assoc;
  data_source_schemas : schema assoc;
}

and schema = { version : int; block : block }

and block = {
  attributes : attribute assoc;
      [@default []] [@yojson_drop_default ( = )]
  block_types : block_type assoc;
      [@default []] [@yojson_drop_default ( = )]
  description : string option; [@option]
  description_kind : string;
  deprecated : bool; [@default false] [@yojson_drop_default ( = )]
}

and block_type = {
  nesting_mode : nesting_mode;
  block : block;
  min_items : int option; [@option]
  max_items : int option; [@option]
}

and attribute = {
  type_ : attribute_type; [@key "type"] [@default Dynamic]
  nested_type : nested_attribute_type option; [@option]
  description : string option; [@option]
  description_kind : string;
  required : bool; [@default false] [@yojson_drop_default ( = )]
  optional : bool; [@default false] [@yojson_drop_default ( = )]
  computed : bool; [@default false] [@yojson_drop_default ( = )]
  sensitive : bool; [@default false] [@yojson_drop_default ( = )]
  deprecated : bool; [@default false] [@yojson_drop_default ( = )]
}

and nested_attribute_type = {
  attributes : attribute assoc;
  nesting_mode : nesting_mode;
}

let rec find_object_types acc path = function
  | Object assoc ->
      let acc = (path, assoc) :: acc in
      List.fold_left assoc ~init:acc ~f:(fun acc (name, ty) ->
          find_object_types acc (name :: path) ty)
  | List ty -> find_object_types acc path ty
  | Set ty -> find_object_types acc path ty
  | Map ty -> find_object_types acc path ty
  | Opt ty -> find_object_types acc path ty
  | String | Number | Bool | Dynamic -> acc

let rec gen_attribute_type_ml path ppf = function
  | String -> Format.fprintf ppf "string"
  | Number -> Format.fprintf ppf "float"
  | Bool -> Format.fprintf ppf "bool"
  | Dynamic -> Format.fprintf ppf "string"
  | Opt ty ->
      Format.fprintf ppf "%a option" (gen_attribute_type_ml path) ty
  | Set ty ->
      Format.fprintf ppf "%a list" (gen_attribute_type_ml path) ty
  | Map ty ->
      Format.fprintf ppf "(string * %a) list"
        (gen_attribute_type_ml path)
        ty
  | List ty ->
      Format.fprintf ppf "%a list" (gen_attribute_type_ml path) ty
  | Object _ ->
      let ty_name = List.rev path |> String.concat ~sep:"__" in
      Format.fprintf ppf "%s" ty_name

let to_ocaml_name = function
  | "type" -> "type_"
  | "function" -> "function_"
  | "match" -> "match_"
  | "method" -> "method_"
  | "object" -> "object_"
  | "end" -> "end_"
  | "and" -> "and_"
  | "or" -> "or_"
  | "mutable" -> "mutable_"
  | "to" -> "to_"
  | "include" -> "include_"
  | "class" -> "class_"
  | "for" -> "for_"
  | "in" -> "in_"
  | "module" -> "module_"
  | "external" -> "external_"
  | "open" -> "open_"
  | "constraint" -> "constraint_"
  | x -> x

let to_ocaml_doc doc =
  doc
  |> String.replace ~sub:"\"" ~by:""
  |> String.replace ~sub:"*)" ~by:"\\*\\)"
  |> String.replace ~sub:"(*" ~by:"\\(\\*"

let concat_space = String.concat ~sep:" "

let get_attributes ~skip_computed attrs =
  List.filter_map attrs ~f:(fun (attr_name, attr) ->
      if skip_computed && attr.computed then None
      else Some (attr_name, attr))

let gen_attribute_types name ppf attributes =
  List.iter attributes
    ~f:(fun (attr_name, (attribute : attribute)) ->
      let ty = attribute.type_ in
      let pp_ty = gen_attribute_type_ml [ attr_name; name ] in
      let doc =
        match attribute.description with
        | None -> Printf.sprintf " (** %s *)" attr_name
        | Some doc -> Printf.sprintf " (** %s *)" (to_ocaml_doc doc)
      in
      let ocaml_name = to_ocaml_name attr_name in
      let ext = [] in
      let ext =
        match String.equal attr_name ocaml_name with
        | false -> Printf.sprintf {|[@key %S]|} attr_name :: ext
        | _ -> ext
      in
      let ty, ext =
        match attribute.optional with
        | true -> Opt ty, "[@option]" :: ext
        | false -> ty, ext
      in
      Format.fprintf ppf "  %s: %a; %s%s@." ocaml_name pp_ty ty
        (concat_space ext) doc)

(* block can contain object types, which we represent as ocaml records,
   so need to generate type definitions for them in advance *)
let gen_object_types_ml ~skip_computed ppf (name, (block : block)) =
  List.iter block.attributes ~f:(fun (attr_name, attribute) ->
      List.iter
        (find_object_types [] [ attr_name; name ] attribute.type_)
        ~f:(fun (path, tys) ->
          let attributes =
            List.map tys ~f:(fun (name, ty) ->
                ( name,
                  {
                    type_ = ty;
                    nested_type = None;
                    description = None;
                    description_kind = "plain";
                    required = false;
                    optional = false;
                    computed = false;
                    sensitive = false;
                    deprecated = false;
                  } ))
          in
          let ty_name = List.rev path |> String.concat ~sep:"__" in
          Format.fprintf ppf "type %s = {@." (to_ocaml_name ty_name);
          gen_attribute_types ty_name ppf
            (get_attributes ~skip_computed attributes);
          Format.fprintf ppf "} [%@%@deriving yojson_of]@."))

let rec gen_block_type_ml ~is_mli ~skip_computed ppf
    (name, (block : block)) =
  gen_block_types_ml ~is_mli ppf (name, block);
  gen_object_types_ml ~skip_computed ppf (name, block);
  let attributes = get_attributes ~skip_computed block.attributes in
  let is_unit =
    match attributes, block.block_types with
    | [], [] -> true
    | _ -> false
  in
  if is_unit then
    Format.fprintf ppf "type %s = unit [%@%@deriving yojson_of]@.@."
      name
  else (
    Format.fprintf ppf "type %s = %s{@." (to_ocaml_name name)
      (if is_mli then "private " else "");
    gen_attribute_types name ppf attributes;
    List.iter block.block_types ~f:(fun (block_name, block) ->
        let ocaml_name = to_ocaml_name block_name in
        let ty_name =
          to_ocaml_name (Printf.sprintf "%s__%s" name block_name)
        in
        let ty_mod =
          match block_name, block.nesting_mode with
          | "timeouts", Single -> " option"
          | _, Single -> ""
          | _, List -> " list"
          | _, Set -> " list"
          | _, Map -> " assoc"
        in
        Format.fprintf ppf "  %s: %s%s;@." ocaml_name ty_name ty_mod);
    let doc =
      match block.description with
      | None -> Printf.sprintf "(** %s *)" name
      | Some doc -> Printf.sprintf "(** %s *)" (to_ocaml_doc doc)
    in
    Format.fprintf ppf "} [%@%@deriving yojson_of]@.%s@.@." doc)

and gen_block_types_ml ~is_mli ppf (name, (block : block)) =
  List.iter block.block_types
    ~f:(fun (block_type_name, (block_type : block_type)) ->
      let name = Printf.sprintf "%s__%s" name block_type_name in
      gen_block_type_ml ~skip_computed:false ~is_mli ppf
        (name, block_type.block))

let gen_resource_constructor ppf (name, (schema : schema)) =
  let collect_args f =
    List.filter_map schema.block.attributes
      ~f:(fun (attr_name, attr) ->
        match f attr_name attr with
        | false -> None
        | true -> Some (to_ocaml_name attr_name))
  in
  let opt_args =
    collect_args (fun _ attr -> (not attr.computed) && attr.optional)
    |> List.map ~f:(fun x -> Printf.sprintf "?%s" x)
  in
  let opt_block_args =
    List.filter_map schema.block.block_types
      ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode with
        | "timeouts", Single -> Some (to_ocaml_name block_name)
        | _ -> None)
    |> List.map ~f:(fun x -> Printf.sprintf "?%s" x)
  in
  let args =
    collect_args (fun _ attr ->
        (not attr.computed) && not attr.optional)
    |> List.map ~f:(fun x -> Printf.sprintf "~%s" x)
  in
  let block_args =
    List.filter_map schema.block.block_types
      ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode with
        | "timeouts", Single -> None
        | _ -> Some (to_ocaml_name block_name))
    |> List.map ~f:(fun x -> Printf.sprintf "~%s" x)
  in
  Format.fprintf ppf "let %s %s %s %s %s __resource_id =@." name
    (concat_space opt_args)
    (concat_space opt_block_args)
    (concat_space args)
    (concat_space block_args);
  Format.fprintf ppf "  let __resource_type = %S in@." name;
  Format.fprintf ppf "  let __resource = {@.";
  List.iter schema.block.attributes ~f:(fun (attr_name, attr) ->
      if attr.computed then ()
      else
        let ocaml_name = to_ocaml_name attr_name in
        Format.fprintf ppf "    %s;@." ocaml_name);
  List.iter schema.block.block_types ~f:(fun (block_name, _) ->
      let ocaml_name = to_ocaml_name block_name in
      Format.fprintf ppf "    %s;@." ocaml_name);
  Format.fprintf ppf "  } in@.";
  Format.fprintf ppf
    "  Resource.add ~type_:__resource_type ~id:__resource_id@.";
  Format.fprintf ppf "    (yojson_of_%s __resource);@." name;
  Format.fprintf ppf "  ()@.";
  Format.fprintf ppf "  ;;@.@."

let gen_resource ppf (resource_name, (resource : schema)) =
  Format.fprintf ppf "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  Format.fprintf ppf "[%@%@%@ocaml.warning \"-33-27-26\"]@.@.";
  Format.fprintf ppf "open Tf.Prelude@.@.";
  gen_block_type_ml ~skip_computed:true ~is_mli:false ppf
    (resource_name, resource.block);
  gen_resource_constructor ppf (resource_name, resource)

let file_t ?doc n =
  Arg.(
    required & pos n (some string) None & info [] ?doc ~docv:"FILE")

let provider_t ?doc n =
  Arg.(
    required
    & pos n (some string) None
    & info [] ?doc ~docv:"PROVIDER")

let output_t ?doc n =
  Arg.(
    required & pos n (some string) None & info [] ?doc ~docv:"OUTPUT")

let resource_t ?doc n =
  Arg.(
    required
    & pos n (some string) None
    & info [] ?doc ~docv:"RESOURCE")

let sys fmt = ksprintf (fun s -> assert (Sys.command s = 0)) fmt

let gen_provider_cmd =
  let f filename provider_name output =
    sys "mkdir -p %S" output;
    sys "rm -f %s/*.ml %s/*.ml.tmp" output output;
    let data = In_channel.(with_open_bin filename input_all) in
    let json = Yojson.Safe.from_string data in
    let root = root_of_yojson json in
    let provider =
      match
        List.assoc_opt ~eq:String.equal provider_name
          root.provider_schemas
      with
      | Some schema -> schema
      | None -> failwith "provider not found"
    in
    List.iter provider.resource_schemas ~f:(fun (name, schema) ->
        let filename = sprintf "%s/%s.ml" output name in
        let filename_tmp = sprintf "%s/%s.ml.tmp" output name in
        Out_channel.with_open_bin filename_tmp (fun oc ->
            let ppf = Format.formatter_of_out_channel oc in
            gen_resource ppf (name, schema);
            Format.pp_print_flush ppf ());
        sys "mv %s %s" filename_tmp filename)
  in
  let info = Cmd.info "gen-provider-ml" ~doc:"generate .ml" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ output_t 2)

let gen_resource_cmd =
  let f filename provider_name resource_name =
    let data = In_channel.(open_bin filename |> input_all) in
    let json = Yojson.Safe.from_string data in
    let root = root_of_yojson json in
    let provider =
      match
        List.assoc_opt ~eq:String.equal provider_name
          root.provider_schemas
      with
      | Some schema -> schema
      | None -> failwith "provider not found"
    in
    let resource =
      match
        List.assoc_opt ~eq:String.equal resource_name
          provider.resource_schemas
      with
      | Some schema -> schema
      | None -> failwith "resource not found"
    in
    Format.fprintf Format.str_formatter "%a@." gen_resource
      (resource_name, resource);
    print_endline (Format.flush_str_formatter ())
  in
  let info = Cmd.info "gen-resource-ml" ~doc:"generate .ml" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ resource_t 2)

let commands = [ gen_provider_cmd; gen_resource_cmd ]

let main_cmd =
  let info = Cmd.info "tf" ~version:"%%VERSION%%" in
  let default =
    Term.(ret (const (fun () -> `Help (`Pager, None)) $ const ()))
  in
  Cmd.group info ~default commands

let () = Stdlib.exit (Cmd.eval main_cmd)
