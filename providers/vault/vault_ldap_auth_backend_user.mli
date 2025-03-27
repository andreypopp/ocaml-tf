(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_auth_backend_user

val vault_ldap_auth_backend_user :
  ?backend:string prop ->
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  username:string prop ->
  unit ->
  vault_ldap_auth_backend_user

val yojson_of_vault_ldap_auth_backend_user : vault_ldap_auth_backend_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  groups : string list prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  username:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  username:string prop ->
  string ->
  t Tf_core.resource
