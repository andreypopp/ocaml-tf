(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_auth_backend_group = {
  backend : string prop option; [@option]
  groupname : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_auth_backend_group) -> ()

let yojson_of_vault_ldap_auth_backend_group =
  (function
   | { backend = v_backend; groupname = v_groupname; id = v_id; namespace = v_namespace; policies = v_policies } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       let arg = yojson_of_prop yojson_of_string v_groupname in
       ("groupname", arg) :: bnds
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
    : vault_ldap_auth_backend_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_auth_backend_group

[@@@deriving.end]

let vault_ldap_auth_backend_group ?backend ?id ?namespace ?policies ~groupname () =
  ({ backend; groupname; id; namespace; policies } : vault_ldap_auth_backend_group)

type t = {
  tf_name : string;
  backend : string prop;
  groupname : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
}

let make ?backend ?id ?namespace ?policies ~groupname __id =
  let __type = "vault_ldap_auth_backend_group" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       groupname = Prop.computed __type __id "groupname";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_auth_backend_group
        (vault_ldap_auth_backend_group ?backend ?id ?namespace ?policies ~groupname ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?namespace ?policies ~groupname __id =
  let (r : _ Tf_core.resource) = make ?backend ?id ?namespace ?policies ~groupname __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
