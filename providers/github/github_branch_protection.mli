(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type required_pull_request_reviews

val required_pull_request_reviews :
  ?dismiss_stale_reviews:bool prop ->
  ?dismissal_restrictions:string prop list ->
  ?pull_request_bypassers:string prop list ->
  ?require_code_owner_reviews:bool prop ->
  ?require_last_push_approval:bool prop ->
  ?required_approving_review_count:float prop ->
  ?restrict_dismissals:bool prop ->
  unit ->
  required_pull_request_reviews

type required_status_checks

val required_status_checks :
  ?contexts:string prop list ->
  ?strict:bool prop ->
  unit ->
  required_status_checks

type restrict_pushes

val restrict_pushes :
  ?blocks_creations:bool prop ->
  ?push_allowances:string prop list ->
  unit ->
  restrict_pushes

type github_branch_protection

val github_branch_protection :
  ?allows_deletions:bool prop ->
  ?allows_force_pushes:bool prop ->
  ?enforce_admins:bool prop ->
  ?force_push_bypassers:string prop list ->
  ?id:string prop ->
  ?lock_branch:bool prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_linear_history:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrict_pushes:restrict_pushes list ->
  pattern:string prop ->
  repository_id:string prop ->
  unit ->
  github_branch_protection

val yojson_of_github_branch_protection :
  github_branch_protection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allows_deletions : bool prop;
  allows_force_pushes : bool prop;
  enforce_admins : bool prop;
  force_push_bypassers : string list prop;
  id : string prop;
  lock_branch : bool prop;
  pattern : string prop;
  repository_id : string prop;
  require_conversation_resolution : bool prop;
  require_signed_commits : bool prop;
  required_linear_history : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allows_deletions:bool prop ->
  ?allows_force_pushes:bool prop ->
  ?enforce_admins:bool prop ->
  ?force_push_bypassers:string prop list ->
  ?id:string prop ->
  ?lock_branch:bool prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_linear_history:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrict_pushes:restrict_pushes list ->
  pattern:string prop ->
  repository_id:string prop ->
  string ->
  t

val make :
  ?allows_deletions:bool prop ->
  ?allows_force_pushes:bool prop ->
  ?enforce_admins:bool prop ->
  ?force_push_bypassers:string prop list ->
  ?id:string prop ->
  ?lock_branch:bool prop ->
  ?require_conversation_resolution:bool prop ->
  ?require_signed_commits:bool prop ->
  ?required_linear_history:bool prop ->
  ?required_pull_request_reviews:required_pull_request_reviews list ->
  ?required_status_checks:required_status_checks list ->
  ?restrict_pushes:restrict_pushes list ->
  pattern:string prop ->
  repository_id:string prop ->
  string ->
  t Tf_core.resource
