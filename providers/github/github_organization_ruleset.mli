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

type conditions__repository_name

val conditions__repository_name :
  ?protected:bool prop ->
  exclude:string prop list ->
  include_:string prop list ->
  unit ->
  conditions__repository_name

type conditions

val conditions :
  ?repository_id:float prop list ->
  ?repository_name:conditions__repository_name list ->
  ref_name:conditions__ref_name list ->
  unit ->
  conditions

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

type rules__required_workflows__required_workflow

val rules__required_workflows__required_workflow :
  ?ref:string prop ->
  path:string prop ->
  repository_id:float prop ->
  unit ->
  rules__required_workflows__required_workflow

type rules__required_workflows

val rules__required_workflows :
  required_workflow:rules__required_workflows__required_workflow list ->
  unit ->
  rules__required_workflows

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
  ?branch_name_pattern:rules__branch_name_pattern list ->
  ?commit_author_email_pattern:
    rules__commit_author_email_pattern list ->
  ?commit_message_pattern:rules__commit_message_pattern list ->
  ?committer_email_pattern:rules__committer_email_pattern list ->
  ?pull_request:rules__pull_request list ->
  ?required_status_checks:rules__required_status_checks list ->
  ?required_workflows:rules__required_workflows list ->
  ?tag_name_pattern:rules__tag_name_pattern list ->
  unit ->
  rules

type github_organization_ruleset

val github_organization_ruleset :
  ?id:string prop ->
  ?bypass_actors:bypass_actors list ->
  ?conditions:conditions list ->
  enforcement:string prop ->
  name:string prop ->
  target:string prop ->
  rules:rules list ->
  unit ->
  github_organization_ruleset

val yojson_of_github_organization_ruleset :
  github_organization_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enforcement : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  node_id : string prop;
  ruleset_id : float prop;
  target : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
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
  ?bypass_actors:bypass_actors list ->
  ?conditions:conditions list ->
  enforcement:string prop ->
  name:string prop ->
  target:string prop ->
  rules:rules list ->
  string ->
  t Tf_core.resource
