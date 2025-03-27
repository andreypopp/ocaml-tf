(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_static_credentials

val vault_ldap_static_credentials :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  role_name:string prop ->
  unit ->
  vault_ldap_static_credentials

val yojson_of_vault_ldap_static_credentials : vault_ldap_static_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
