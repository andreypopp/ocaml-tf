(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_deployment_branch_policy

val github_repository_deployment_branch_policy :
  ?id:string prop ->
  environment_name:string prop ->
  name:string prop ->
  repository:string prop ->
  unit ->
  github_repository_deployment_branch_policy

val yojson_of_github_repository_deployment_branch_policy :
  github_repository_deployment_branch_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  environment_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  environment_name:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  environment_name:string prop ->
  name:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
