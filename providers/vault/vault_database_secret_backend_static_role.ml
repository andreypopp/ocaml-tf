(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_database_secret_backend_static_role = {
  backend : string prop;
  credential_config : string prop Tf_core.assoc option; [@option]
  credential_type : string prop option; [@option]
  db_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_statements : string prop list option; [@option]
  rotation_window : float prop option; [@option]
  self_managed_password : string prop option; [@option]
  skip_import_rotation : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_database_secret_backend_static_role) -> ()

let yojson_of_vault_database_secret_backend_static_role =
  (function
   | {
       backend = v_backend;
       credential_config = v_credential_config;
       credential_type = v_credential_type;
       db_name = v_db_name;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_statements = v_rotation_statements;
       rotation_window = v_rotation_window;
       self_managed_password = v_self_managed_password;
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
       match v_self_managed_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "self_managed_password", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
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
       let arg = yojson_of_prop yojson_of_string v_db_name in
       ("db_name", arg) :: bnds
     in
     let bnds =
       match v_credential_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "credential_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_credential_config with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "credential_config", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_database_secret_backend_static_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_database_secret_backend_static_role

[@@@deriving.end]

let vault_database_secret_backend_static_role ?credential_config ?credential_type ?id ?namespace ?rotation_period
  ?rotation_schedule ?rotation_statements ?rotation_window ?self_managed_password ?skip_import_rotation ~backend
  ~db_name ~name ~username () =
  ({
     backend;
     credential_config;
     credential_type;
     db_name;
     id;
     name;
     namespace;
     rotation_period;
     rotation_schedule;
     rotation_statements;
     rotation_window;
     self_managed_password;
     skip_import_rotation;
     username;
   }
    : vault_database_secret_backend_static_role)

type t = {
  tf_name : string;
  backend : string prop;
  credential_config : string Tf_core.assoc prop;
  credential_type : string prop;
  db_name : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_statements : string list prop;
  rotation_window : float prop;
  self_managed_password : string prop;
  skip_import_rotation : bool prop;
  username : string prop;
}

let make ?credential_config ?credential_type ?id ?namespace ?rotation_period ?rotation_schedule ?rotation_statements
  ?rotation_window ?self_managed_password ?skip_import_rotation ~backend ~db_name ~name ~username __id =
  let __type = "vault_database_secret_backend_static_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       credential_config = Prop.computed __type __id "credential_config";
       credential_type = Prop.computed __type __id "credential_type";
       db_name = Prop.computed __type __id "db_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_statements = Prop.computed __type __id "rotation_statements";
       rotation_window = Prop.computed __type __id "rotation_window";
       self_managed_password = Prop.computed __type __id "self_managed_password";
       skip_import_rotation = Prop.computed __type __id "skip_import_rotation";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_database_secret_backend_static_role
        (vault_database_secret_backend_static_role ?credential_config ?credential_type ?id ?namespace ?rotation_period
           ?rotation_schedule ?rotation_statements ?rotation_window ?self_managed_password ?skip_import_rotation
           ~backend ~db_name ~name ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?credential_config ?credential_type ?id ?namespace ?rotation_period ?rotation_schedule
  ?rotation_statements ?rotation_window ?self_managed_password ?skip_import_rotation ~backend ~db_name ~name ~username
  __id =
  let (r : _ Tf_core.resource) =
    make ?credential_config ?credential_type ?id ?namespace ?rotation_period ?rotation_schedule ?rotation_statements
      ?rotation_window ?self_managed_password ?skip_import_rotation ~backend ~db_name ~name ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
