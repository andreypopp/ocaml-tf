(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_actions_repository_access_level

val github_actions_repository_access_level :
  ?id:string prop ->
  access_level:string prop ->
  repository:string prop ->
  unit ->
  github_actions_repository_access_level

val yojson_of_github_actions_repository_access_level :
  github_actions_repository_access_level -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_level : string prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  access_level:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  access_level:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
