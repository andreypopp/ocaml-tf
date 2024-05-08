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
  data_source_schemas : schema assoc; [@default []]
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

let to_ocaml_name = function
  | "and" -> "and_"
  | "string" -> "string_"
  | "int" -> "int_"
  | "bool" -> "bool_"
  | "float" -> "float_"
  | "begin" -> "begin_"
  | "class" -> "class_"
  | "constraint" -> "constraint_"
  | "end" -> "end_"
  | "external" -> "external_"
  | "for" -> "for_"
  | "function" -> "function_"
  | "in" -> "in_"
  | "include" -> "include_"
  | "list" -> "list_"
  | "match" -> "match_"
  | "method" -> "method_"
  | "module" -> "module_"
  | "mutable" -> "mutable_"
  | "object" -> "object_"
  | "open" -> "open_"
  | "option" -> "option_"
  | "or" -> "or_"
  | "private" -> "private_"
  | "to" -> "to_"
  | "type" -> "type_"
  | "when" -> "when_"
  | x -> x

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
      Format.fprintf ppf "%s" (to_ocaml_name ty_name)

let gen_attribute_type_name path ppf ty =
  gen_attribute_type_name' "prop" path ppf ty

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

let gen_attribute_types ~is_mli name ppf attributes =
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
        if is_mli then
          match attribute.description with
          | None -> Printf.sprintf " (** %s *)" attr_name
          | Some doc ->
              Printf.sprintf " (** %s *)" (to_ocaml_doc doc)
        else ""
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
      let ext =
        match ty with
        | List _ | Set _ ->
            "[@default []] [@yojson_drop_default ( = )]" :: ext
        | _ -> ext
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
          if List.is_empty attributes then
            if is_mli then
              Format.fprintf ppf "type %s@." (to_ocaml_name ty_name)
            else (
              Format.fprintf ppf
                "type %s = unit [%@%@deriving_inline yojson_of]@."
                (to_ocaml_name ty_name);
              Format.fprintf ppf "[%@%@%@deriving.end]@.")
          else (
            Format.fprintf ppf "type %s = {@."
              (to_ocaml_name ty_name);
            gen_attribute_types ~is_mli (Some ty_name) ppf
              (get_attributes ~input_only attributes);
            if is_mli then Format.fprintf ppf "}@."
            else (
              Format.fprintf ppf
                "} [%@%@deriving_inline yojson_of]@.";
              Format.fprintf ppf "[%@%@%@deriving.end]@."))))

let gen_block_type_name ~kind basename
    ((block_name, block) : string * block_type) =
  let ty_name =
    match basename with
    | None -> to_ocaml_name block_name
    | Some basename ->
        to_ocaml_name (Printf.sprintf "%s__%s" basename block_name)
  in
  let ty_mod, yojson_attrs =
    match block_name, block.nesting_mode, kind with
    | "timeouts", Single, `arg -> "", ""
    | "timeouts", Single, `record -> " option", ""
    | _, Single, _ -> "", ""
    | _, List, _ ->
        " list", " [@default []] [@yojson_drop_default ( = )]"
    | _, Set, _ ->
        " list", " [@default []] [@yojson_drop_default ( = )]"
    | _, Map, _ -> " assoc", ""
  in
  Printf.sprintf "%s%s" ty_name ty_mod, yojson_attrs

