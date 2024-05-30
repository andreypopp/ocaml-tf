(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_topics

val github_repository_topics :
  ?id:string prop ->
  repository:string prop ->
  topics:string prop list ->
  unit ->
  github_repository_topics

val yojson_of_github_repository_topics :
  github_repository_topics -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  repository : string prop;
  topics : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  topics:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  topics:string prop list ->
  string ->
  t Tf_core.resource
