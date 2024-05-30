(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autolink_references = {
  is_alphanumeric : bool prop;  (** is_alphanumeric *)
  key_prefix : string prop;  (** key_prefix *)
  target_url_template : string prop;  (** target_url_template *)
}

type github_repository_autolink_references

val github_repository_autolink_references :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_repository_autolink_references

val yojson_of_github_repository_autolink_references :
  github_repository_autolink_references -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  autolink_references : autolink_references list prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