let rec gen_block_type_ml ?(is_resource = false) ~is_mli ~input_only
    ppf (name, (block : block)) =
  let basename = if is_resource then None else Some name in
  gen_block_types_ml ~is_mli ppf
    ((if is_resource then None else Some name), block);
  gen_object_types_ml ~is_mli ~input_only ppf (basename, block);
  match is_mli with
  | true ->
      let doc =
        match block.description with
        | None -> Printf.sprintf "(** %s *)" name
        | Some doc -> Printf.sprintf "(** %s *)" (to_ocaml_doc doc)
      in
      Format.fprintf ppf "type %s@." (to_ocaml_name name);
      Format.fprintf ppf "%s@.@." doc
  | false ->
      let attributes = get_attributes ~input_only block.attributes in
      let is_unit =
        match attributes, block.block_types with
        | [], [] -> true
        | _ -> false
      in
      if is_unit then (
        Format.fprintf ppf
          "type %s = unit [%@%@deriving_inline yojson_of]@."
          (to_ocaml_name name);
        Format.fprintf ppf "[%@%@%@deriving.end]@.@.")
      else (
        Format.fprintf ppf "type %s = %s{@." (to_ocaml_name name)
          (if is_mli then "private " else "");
        gen_attribute_types ~is_mli basename ppf attributes;
        List.iter block.block_types ~f:(fun (block_name, block) ->
            let ocaml_name = to_ocaml_name block_name in
            let ty, yojson_attr =
              gen_block_type_name ~kind:`record basename
                (block_name, block)
            in
            match String.equal ocaml_name block_name with
            | true ->
                Format.fprintf ppf "  %s: %s;%s@." ocaml_name ty
                  yojson_attr
            | false ->
                Format.fprintf ppf "  %s: %s; [@key %S]%s@."
                  ocaml_name ty block_name yojson_attr);
        Format.fprintf ppf "} [%@%@deriving_inline yojson_of]@.";
        Format.fprintf ppf "[%@%@%@deriving.end]@.@.")

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

let partition_block_args block =
  let reg, opt =
    List.partition_filter_map block.attributes
      ~f:(fun (attr_name, attr) ->
        let name = to_ocaml_name attr_name in
        let ty = `attr (attr_name, attr) in
        if not (is_input_attribute attr) then `Drop
        else if attr.optional then `Right (name, None, ty)
        else if attr.required then `Left (name, ty)
        else `Drop)
  in
  let reg', opt' =
    List.partition_filter_map block.block_types
      ~f:(fun (block_name, block) ->
        let name = to_ocaml_name block_name in
        let ty = `block (block_name, block) in
        match block_name, block.nesting_mode, block.min_items with
        | "timeouts", Single, _ -> `Right (name, None, ty)
        | _, List, None -> `Right (name, Some "[]", ty)
        | _ -> `Left (name, ty))
  in
  reg @ reg', opt @ opt'

let gen_block_args ~mode (block : block) =
  let as_arg (name, _ty) = Printf.sprintf "~%s" name in
  let as_opt_arg (name, default, _ty) =
    match mode, default with
    | `app, None | `decl, None -> Printf.sprintf "?%s" name
    | `app, Some _ -> Printf.sprintf "~%s" name
    | `decl, Some default -> Printf.sprintf "?(%s=%s)" name default
  in
  let args, opt_args = partition_block_args block in
  let args = List.map args ~f:as_arg in
  let opt_args = List.map opt_args ~f:as_opt_arg in
  List.flatten [ opt_args; args ]

let rec gen_block_constructor ?(is_resource = false) ppf
    (name, (block : block)) =
  gen_block_constructors ppf
    ((if is_resource then None else Some name), block);
  let args = concat_space (gen_block_args ~mode:`decl block) in
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

let gen_resource_constructor ppf kind (name, (schema : schema)) =
  let args =
    concat_space (gen_block_args ~mode:`decl schema.block)
  in
  let args' =
    concat_space (gen_block_args ~mode:`app schema.block)
  in
  Format.fprintf ppf "let make %s __id =@." args;
  Format.fprintf ppf "  let __type = %S in@." name;
  Format.fprintf ppf "  let __attrs = ({@.";
  Format.fprintf ppf "    tf_name = __id;@.";
  List.iter schema.block.attributes ~f:(fun (attr_name, _attr) ->
      let ocaml_name = to_ocaml_name attr_name in
      let ocaml_value =
        sprintf "Prop.computed __type __id %S" attr_name
      in
      Format.fprintf ppf "    %s = %s;@." ocaml_name ocaml_value);
  Format.fprintf ppf "  } : t) in@.";
  Format.fprintf ppf "  {Tf_core.@.";
  Format.fprintf ppf "    id=__id;@.";
  Format.fprintf ppf "    type_=__type;@.";
  Format.fprintf ppf "    json=yojson_of_%s (%s %s ());@." name name
    args';
  Format.fprintf ppf "    attrs=__attrs;@.";
  Format.fprintf ppf "  };;@.@.";
  Format.fprintf ppf "let register ?tf_module %s __id =@." args;
  Format.fprintf ppf
    "  let (r : _ Tf_core.resource) = make %s __id in@." args';
  let () =
    let collection =
      match kind with
      | `resource -> "Resource"
      | `data_source -> "Data"
    in
    Format.fprintf ppf
      "  %s.add ?tf_module ~type_:r.type_ ~id:r.id r.json;@."
      collection
  in
  Format.fprintf ppf "  r.attrs;;@.@."

let gen_resource_attributes_ty ~is_mli ppf (_name, (schema : schema))
    =
  Format.fprintf ppf "type t = %s{@."
    (if is_mli then "private " else "");
  Format.fprintf ppf "  tf_name: string;@.";
  List.iter schema.block.attributes ~f:(fun (attr_name, attr) ->
      let ocaml_name = to_ocaml_name attr_name in
      let ty = gen_attribute_type_name' "" [ attr_name ] in
      Format.fprintf ppf "  %s: %a prop;@." ocaml_name ty attr.type_);
  Format.fprintf ppf "}@.@."

let gen_block_args_sig basename block =
  let args, opt_args = partition_block_args block in
  let opt_args =
    List.map opt_args ~f:(fun (name, _default, ty) ->
        match ty with
        | `attr (attr_name, attr) ->
            Format.asprintf "?%s:%a" name
              (gen_attribute_type_name
                 (match basename with
                 | None -> [ attr_name ]
                 | Some name -> [ attr_name; name ]))
              attr.type_
        | `block (block_name, block) ->
            let ty, _ =
              gen_block_type_name ~kind:`arg basename
                (block_name, block)
            in
            Printf.sprintf "?%s:%s" name ty)
  in
  let args =
    List.map args ~f:(fun (name, ty) ->
        match ty with
        | `attr (attr_name, attr) ->
            Format.asprintf "%s:%a" name
              (gen_attribute_type_name
                 (match basename with
                 | None -> [ attr_name ]
                 | Some name -> [ attr_name; name ]))
              attr.type_
        | `block (block_name, block) ->
            let ty, _ =
              gen_block_type_name ~kind:`arg basename
                (block_name, block)
            in
            Printf.sprintf "%s:%s" name ty)
  in
  List.flatten [ opt_args; args ]

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
  Format.fprintf ppf "val register :@.    %s@.@."
    (("?tf_module:tf_module" :: args) @ [ "string"; "t" ]
    |> String.concat ~sep:" ->\n    ");
  Format.fprintf ppf "val make :@.    %s@.@."
    (args @ [ "string"; "t Tf_core.resource" ]
    |> String.concat ~sep:" ->\n    ")

let pp_block_doc ppf = function
  | None -> ()
  | Some doc -> Format.fprintf ppf "(** %s *)" (to_ocaml_doc doc)

let gen_resource_impl kind ppf (resource_name, (resource : schema)) =
  Format.fprintf ppf "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  Format.fprintf ppf "open! Tf_core@.@.";
  gen_block_type_ml ~is_resource:true ~input_only:true ~is_mli:false
    ppf
    (resource_name, resource.block);
  gen_block_constructor ~is_resource:true ppf
    (resource_name, resource.block);
  gen_resource_attributes_ty ~is_mli:false ppf
    (resource_name, resource);
  gen_resource_constructor ppf kind (resource_name, resource)

let gen_resource_iface ppf (name, (resource : schema)) =
  let oname = to_ocaml_name name in
  let p fmt = Format.fprintf ppf fmt in
  p "%a@.@." pp_block_doc resource.block.description;
  p "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  p "open! Tf_core@.@.";
  p "(** RESOURCE SERIALIZATION *)@.@.";
  gen_block_constructor_sig ~is_resource:true ppf
    (name, resource.block);
  p "val yojson_of_%s : %s -> json@.@." oname oname;
  p "(** RESOURCE REGISTRATION *)@.@.";
  gen_resource_attributes_ty ~is_mli:true ppf (name, resource);
  gen_resource_constructor_sig ppf (name, resource)

[@@@ocamlformat "disable"]
let gen_provider_constructor ppf (source, (schema : schema)) =
  let name = Filename.basename source in
  let args = concat_space (gen_block_args ~mode:`decl schema.block) in
  let args' = concat_space (gen_block_args ~mode:`app schema.block) in
  let p fmt = Format.fprintf ppf fmt in
  p "let make %s () =@." args;
  p "  {Tf_core.@.";
  p "    id=%S;@." name;
  p "    json=yojson_of_%s (%s %s ());@." name name args';
  p "  };;@.@.";
  p "let register ?tf_module %s ~version () =@." args;
  p "  let (p : Tf_core.provider) = make %s () in@." args';
  p "  Provider.add ?tf_module ~id:p.id p.json;";
  p "  Required_providers.add ?tf_module ~id:p.id (`Assoc [";
  p "    %S, `String %S;" "source" source;
  p "    %S, `String version;" "version";
  p "  ]);";
  p "  ();;@."
[@@@ocamlformat "enable"]

let gen_provider_constructor_sig ppf (_name, (schema : schema)) =
  let args = gen_block_args_sig None schema.block in
  Format.fprintf ppf "val register :@.    %s@.@."
    (("?tf_module:tf_module" :: args)
     @ [ "version:string"; "unit"; "unit" ]
    |> String.concat ~sep:" ->\n    ");
  Format.fprintf ppf "val make :@.    %s@.@."
    (args @ [ "unit"; "Tf_core.provider" ]
    |> String.concat ~sep:" ->\n    ")

let gen_provider_impl ppf (id, (resource : schema)) =
  let name = Filename.basename id in
  let p fmt = Format.fprintf ppf fmt in
  p "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  p "open! Tf_core@.@.";
  gen_block_type_ml ~is_resource:true ~input_only:true ~is_mli:false
    ppf (name, resource.block);
  gen_block_constructor ~is_resource:true ppf (name, resource.block);
  gen_provider_constructor ppf (id, resource)

[@@@ocamlformat "disable"]
let gen_provider_iface ppf (id, (resource : schema)) =
  let name = Filename.basename id in
  let oname = to_ocaml_name name in
  let p fmt = Format.fprintf ppf fmt in
  p "%a@.@." pp_block_doc resource.block.description;
  p "(* DO NOT EDIT, GENERATED AUTOMATICALLY *)@.@.";
  p "open! Tf_core@.@.";
  p "(** PROVIDER SERIALIZATION *)@.@.";
  gen_block_constructor_sig ~is_resource:true ppf
    (name, resource.block);
  p "val yojson_of_%s : %s -> json@.@." oname oname;
  p "(** PROVIDER REGISTRATION *)@.@.";
  gen_provider_constructor_sig ppf (name, resource)
[@@@ocamlformat "enable"]

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
  let pp_schema ~pp_impl ~pp_iface output (name, schema) =
    with_oc_txt (sprintf "%s.ml" output) (fun oc ->
        let ppf = Format.formatter_of_out_channel oc in
        pp_impl ppf (name, schema);
        Format.pp_print_flush ppf ());
    with_oc_txt (sprintf "%s.mli" output) (fun oc ->
        let ppf = Format.formatter_of_out_channel oc in
        pp_iface ppf (name, schema);
        Format.pp_print_flush ppf ())
  in
  let f filename provider_id output =
    sys "mkdir -p %S %S/data_source" output output;
    let data = In_channel.(with_open_bin filename input_all) in
    let json = Yojson.Safe.from_string data in
    let root = root_of_yojson json in
    let provider = get_provider provider_id root in
    let provider_name = Filename.basename provider_id in
    pp_schema ~pp_impl:gen_provider_impl ~pp_iface:gen_provider_iface
      (sprintf "%s/%s" output provider_name)
      (provider_id, provider.provider);
    List.iter provider.resource_schemas ~f:(fun (name, schema) ->
        let output = sprintf "%s/%s" output name in
        pp_schema ~pp_iface:gen_resource_iface
          ~pp_impl:(gen_resource_impl `resource)
          output (name, schema));
    List.iter provider.data_source_schemas ~f:(fun (name, schema) ->
        let output = sprintf "%s/data_source/%s" output name in
        pp_schema ~pp_iface:gen_resource_iface
          ~pp_impl:(gen_resource_impl `data_source)
          output (name, schema))
  in
  let info = Cmd.info "gen-provider-ml" ~doc:"generate .ml" in
  Cmd.v info
    Term.(
      const f
      $ file_t 0 ~doc:"provider schema file"
      $ provider_t 1
      $ output_t 2)

let with_resouce filename provider_id resource_name f =
  let data = In_channel.(with_open_bin filename input_all) in
  let json = Yojson.Safe.from_string data in
  let root = root_of_yojson json in
  let provider = get_provider provider_id root in
  let resource = get_resource resource_name provider in
  f resource

let gen_resource_impl_cmd =
  let f filename provider_id resource_name =
    with_resouce filename provider_id resource_name (fun resource ->
        Format.fprintf Format.str_formatter "%a@."
          (gen_resource_impl `resource)
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
  let f filename provider_id resource_name =
    with_resouce filename provider_id resource_name (fun resource ->
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
