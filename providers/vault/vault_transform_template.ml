(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transform_template = {
  alphabet : string prop option; [@option]
  decode_formats : string prop Tf_core.assoc option; [@option]
  encode_format : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
  pattern : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transform_template) -> ()

let yojson_of_vault_transform_template =
  (function
   | {
       alphabet = v_alphabet;
       decode_formats = v_decode_formats;
       encode_format = v_encode_format;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       pattern = v_pattern;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pattern with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pattern", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_encode_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "encode_format", arg in
         bnd :: bnds
     in
     let bnds =
       match v_decode_formats with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "decode_formats", arg in
         bnd :: bnds
     in
     let bnds =
       match v_alphabet with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "alphabet", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_transform_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transform_template

[@@@deriving.end]

let vault_transform_template ?alphabet ?decode_formats ?encode_format ?id ?namespace ?pattern ?type_ ~name ~path () =
  ({ alphabet; decode_formats; encode_format; id; name; namespace; path; pattern; type_ } : vault_transform_template)

type t = {
  tf_name : string;
  alphabet : string prop;
  decode_formats : string Tf_core.assoc prop;
  encode_format : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  pattern : string prop;
  type_ : string prop;
}

let make ?alphabet ?decode_formats ?encode_format ?id ?namespace ?pattern ?type_ ~name ~path __id =
  let __type = "vault_transform_template" in
  let __attrs =
    ({
       tf_name = __id;
       alphabet = Prop.computed __type __id "alphabet";
       decode_formats = Prop.computed __type __id "decode_formats";
       encode_format = Prop.computed __type __id "encode_format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       pattern = Prop.computed __type __id "pattern";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transform_template
        (vault_transform_template ?alphabet ?decode_formats ?encode_format ?id ?namespace ?pattern ?type_ ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?alphabet ?decode_formats ?encode_format ?id ?namespace ?pattern ?type_ ~name ~path __id =
  let (r : _ Tf_core.resource) =
    make ?alphabet ?decode_formats ?encode_format ?id ?namespace ?pattern ?type_ ~name ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
