(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bypass_actors

val bypass_actors :
  actor_id:float prop ->
  actor_type:string prop ->
  bypass_mode:string prop ->
  unit ->
  bypass_actors

type conditions__ref_name

val conditions__ref_name :
  exclude:string prop list ->
  include_:string prop list ->
  unit ->
  conditions__ref_name

type conditions

val conditions :
  ref_name:conditions__ref_name list -> unit -> conditions

type rules__branch_name_pattern

val rules__branch_name_pattern :
  ?name:string prop ->
  ?negate:bool prop ->
  operator:string prop ->
  pattern:string prop ->
  unit ->
  rules__branch_name_pattern

type rules__commit_author_email_pattern

val rules__commit_author_email_pattern :
  ?name:string prop ->
  ?negate:bool prop ->
  operator:string prop ->
  pattern:string prop ->
  unit ->
  rules__commit_author_email_pattern

type rules__commit_message_pattern

val rules__commit_message_pattern :
  ?name:string prop ->
  ?negate:bool prop ->
  operator:string prop ->
  pattern:string prop ->
  unit ->
  rules__commit_message_pattern

type rules__committer_email_pattern

val rules__committer_email_pattern :
  ?name:string prop ->
  ?negate:bool prop ->
  operator:string prop ->
  pattern:string prop ->
  unit ->
  rules__committer_email_pattern

type rules__pull_request

val rules__pull_request :
  ?dismiss_stale_reviews_on_push:bool prop ->
  ?require_code_owner_review:bool prop ->
  ?require_last_push_approval:bool prop ->
  ?required_approving_review_count:float prop ->
  ?required_review_thread_resolution:bool prop ->
  unit ->
  rules__pull_request

type rules__required_deployments

val rules__required_deployments :
  required_deployment_environments:string prop list ->
  unit ->
  rules__required_deployments

type rules__required_status_checks__required_check

val rules__required_status_checks__required_check :
  ?integration_id:float prop ->
  context:string prop ->
  unit ->
  rules__required_status_checks__required_check

type rules__required_status_checks

val rules__required_status_checks :
  ?strict_required_status_checks_policy:bool prop ->
  required_check:rules__required_status_checks__required_check list ->
  unit ->
  rules__required_status_checks

type rules__tag_name_pattern

val rules__tag_name_pattern :
  ?name:string prop ->
  ?negate:bool prop ->
  operator:string prop ->
  pattern:string prop ->
  unit ->
  rules__tag_name_pattern

type rules

val rules :
  ?creation:bool prop ->
  ?deletion:bool prop ->
  ?non_fast_forward:bool prop ->
  ?required_linear_history:bool prop ->
  ?required_signatures:bool prop ->
  ?update:bool prop ->
  ?update_allows_fetch_and_merge:bool prop ->
  ?branch_name_pattern:rules__branch_name_pattern list ->
  ?commit_author_email_pattern:
    rules__commit_author_email_pattern list ->
  ?commit_message_pattern:rules__commit_message_pattern list ->
  ?committer_email_pattern:rules__committer_email_pattern list ->
  ?pull_request:rules__pull_request list ->
  ?required_deployments:rules__required_deployments list ->
  ?required_status_checks:rules__required_status_checks list ->
  ?tag_name_pattern:rules__tag_name_pattern list ->
  unit ->
  rules

type github_repository_ruleset

val github_repository_ruleset :
  ?id:string prop ->
  ?repository:string prop ->
  ?bypass_actors:bypass_actors list ->
  ?conditions:conditions list ->
  enforcement:string prop ->
  name:string prop ->
  target:string prop ->
  rules:rules list ->
  unit ->
  github_repository_ruleset

val yojson_of_github_repository_ruleset :
  github_repository_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enforcement : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  repository : string prop;
  ruleset_id : float prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?repository:string prop ->
  ?bypass_actors:bypass_actors list ->
  ?conditions:conditions list ->
  enforcement:string prop ->
  name:string prop ->
  target:string prop ->
  rules:rules list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?repository:string prop ->
  ?bypass_actors:bypass_actors list ->
  ?conditions:conditions list ->
  enforcement:string prop ->
  name:string prop ->
  target:string prop ->
  rules:rules list ->
  string ->
  t Tf_core.resource
