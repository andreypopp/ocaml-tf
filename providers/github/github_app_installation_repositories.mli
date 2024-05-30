(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_app_installation_repositories

val github_app_installation_repositories :
  ?id:string prop ->
  installation_id:string prop ->
  selected_repositories:string prop list ->
  unit ->
  github_app_installation_repositories

val yojson_of_github_app_installation_repositories :
  github_app_installation_repositories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  installation_id : string prop;
  selected_repositories : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  installation_id:string prop ->
  selected_repositories:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  installation_id:string prop ->
  selected_repositories:string prop list ->
  string ->
  t Tf_core.resource
