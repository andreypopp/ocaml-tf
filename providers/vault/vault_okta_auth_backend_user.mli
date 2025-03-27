(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_okta_auth_backend_user

val vault_okta_auth_backend_user :
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  path:string prop ->
  username:string prop ->
  unit ->
  vault_okta_auth_backend_user

val yojson_of_vault_okta_auth_backend_user : vault_okta_auth_backend_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : string list prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  policies : string list prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  path:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?groups:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  path:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
