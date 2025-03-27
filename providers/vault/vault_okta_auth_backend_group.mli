(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_okta_auth_backend_group

val vault_okta_auth_backend_group :
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  group_name:string prop ->
  path:string prop ->
  unit ->
  vault_okta_auth_backend_group

val yojson_of_vault_okta_auth_backend_group : vault_okta_auth_backend_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group_name : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  policies : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  group_name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  group_name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
