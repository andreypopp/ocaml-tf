(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kv_secrets_list_v2 = {
  id : string prop option; [@option]
  mount : string prop;
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kv_secrets_list_v2) -> ()

let yojson_of_vault_kv_secrets_list_v2 =
  (function
   | { id = v_id; mount = v_mount; name = v_name; namespace = v_namespace } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount in
       ("mount", arg) :: bnds
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
    : vault_kv_secrets_list_v2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kv_secrets_list_v2

[@@@deriving.end]

let vault_kv_secrets_list_v2 ?id ?name ?namespace ~mount () =
  ({ id; mount; name; namespace } : vault_kv_secrets_list_v2)

type t = {
  tf_name : string;
  id : string prop;
  mount : string prop;
  name : string prop;
  names : string list prop;
  namespace : string prop;
  path : string prop;
}

let make ?id ?name ?namespace ~mount __id =
  let __type = "vault_kv_secrets_list_v2" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       names = Prop.computed __type __id "names";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_kv_secrets_list_v2 (vault_kv_secrets_list_v2 ?id ?name ?namespace ~mount ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?namespace ~mount __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?namespace ~mount __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
