(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_secret_backend_dynamic_role = {
  creation_ldif : string prop;
  default_ttl : float prop option; [@option]
  deletion_ldif : string prop;
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role_name : string prop;
  rollback_ldif : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_secret_backend_dynamic_role) -> ()

let yojson_of_vault_ldap_secret_backend_dynamic_role =
  (function
   | {
       creation_ldif = v_creation_ldif;
       default_ttl = v_default_ttl;
       deletion_ldif = v_deletion_ldif;
       id = v_id;
       max_ttl = v_max_ttl;
       mount = v_mount;
       namespace = v_namespace;
       role_name = v_role_name;
       rollback_ldif = v_rollback_ldif;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username_template", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rollback_ldif with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rollback_ldif", arg in
         bnd :: bnds
     in
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_ttl", arg in
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
       let arg = yojson_of_prop yojson_of_string v_deletion_ldif in
       ("deletion_ldif", arg) :: bnds
     in
     let bnds =
       match v_default_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_creation_ldif in
       ("creation_ldif", arg) :: bnds
     in
     `Assoc bnds
    : vault_ldap_secret_backend_dynamic_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_secret_backend_dynamic_role

[@@@deriving.end]

let vault_ldap_secret_backend_dynamic_role ?default_ttl ?id ?max_ttl ?mount ?namespace ?rollback_ldif ?username_template
  ~creation_ldif ~deletion_ldif ~role_name () =
  ({
     creation_ldif;
     default_ttl;
     deletion_ldif;
     id;
     max_ttl;
     mount;
     namespace;
     role_name;
     rollback_ldif;
     username_template;
   }
    : vault_ldap_secret_backend_dynamic_role)

type t = {
  tf_name : string;
  creation_ldif : string prop;
  default_ttl : float prop;
  deletion_ldif : string prop;
  id : string prop;
  max_ttl : float prop;
  mount : string prop;
  namespace : string prop;
  role_name : string prop;
  rollback_ldif : string prop;
  username_template : string prop;
}

let make ?default_ttl ?id ?max_ttl ?mount ?namespace ?rollback_ldif ?username_template ~creation_ldif ~deletion_ldif
  ~role_name __id =
  let __type = "vault_ldap_secret_backend_dynamic_role" in
  let __attrs =
    ({
       tf_name = __id;
       creation_ldif = Prop.computed __type __id "creation_ldif";
       default_ttl = Prop.computed __type __id "default_ttl";
       deletion_ldif = Prop.computed __type __id "deletion_ldif";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       mount = Prop.computed __type __id "mount";
       namespace = Prop.computed __type __id "namespace";
       role_name = Prop.computed __type __id "role_name";
       rollback_ldif = Prop.computed __type __id "rollback_ldif";
       username_template = Prop.computed __type __id "username_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_secret_backend_dynamic_role
        (vault_ldap_secret_backend_dynamic_role ?default_ttl ?id ?max_ttl ?mount ?namespace ?rollback_ldif
           ?username_template ~creation_ldif ~deletion_ldif ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_ttl ?id ?max_ttl ?mount ?namespace ?rollback_ldif ?username_template ~creation_ldif
  ~deletion_ldif ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?default_ttl ?id ?max_ttl ?mount ?namespace ?rollback_ldif ?username_template ~creation_ldif ~deletion_ldif
      ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
