(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_autolink_reference

val github_repository_autolink_reference :
  ?id:string prop ->
  ?is_alphanumeric:bool prop ->
  key_prefix:string prop ->
  repository:string prop ->
  target_url_template:string prop ->
  unit ->
  github_repository_autolink_reference

val yojson_of_github_repository_autolink_reference :
  github_repository_autolink_reference -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  is_alphanumeric : bool prop;
  key_prefix : string prop;
  repository : string prop;
  target_url_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_alphanumeric:bool prop ->
  key_prefix:string prop ->
  repository:string prop ->
  target_url_template:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_alphanumeric:bool prop ->
  key_prefix:string prop ->
  repository:string prop ->
  target_url_template:string prop ->
  string ->
  t Tf_core.resource
