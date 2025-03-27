(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_github_user

val vault_github_user :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  user:string prop ->
  unit ->
  vault_github_user

val yojson_of_vault_github_user : vault_github_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  user:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  user:string prop ->
  string ->
  t Tf_core.resource
