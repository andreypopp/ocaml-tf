(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_key_allowed_client_id = {
  allowed_client_id : string prop;
  id : string prop option; [@option]
  key_name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_key_allowed_client_id) -> ()

let yojson_of_vault_identity_oidc_key_allowed_client_id =
  (function
   | { allowed_client_id = v_allowed_client_id; id = v_id; key_name = v_key_name; namespace = v_namespace } ->
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
       let arg = yojson_of_prop yojson_of_string v_key_name in
       ("key_name", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_allowed_client_id in
       ("allowed_client_id", arg) :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_key_allowed_client_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_key_allowed_client_id

[@@@deriving.end]

let vault_identity_oidc_key_allowed_client_id ?id ?namespace ~allowed_client_id ~key_name () =
  ({ allowed_client_id; id; key_name; namespace } : vault_identity_oidc_key_allowed_client_id)

type t = {
  tf_name : string;
  allowed_client_id : string prop;
  id : string prop;
  key_name : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~allowed_client_id ~key_name __id =
  let __type = "vault_identity_oidc_key_allowed_client_id" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_client_id = Prop.computed __type __id "allowed_client_id";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_key_allowed_client_id
        (vault_identity_oidc_key_allowed_client_id ?id ?namespace ~allowed_client_id ~key_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~allowed_client_id ~key_name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~allowed_client_id ~key_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
