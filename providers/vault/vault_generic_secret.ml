(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_generic_secret = {
  data_json : string prop;
  delete_all_versions : bool prop option; [@option]
  disable_read : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_generic_secret) -> ()

let yojson_of_vault_generic_secret =
  (function
   | {
       data_json = v_data_json;
       delete_all_versions = v_delete_all_versions;
       disable_read = v_disable_read;
       id = v_id;
       namespace = v_namespace;
       path = v_path;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_read with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_read", arg in
         bnd :: bnds
     in
     let bnds =
       match v_delete_all_versions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "delete_all_versions", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_data_json in
       ("data_json", arg) :: bnds
     in
     `Assoc bnds
    : vault_generic_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_generic_secret

[@@@deriving.end]

let vault_generic_secret ?delete_all_versions ?disable_read ?id ?namespace ~data_json ~path () =
  ({ data_json; delete_all_versions; disable_read; id; namespace; path } : vault_generic_secret)

type t = {
  tf_name : string;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  delete_all_versions : bool prop;
  disable_read : bool prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
}

let make ?delete_all_versions ?disable_read ?id ?namespace ~data_json ~path __id =
  let __type = "vault_generic_secret" in
  let __attrs =
    ({
       tf_name = __id;
       data = Prop.computed __type __id "data";
       data_json = Prop.computed __type __id "data_json";
       delete_all_versions = Prop.computed __type __id "delete_all_versions";
       disable_read = Prop.computed __type __id "disable_read";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_generic_secret
        (vault_generic_secret ?delete_all_versions ?disable_read ?id ?namespace ~data_json ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_all_versions ?disable_read ?id ?namespace ~data_json ~path __id =
  let (r : _ Tf_core.resource) = make ?delete_all_versions ?disable_read ?id ?namespace ~data_json ~path __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
