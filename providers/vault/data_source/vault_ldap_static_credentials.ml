(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_static_credentials = {
  id : string prop option; [@option]
  mount : string prop;
  namespace : string prop option; [@option]
  role_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_static_credentials) -> ()

let yojson_of_vault_ldap_static_credentials =
  (function
   | { id = v_id; mount = v_mount; namespace = v_namespace; role_name = v_role_name } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role_name in
       ("role_name", arg) :: bnds
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
    : vault_ldap_static_credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_static_credentials

[@@@deriving.end]

let vault_ldap_static_credentials ?id ?namespace ~mount ~role_name () =
  ({ id; mount; namespace; role_name } : vault_ldap_static_credentials)

type t = {
  tf_name : string;
  dn : string prop;
  id : string prop;
  last_password : string prop;
  last_vault_rotation : string prop;
  mount : string prop;
  namespace : string prop;
  password : string prop;
  role_name : string prop;
  rotation_period : float prop;
  ttl : float prop;
  username : string prop;
}

let make ?id ?namespace ~mount ~role_name __id =
  let __type = "vault_ldap_static_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       dn = Prop.computed __type __id "dn";
       id = Prop.computed __type __id "id";
       last_password = Prop.computed __type __id "last_password";
       last_vault_rotation = Prop.computed __type __id "last_vault_rotation";
       mount = Prop.computed __type __id "mount";
       namespace = Prop.computed __type __id "namespace";
       password = Prop.computed __type __id "password";
       role_name = Prop.computed __type __id "role_name";
       rotation_period = Prop.computed __type __id "rotation_period";
       ttl = Prop.computed __type __id "ttl";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_ldap_static_credentials (vault_ldap_static_credentials ?id ?namespace ~mount ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~mount ~role_name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~mount ~role_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
