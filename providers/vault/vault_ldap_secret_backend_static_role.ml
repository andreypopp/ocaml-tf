(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_secret_backend_static_role = {
  dn : string prop option; [@option]
  id : string prop option; [@option]
  mount : string prop option; [@option]
  namespace : string prop option; [@option]
  role_name : string prop;
  rotation_period : float prop;
  skip_import_rotation : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_secret_backend_static_role) -> ()

let yojson_of_vault_ldap_secret_backend_static_role =
  (function
   | {
       dn = v_dn;
       id = v_id;
       mount = v_mount;
       namespace = v_namespace;
       role_name = v_role_name;
       rotation_period = v_rotation_period;
       skip_import_rotation = v_skip_import_rotation;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_skip_import_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_import_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_rotation_period in
       ("rotation_period", arg) :: bnds
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_dn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "dn", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ldap_secret_backend_static_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_secret_backend_static_role

[@@@deriving.end]

let vault_ldap_secret_backend_static_role ?dn ?id ?mount ?namespace ?skip_import_rotation ~role_name ~rotation_period
  ~username () =
  ({ dn; id; mount; namespace; role_name; rotation_period; skip_import_rotation; username }
    : vault_ldap_secret_backend_static_role)

type t = {
  tf_name : string;
  dn : string prop;
  id : string prop;
  mount : string prop;
  namespace : string prop;
  role_name : string prop;
  rotation_period : float prop;
  skip_import_rotation : bool prop;
  username : string prop;
}

let make ?dn ?id ?mount ?namespace ?skip_import_rotation ~role_name ~rotation_period ~username __id =
  let __type = "vault_ldap_secret_backend_static_role" in
  let __attrs =
    ({
       tf_name = __id;
       dn = Prop.computed __type __id "dn";
       id = Prop.computed __type __id "id";
       mount = Prop.computed __type __id "mount";
       namespace = Prop.computed __type __id "namespace";
       role_name = Prop.computed __type __id "role_name";
       rotation_period = Prop.computed __type __id "rotation_period";
       skip_import_rotation = Prop.computed __type __id "skip_import_rotation";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_secret_backend_static_role
        (vault_ldap_secret_backend_static_role ?dn ?id ?mount ?namespace ?skip_import_rotation ~role_name
           ~rotation_period ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?dn ?id ?mount ?namespace ?skip_import_rotation ~role_name ~rotation_period ~username __id =
  let (r : _ Tf_core.resource) =
    make ?dn ?id ?mount ?namespace ?skip_import_rotation ~role_name ~rotation_period ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
