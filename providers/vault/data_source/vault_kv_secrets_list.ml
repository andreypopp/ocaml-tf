(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kv_secrets_list = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kv_secrets_list) -> ()

let yojson_of_vault_kv_secrets_list =
  (function
   | { id = v_id; namespace = v_namespace; path = v_path } ->
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
     `Assoc bnds
    : vault_kv_secrets_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kv_secrets_list

[@@@deriving.end]

let vault_kv_secrets_list ?id ?namespace ~path () = ({ id; namespace; path } : vault_kv_secrets_list)

type t = {
  tf_name : string;
  id : string prop;
  names : string list prop;
  namespace : string prop;
  path : string prop;
}

let make ?id ?namespace ~path __id =
  let __type = "vault_kv_secrets_list" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_kv_secrets_list (vault_kv_secrets_list ?id ?namespace ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~path __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~path __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
