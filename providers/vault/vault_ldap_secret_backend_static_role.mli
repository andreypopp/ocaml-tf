(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_secret_backend_static_role

val vault_ldap_secret_backend_static_role :
  ?dn:string prop ->
  ?id:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?skip_import_rotation:bool prop ->
  role_name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  unit ->
  vault_ldap_secret_backend_static_role

val yojson_of_vault_ldap_secret_backend_static_role : vault_ldap_secret_backend_static_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?dn:string prop ->
  ?id:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?skip_import_rotation:bool prop ->
  role_name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  string ->
  t

val make :
  ?dn:string prop ->
  ?id:string prop ->
  ?mount:string prop ->
  ?namespace:string prop ->
  ?skip_import_rotation:bool prop ->
  role_name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
