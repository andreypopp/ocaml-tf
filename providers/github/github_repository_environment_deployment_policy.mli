(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_repository_environment_deployment_policy

val github_repository_environment_deployment_policy :
  ?id:string prop ->
  branch_pattern:string prop ->
  environment:string prop ->
  repository:string prop ->
  unit ->
  github_repository_environment_deployment_policy

val yojson_of_github_repository_environment_deployment_policy :
  github_repository_environment_deployment_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch_pattern : string prop;
  environment : string prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  branch_pattern:string prop ->
  environment:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  branch_pattern:string prop ->
  environment:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
