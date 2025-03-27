(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_dynamic_credentials

val vault_ldap_dynamic_credentials :
  ?id:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  role_name:string prop ->
  unit ->
  vault_ldap_dynamic_credentials

val yojson_of_vault_ldap_dynamic_credentials : vault_ldap_dynamic_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  distinguished_names : string list prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  mount : string prop;
  namespace : string prop;
  password : string prop;
  role_name : string prop;
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
