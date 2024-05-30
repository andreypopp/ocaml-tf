(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_app_token

val github_app_token :
  ?id:string prop ->
  app_id:string prop ->
  installation_id:string prop ->
  pem_file:string prop ->
  unit ->
  github_app_token

val yojson_of_github_app_token : github_app_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  installation_id : string prop;
  pem_file : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  installation_id:string prop ->
  pem_file:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  installation_id:string prop ->
  pem_file:string prop ->
  string ->
  t Tf_core.resource
