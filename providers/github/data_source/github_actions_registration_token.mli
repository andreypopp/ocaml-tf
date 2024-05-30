(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_actions_registration_token

val github_actions_registration_token :
  ?id:string prop ->
  repository:string prop ->
  unit ->
  github_actions_registration_token

val yojson_of_github_actions_registration_token :
  github_actions_registration_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  expires_at : float prop;
  id : string prop;
  repository : string prop;
  token : string prop;
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
