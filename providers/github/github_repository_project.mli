(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_project

val github_repository_project :
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  repository:string prop ->
  unit ->
  github_repository_project

val yojson_of_github_repository_project :
  github_repository_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  repository : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?body:string prop ->
  ?id:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
