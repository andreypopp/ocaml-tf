(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_dependabot_secret

val github_dependabot_secret :
  ?encrypted_value:string prop ->
  ?id:string prop ->
  ?plaintext_value:string prop ->
  repository:string prop ->
  secret_name:string prop ->
  unit ->
  github_dependabot_secret

val yojson_of_github_dependabot_secret :
  github_dependabot_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  encrypted_value : string prop;
  id : string prop;
  plaintext_value : string prop;
  repository : string prop;
  secret_name : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encrypted_value:string prop ->
  ?id:string prop ->
  ?plaintext_value:string prop ->
  repository:string prop ->
  secret_name:string prop ->
  string ->
  t

val make :
  ?encrypted_value:string prop ->
  ?id:string prop ->
  ?plaintext_value:string prop ->
  repository:string prop ->
  secret_name:string prop ->
  string ->
  t Tf_core.resource
