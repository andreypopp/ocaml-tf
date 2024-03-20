[@@@ocaml.warning "-69-30"]

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

let rec gen_attribute_type_name' ctor path ppf =
  let ctor = match ctor with "" -> "" | ctor -> " " ^ ctor in
  function
  | String -> Format.fprintf ppf "string%s" ctor
  | Number -> Format.fprintf ppf "float%s" ctor
  | Bool -> Format.fprintf ppf "bool%s" ctor
  | Dynamic -> Format.fprintf ppf "json%s" ctor
  | Opt ty ->
      Format.fprintf ppf "%a option"
        (gen_attribute_type_name' ctor path)
        ty
  | Set ty ->
      Format.fprintf ppf "%a list"
        (gen_attribute_type_name' ctor path)
        ty
  | Map ty ->
      Format.fprintf ppf "(string * %a) list"
        (gen_attribute_type_name' ctor path)
        ty
  | List ty ->
      Format.fprintf ppf "%a list"
        (gen_attribute_type_name' ctor path)
        ty
  | Object _ ->
      let ty_name = List.rev path |> String.concat ~sep:"__" in
      Format.fprintf ppf "%s" ty_name

let gen_attribute_type_name path ppf ty =
  gen_attribute_type_name' "prop" path ppf ty

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
  | "option" -> "option_"
  | "list" -> "list_"
  | x -> x

let to_ocaml_doc doc =
  doc
  |> String.replace ~sub:"\"" ~by:""
  |> String.replace ~sub:"*)" ~by:"\\*\\)"
  |> String.replace ~sub:"(*" ~by:"\\(\\*"

let concat_space = String.concat ~sep:" "

let get_attributes ~input_only attrs =
  List.filter_map attrs ~f:(fun (attr_name, attr) ->
      match input_only, attr.optional, attr.required with
      | false, _, _ -> Some (attr_name, attr)
      | true, true, _ | true, _, true -> Some (attr_name, attr)
      | true, _, _ -> None)

let is_input_attribute attr = attr.optional || attr.required

let gen_attribute_types name ppf attributes =
  List.iter attributes
    ~f:(fun (attr_name, (attribute : attribute)) ->
      let ty = attribute.type_ in
      let pp_ty =
        gen_attribute_type_name
          (match name with
          | None -> [ attr_name ]
          | Some name -> [ attr_name; name ])
      in
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
let gen_object_types_ml ~is_mli ~input_only ppf
    (name, (block : block)) =
  List.iter block.attributes ~f:(fun (attr_name, attribute) ->
      List.iter
        (find_object_types []
           (match name with
           | None -> [ attr_name ]
           | Some name -> [ attr_name; name ])
           attribute.type_)
        ~f:(fun (path, tys) ->
          let attributes =
            List.map tys ~f:(fun (name, ty) ->
                ( name,
                  {
                    type_ = ty;
                    nested_type = None;
                    description = None;
                    description_kind = "plain";
                    required = true;
                    optional = false;
                    computed = false;
                    sensitive = false;
                    deprecated = false;
                  } ))
          in
          let ty_name = List.rev path |> String.concat ~sep:"__" in
          Format.fprintf ppf "type %s = {@." (to_ocaml_name ty_name);
          gen_attribute_types (Some ty_name) ppf
            (get_attributes ~input_only attributes);
          if is_mli then Format.fprintf ppf "}@."
          else Format.fprintf ppf "} [%@%@deriving yojson_of]@."))

let gen_block_type_name ~kind basename
    ((block_name, block) : string * block_type) =
  let ty_name =
    match basename with
    | None -> to_ocaml_name block_name
    | Some basename ->
        to_ocaml_name (Printf.sprintf "%s__%s" basename block_name)
  in
  let ty_mod =
    match block_name, block.nesting_mode, kind with
    | "timeouts", Single, `arg -> ""
    | "timeouts", Single, `record -> " option"
    | _, Single, _ -> ""
    | _, List, _ -> " list"
    | _, Set, _ -> " list"
    | _, Map, _ -> " assoc"
  in
  Printf.sprintf "%s%s" ty_name ty_mod

let rec gen_block_type_ml ?(is_resource = false) ~is_mli ~input_only
    ppf (name, (block : block)) =
  let basename = if is_resource then None else Some name in
  gen_block_types_ml ~is_mli ppf
    ((if is_resource then None else Some name), block);
  gen_object_types_ml ~is_mli ~input_only ppf (basename, block);
  match is_mli with
  | true -> Format.fprintf ppf "type %s@.@." (to_ocaml_name name)
  | false ->
      let attributes = get_attributes ~input_only block.attributes in
      let is_unit =
        match attributes, block.block_types with
        | [], [] -> true
        | _ -> false
      in
      if is_unit then
        Format.fprintf ppf
          "type %s = unit [%@%@deriving yojson_of]@.@."
          (to_ocaml_name name)
      else (
        Format.fprintf ppf "type %s = %s{@." (to_ocaml_name name)
          (if is_mli then "private " else "");
        gen_attribute_types basename ppf attributes;
        List.iter block.block_types ~f:(fun (block_name, block) ->
            let ocaml_name = to_ocaml_name block_name in
            let ty =
              gen_block_type_name ~kind:`record basename
                (block_name, block)
            in
            Format.fprintf ppf "  %s: %s;@." ocaml_name ty);
        let doc =
          match block.description with
          | None -> Printf.sprintf "(** %s *)" name
          | Some doc -> Printf.sprintf "(** %s *)" (to_ocaml_doc doc)
        in
        Format.fprintf ppf "} [%@%@deriving yojson_of]@.%s@.@." doc)

and gen_block_types_ml ~is_mli ppf (name, (block : block)) =
  List.iter block.block_types
    ~f:(fun (block_type_name, (block_type : block_type)) ->
      let name =
        match name with
        | None -> block_type_name
        | Some name -> Printf.sprintf "%s__%s" name block_type_name
      in
      gen_block_type_ml ~input_only:true ~is_mli ppf
        (name, block_type.block))

let gen_block_args (block : block) =
  let collect_args f =
    List.filter_map block.attributes ~f:(fun (attr_name, attr) ->
        match f attr_name attr with
        | false -> None
        | true -> Some (to_ocaml_name attr_name))
  in
  let opt_args =
    collect_args (fun _ attr ->
        is_input_attribute attr && attr.optional)
    |> List.map ~f:(fun x -> Printf.sprintf "?%s" x)
  in
  let opt_block_args =
    List.filter_map block.block_types ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode with
        | "timeouts", Single -> Some (to_ocaml_name block_name)
        | _ -> None)
    |> List.map ~f:(fun x -> Printf.sprintf "?%s" x)
  in
  let args =
    collect_args (fun _ attr ->
        is_input_attribute attr && attr.required)
    |> List.map ~f:(fun x -> Printf.sprintf "~%s" x)
  in
  let block_args =
    List.filter_map block.block_types ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode with
        | "timeouts", Single -> None
        | _ -> Some (to_ocaml_name block_name))
    |> List.map ~f:(fun x -> Printf.sprintf "~%s" x)
  in
  List.flatten [ opt_args; opt_block_args; args; block_args ]

let rec gen_block_constructor ?(is_resource = false) ppf
    (name, (block : block)) =
  gen_block_constructors ppf
    ((if is_resource then None else Some name), block);
  let args = concat_space (gen_block_args block) in
  Format.fprintf ppf "let %s %s () =@." (to_ocaml_name name) args;
  let attributes =
    get_attributes ~input_only:true block.attributes
  in
  let is_unit =
    match attributes, block.block_types with
    | [], [] -> true
    | _ -> false
  in
  if is_unit then Format.fprintf ppf "  ();;@.@."
  else (
    Format.fprintf ppf "  ({@.";
    List.iter block.attributes ~f:(fun (attr_name, attr) ->
        if not (is_input_attribute attr) then ()
        else
          let ocaml_name = to_ocaml_name attr_name in
          Format.fprintf ppf "    %s;@." ocaml_name);
    List.iter block.block_types ~f:(fun (block_name, _) ->
        let ocaml_name = to_ocaml_name block_name in
        Format.fprintf ppf "    %s;@." ocaml_name);
    Format.fprintf ppf "  } : %s);;@.@." (to_ocaml_name name))

and gen_block_constructors ppf (name, (block : block)) =
  List.iter block.block_types
    ~f:(fun (block_type_name, (block_type : block_type)) ->
      let name =
        match name with
        | None -> block_type_name
        | Some name -> Printf.sprintf "%s__%s" name block_type_name
      in
      gen_block_constructor ppf (name, block_type.block))

let gen_resource_constructor ppf (name, (schema : schema)) =
  let args = concat_space (gen_block_args schema.block) in
  Format.fprintf ppf "let register ?tf_module %s __resource_id =@."
    args;
  Format.fprintf ppf "  let __resource_type = %S in@." name;
  Format.fprintf ppf "  let __resource = %s %s () in@."
    (to_ocaml_name name) args;
  Format.fprintf ppf
    "  Resource.add ?tf_module ~type_:__resource_type \
     ~id:__resource_id@.";
  Format.fprintf ppf "    (yojson_of_%s __resource);@." name;
  Format.fprintf ppf "  let __resource_attributes = ({@.";
  List.iter schema.block.attributes ~f:(fun (attr_name, _attr) ->
      let ocaml_name = to_ocaml_name attr_name in
      let ocaml_value =
        sprintf "Prop.computed __resource_type __resource_id %S"
          attr_name
      in
      Format.fprintf ppf "    %s = %s;@." ocaml_name ocaml_value);
  Format.fprintf ppf "  } : t) in@.";
  Format.fprintf ppf "  __resource_attributes;;@.@."

let gen_resource_attributes_ty ~is_mli ppf (_name, (schema : schema))
    =
  Format.fprintf ppf "type t = %s{@."
    (if is_mli then "private " else "");
  List.iter schema.block.attributes ~f:(fun (attr_name, attr) ->
      let ocaml_name = to_ocaml_name attr_name in
      let ty = gen_attribute_type_name' "" [ attr_name ] in
      Format.fprintf ppf "  %s: %a prop;@." ocaml_name ty attr.type_);
  Format.fprintf ppf "}@.@."

let gen_block_args_sig basename block =
  let collect_args f =
    List.filter_map block.attributes ~f:(fun (attr_name, attr) ->
        match f attr_name attr with
        | false -> None
        | true -> Some (to_ocaml_name attr_name, attr))
  in
  let opt_args =
    collect_args (fun _ attr ->
        is_input_attribute attr && attr.optional)
    |> List.map ~f:(fun (attr_name, attr) ->
           Format.asprintf "?%s:%a" attr_name
             (gen_attribute_type_name
                (match basename with
                | None -> [ attr_name ]
                | Some name -> [ attr_name; name ]))
             attr.type_)
  in
  let opt_block_args =
    List.filter block.block_types ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode with
        | "timeouts", Single -> true
        | _ -> false)
    |> List.map ~f:(fun (block_name, block) ->
           let arg = to_ocaml_name block_name in
           let ty =
             gen_block_type_name ~kind:`arg basename
               (block_name, block)
           in
           Printf.sprintf "?%s:%s" arg ty)
  in
  let args =
    collect_args (fun _ attr ->
        is_input_attribute attr && attr.required)
    |> List.map ~f:(fun (attr_name, attr) ->
           Format.asprintf "%s:%a" attr_name
             (gen_attribute_type_name
                (match basename with
                | None -> [ attr_name ]
                | Some name -> [ attr_name; name ]))
             attr.type_)
  in
  let block_args =
    List.filter block.block_types ~f:(fun (block_name, block) ->
        match block_name, block.nesting_mode, basename with
        | "timeouts", Single, None -> false
        | _ -> true)
    |> List.map ~f:(fun (block_name, block) ->
           let arg = to_ocaml_name block_name in
           let ty =
             gen_block_type_name ~kind:`arg basename
               (block_name, block)
           in
           Printf.sprintf "%s:%s" arg ty)
  in
  List.flatten [ opt_args; opt_block_args; args; block_args ]

let rec gen_block_constructor_sig ?(is_resource = false) ppf
    (name, (block : block)) =
  let basename = if is_resource then None else Some name in
  gen_object_types_ml ~is_mli:true ~input_only:true ppf
    (basename, block);
  gen_block_constructors_sig ppf (basename, block);
  let args = gen_block_args_sig basename block in
  let ty =
    args @ [ "unit"; to_ocaml_name name ]
    |> String.concat ~sep:" ->\n    "
  in
  Format.fprintf ppf "type %s@.@." (to_ocaml_name name);
  Format.fprintf ppf "val %s :@.    %s@.@." (to_ocaml_name name) ty

and gen_block_constructors_sig ppf (name, (block : block)) =
  List.iter block.block_types
    ~f:(fun (block_type_name, (block_type : block_type)) ->
      let name =
        match name with
        | None -> block_type_name
        | Some name -> Printf.sprintf "%s__%s" name block_type_name
      in
      gen_block_constructor_sig ppf (name, block_type.block))

let gen_resource_constructor_sig ppf (_name, (schema : schema)) =
  let args = gen_block_args_sig None schema.block in
  let ty =
    ("?tf_module:tf_module" :: args) @ [ "string"; "t" ]
    |> String.concat ~sep:" ->\n    "
  in
  Format.fprintf ppf "val register :@.    %s@.@." ty

let gen_resource_impl ppf (resource_name, (resource : schema)) =
  Format.fprintf ppf "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  Format.fprintf ppf "[%@%@%@ocaml.warning \"-33-27-26\"]@.@.";
  Format.fprintf ppf "open! Tf.Prelude@.@.";
  gen_block_type_ml ~is_resource:true ~input_only:true ~is_mli:false
    ppf
    (resource_name, resource.block);
  gen_block_constructor ~is_resource:true ppf
    (resource_name, resource.block);
  gen_resource_attributes_ty ~is_mli:false ppf
    (resource_name, resource);
  gen_resource_constructor ppf (resource_name, resource)

let gen_resource_iface ppf (resource_name, (resource : schema)) =
  Format.fprintf ppf "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  Format.fprintf ppf "open! Tf.Prelude@.@.";
  Format.fprintf ppf "(** RESOURCE SERIALIZATION *)@.@.";
  gen_block_constructor_sig ~is_resource:true ppf
    (resource_name, resource.block);
  Format.fprintf ppf "val yojson_of_%s : %s -> json@.@."
    (to_ocaml_name resource_name)
    (to_ocaml_name resource_name);
  Format.fprintf ppf "(** RESOURCE REGISTRATION *)@.@.";
  gen_resource_attributes_ty ~is_mli:true ppf
    (resource_name, resource);
  gen_resource_constructor_sig ppf (resource_name, resource)

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

let with_oc_txt filename f =
  let filename_tmp = sprintf "%s.tmp" filename in
  Out_channel.with_open_bin filename_tmp (fun oc -> f oc);
  sys "mv %s %s" filename_tmp filename

let get_provider name root =
  match
    List.assoc_opt ~eq:String.equal name root.provider_schemas
  with
  | Some schema -> schema
  | None -> failwith "provider not found"

let get_resource name provider =
  match
    List.assoc_opt ~eq:String.equal name provider.resource_schemas
  with
  | Some schema -> schema
  | None -> failwith "resource not found"

let gen_provider_cmd =
  let f filename provider_name output =
    sys "mkdir -p %S" output;
    let data = In_channel.(with_open_bin filename input_all) in
    let json = Yojson.Safe.from_string data in
    let root = root_of_yojson json in
    let provider = get_provider provider_name root in
    List.iter provider.resource_schemas ~f:(fun (name, schema) ->
        with_oc_txt (sprintf "%s/%s.ml" output name) (fun oc ->
            let ppf = Format.formatter_of_out_channel oc in
            gen_resource_impl ppf (name, schema);
            Format.pp_print_flush ppf ());
        with_oc_txt (sprintf "%s/%s.mli" output name) (fun oc ->
            let ppf = Format.formatter_of_out_channel oc in
            gen_resource_iface ppf (name, schema);
            Format.pp_print_flush ppf ()))
  in
  let info = Cmd.info "gen-provider-ml" ~doc:"generate .ml" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ output_t 2)

let with_resouce filename provider_name resource_name f =
  let data = In_channel.(with_open_bin filename input_all) in
  let json = Yojson.Safe.from_string data in
  let root = root_of_yojson json in
  let provider = get_provider provider_name root in
  let resource = get_resource resource_name provider in
  f resource

let gen_resource_impl_cmd =
  let f filename provider_name resource_name =
    with_resouce filename provider_name resource_name
      (fun resource ->
        Format.fprintf Format.str_formatter "%a@." gen_resource_impl
          (resource_name, resource);
        print_endline (Format.flush_str_formatter ()))
  in
  let info = Cmd.info "gen-resource-impl" ~doc:"generate .ml" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ resource_t 2)

let gen_resource_iface_cmd =
  let f filename provider_name resource_name =
    with_resouce filename provider_name resource_name
      (fun resource ->
        Format.fprintf Format.str_formatter "%a@." gen_resource_iface
          (resource_name, resource);
        print_endline (Format.flush_str_formatter ()))
  in
  let info = Cmd.info "gen-resource-iface" ~doc:"generate .mli" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ resource_t 2)

let commands =
  [ gen_provider_cmd; gen_resource_impl_cmd; gen_resource_iface_cmd ]

let main_cmd =
  let info = Cmd.info "tf" ~version:"%%VERSION%%" in
  let default =
    Term.(ret (const (fun () -> `Help (`Pager, None)) $ const ()))
  in
  Cmd.group info ~default commands

let () = Stdlib.exit (Cmd.eval main_cmd)
