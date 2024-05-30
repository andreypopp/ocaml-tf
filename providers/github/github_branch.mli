(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_branch

val github_branch :
  ?id:string prop ->
  ?source_branch:string prop ->
  ?source_sha:string prop ->
  branch:string prop ->
  repository:string prop ->
  unit ->
  github_branch

val yojson_of_github_branch : github_branch -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch : string prop;
  etag : string prop;
  id : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
  source_branch : string prop;
  source_sha : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?source_branch:string prop ->
  ?source_sha:string prop ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?source_branch:string prop ->
  ?source_sha:string prop ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
