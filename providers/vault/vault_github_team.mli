(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_github_team

val vault_github_team :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  team:string prop ->
  unit ->
  vault_github_team

val yojson_of_vault_github_team : vault_github_team -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  team : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  team:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  team:string prop ->
  string ->
  t Tf_core.resource
