(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_user_gpg_key

val github_user_gpg_key :
  ?id:string prop ->
  armored_public_key:string prop ->
  unit ->
  github_user_gpg_key

val yojson_of_github_user_gpg_key : github_user_gpg_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  armored_public_key : string prop;
  etag : string prop;
  id : string prop;
  key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  armored_public_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  armored_public_key:string prop ->
  string ->
  t Tf_core.resource
