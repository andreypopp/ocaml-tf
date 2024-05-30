(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_users

val github_users :
  ?id:string prop ->
  usernames:string prop list ->
  unit ->
  github_users

val yojson_of_github_users : github_users -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  emails : string list prop;
  id : string prop;
  logins : string list prop;
  node_ids : string list prop;
  unknown_logins : string list prop;
  usernames : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  usernames:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  usernames:string prop list ->
  string ->
  t Tf_core.resource
