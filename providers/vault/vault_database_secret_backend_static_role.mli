(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_database_secret_backend_static_role

val vault_database_secret_backend_static_role :
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_statements:string prop list ->
  ?rotation_window:float prop ->
  ?self_managed_password:string prop ->
  ?skip_import_rotation:bool prop ->
  backend:string prop ->
  db_name:string prop ->
  name:string prop ->
  username:string prop ->
  unit ->
  vault_database_secret_backend_static_role

val yojson_of_vault_database_secret_backend_static_role : vault_database_secret_backend_static_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_statements:string prop list ->
  ?rotation_window:float prop ->
  ?self_managed_password:string prop ->
  ?skip_import_rotation:bool prop ->
  backend:string prop ->
  db_name:string prop ->
  name:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?credential_config:string prop Tf_core.assoc ->
  ?credential_type:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_statements:string prop list ->
  ?rotation_window:float prop ->
  ?self_managed_password:string prop ->
  ?skip_import_rotation:bool prop ->
  backend:string prop ->
  db_name:string prop ->
  name:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
