(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type deployment_branch_policies = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type github_repository_deployment_branch_policies

val github_repository_deployment_branch_policies :
  ?id:string prop ->
  environment_name:string prop ->
  repository:string prop ->
  unit ->
  github_repository_deployment_branch_policies

val yojson_of_github_repository_deployment_branch_policies :
  github_repository_deployment_branch_policies -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deployment_branch_policies : deployment_branch_policies list prop;
  environment_name : string prop;
  id : string prop;
  repository : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  environment_name:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  environment_name:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
