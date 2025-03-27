(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_auth_backend_user = {
  backend : string prop option; [@option]
  groups : string prop list option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_auth_backend_user) -> ()

let yojson_of_vault_ldap_auth_backend_user =
  (function
   | {
       backend = v_backend;
       groups = v_groups;
       id = v_id;
       namespace = v_namespace;
       policies = v_policies;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policies", arg in
         bnd :: bnds
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
       match v_groups with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "groups", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ldap_auth_backend_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_auth_backend_user

[@@@deriving.end]

let vault_ldap_auth_backend_user ?backend ?groups ?id ?namespace ?policies ~username () =
  ({ backend; groups; id; namespace; policies; username } : vault_ldap_auth_backend_user)

type t = {
  tf_name : string;
  backend : string prop;
  groups : string list prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  username : string prop;
}

let make ?backend ?groups ?id ?namespace ?policies ~username __id =
  let __type = "vault_ldap_auth_backend_user" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_auth_backend_user
        (vault_ldap_auth_backend_user ?backend ?groups ?id ?namespace ?policies ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?groups ?id ?namespace ?policies ~username __id =
  let (r : _ Tf_core.resource) = make ?backend ?groups ?id ?namespace ?policies ~username __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
