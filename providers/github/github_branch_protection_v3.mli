(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type required_pull_request_reviews__bypass_pull_request_allowances

val required_pull_request_reviews__bypass_pull_request_allowances :
  ?apps:string prop list ->
  ?teams:string prop list ->
  ?users:string prop list ->
  unit ->
  required_pull_request_reviews__bypass_pull_request_allowances

type required_pull_request_reviews

val required_pull_request_reviews :
  ?dismiss_stale_reviews:bool prop ->
  ?dismissal_apps:string prop list ->
  ?dismissal_teams:string prop list ->
  ?dismissal_users:string prop list ->
  ?include_admins:bool prop ->
  ?require_code_owner_reviews:bool prop ->
  ?require_last_push_approval:bool prop ->
  ?required_approving_review_count:float prop ->
  ?bypass_pull_request_allowances:
    required_pull_request_reviews__bypass_pull_request_allowances
    list ->
  unit ->
  required_pull_request_reviews

type required_status_checks

val required_status_checks :
  ?checks:string prop list ->
  ?contexts:string prop list ->
  ?include_admins:bool prop ->
  ?strict:bool prop ->
  unit ->
  required_status_checks

type restrictions

val restrictions :
  ?apps:string prop list ->
  ?teams:string prop list ->
  ?users:string prop list ->
  unit ->
  restrictions

type github_branch_protection_v3

val github_branch_protection_v3 :
  ?enforce_admins:bool prop ->
  ?id:string prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrictions:restrictions list ->
  branch:string prop ->
  repository:string prop ->
  unit ->
  github_branch_protection_v3

val yojson_of_github_branch_protection_v3 :
  github_branch_protection_v3 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch : string prop;
  enforce_admins : bool prop;
  etag : string prop;
  id : string prop;
  repository : string prop;
  require_conversation_resolution : bool prop;
  require_signed_commits : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?enforce_admins:bool prop ->
  ?id:string prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrictions:restrictions list ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?enforce_admins:bool prop ->
  ?id:string prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrictions:restrictions list ->
  branch:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
