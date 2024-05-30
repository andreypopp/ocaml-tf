(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_tag_protection

val github_repository_tag_protection :
  ?id:string prop ->
  pattern:string prop ->
  repository:string prop ->
  unit ->
  github_repository_tag_protection

val yojson_of_github_repository_tag_protection :
  github_repository_tag_protection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  pattern : string prop;
  repository : string prop;
  tag_protection_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  pattern:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  pattern:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
