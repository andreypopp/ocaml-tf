(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_user_ssh_key

val github_user_ssh_key :
  ?id:string prop ->
  key:string prop ->
  title:string prop ->
  unit ->
  github_user_ssh_key

val yojson_of_github_user_ssh_key : github_user_ssh_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  key : string prop;
  title : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
