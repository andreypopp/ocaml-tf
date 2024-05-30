(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type deployment_branch_policy

val deployment_branch_policy :
  custom_branch_policies:bool prop ->
  protected_branches:bool prop ->
  unit ->
  deployment_branch_policy

type reviewers

val reviewers :
  ?teams:float prop list ->
  ?users:float prop list ->
  unit ->
  reviewers

type github_repository_environment

val github_repository_environment :
  ?can_admins_bypass:bool prop ->
  ?id:string prop ->
  ?prevent_self_review:bool prop ->
  ?wait_timer:float prop ->
  ?deployment_branch_policy:deployment_branch_policy list ->
  ?reviewers:reviewers list ->
  environment:string prop ->
  repository:string prop ->
  unit ->
  github_repository_environment

val yojson_of_github_repository_environment :
  github_repository_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  can_admins_bypass : bool prop;
  environment : string prop;
  id : string prop;
  prevent_self_review : bool prop;
  repository : string prop;
  wait_timer : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?can_admins_bypass:bool prop ->
  ?id:string prop ->
  ?prevent_self_review:bool prop ->
  ?wait_timer:float prop ->
  ?deployment_branch_policy:deployment_branch_policy list ->
  ?reviewers:reviewers list ->
  environment:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?can_admins_bypass:bool prop ->
  ?id:string prop ->
  ?prevent_self_review:bool prop ->
  ?wait_timer:float prop ->
  ?deployment_branch_policy:deployment_branch_policy list ->
  ?reviewers:reviewers list ->
  environment:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
