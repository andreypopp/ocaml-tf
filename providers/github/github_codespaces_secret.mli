(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_codespaces_secret

val github_codespaces_secret :
  ?encrypted_value:string prop ->
  ?id:string prop ->
  ?plaintext_value:string prop ->
  repository:string prop ->
  secret_name:string prop ->
  unit ->
  github_codespaces_secret

val yojson_of_github_codespaces_secret :
  github_codespaces_secret -> json

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
