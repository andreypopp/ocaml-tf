(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_app_installation_repository

val github_app_installation_repository :
  ?id:string prop ->
  installation_id:string prop ->
  repository:string prop ->
  unit ->
  github_app_installation_repository

val yojson_of_github_app_installation_repository :
  github_app_installation_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  installation_id : string prop;
  repo_id : float prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  installation_id:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  installation_id:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
