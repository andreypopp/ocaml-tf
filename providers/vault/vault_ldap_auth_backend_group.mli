(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ldap_auth_backend_group

val vault_ldap_auth_backend_group :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  groupname:string prop ->
  unit ->
  vault_ldap_auth_backend_group

val yojson_of_vault_ldap_auth_backend_group : vault_ldap_auth_backend_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  groupname : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  groupname:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  groupname:string prop ->
  string ->
  t Tf_core.resource
