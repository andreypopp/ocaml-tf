(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_notification_targets

val additional_notification_targets :
  ?admin_email_recipients:string prop list ->
  ?requester_email_recipients:string prop list ->
  unit ->
  additional_notification_targets

type approval_workflow__manual_approvals__steps__approvers

val approval_workflow__manual_approvals__steps__approvers :
  principals:string prop list ->
  unit ->
  approval_workflow__manual_approvals__steps__approvers

type approval_workflow__manual_approvals__steps

val approval_workflow__manual_approvals__steps :
  ?approvals_needed:float prop ->
  ?approver_email_recipients:string prop list ->
  approvers:
    approval_workflow__manual_approvals__steps__approvers list ->
  unit ->
  approval_workflow__manual_approvals__steps

type approval_workflow__manual_approvals

val approval_workflow__manual_approvals :
  ?require_approver_justification:bool prop ->
  steps:approval_workflow__manual_approvals__steps list ->
  unit ->
  approval_workflow__manual_approvals

type approval_workflow

val approval_workflow :
  manual_approvals:approval_workflow__manual_approvals list ->
  unit ->
  approval_workflow

type eligible_users

val eligible_users :
  principals:string prop list -> unit -> eligible_users

type privileged_access__gcp_iam_access__role_bindings

val privileged_access__gcp_iam_access__role_bindings :
  ?condition_expression:string prop ->
  role:string prop ->
  unit ->
  privileged_access__gcp_iam_access__role_bindings

type privileged_access__gcp_iam_access

val privileged_access__gcp_iam_access :
  resource:string prop ->
  resource_type:string prop ->
  role_bindings:privileged_access__gcp_iam_access__role_bindings list ->
  unit ->
  privileged_access__gcp_iam_access

type privileged_access

val privileged_access :
  gcp_iam_access:privileged_access__gcp_iam_access list ->
  unit ->
  privileged_access

type requester_justification_config__not_mandatory

val requester_justification_config__not_mandatory :
  unit -> requester_justification_config__not_mandatory

type requester_justification_config__unstructured

val requester_justification_config__unstructured :
  unit -> requester_justification_config__unstructured

type requester_justification_config

val requester_justification_config :
  ?not_mandatory:requester_justification_config__not_mandatory list ->
  ?unstructured:requester_justification_config__unstructured list ->
  unit ->
  requester_justification_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_privileged_access_manager_entitlement

val google_privileged_access_manager_entitlement :
  ?id:string prop ->
  ?additional_notification_targets:
    additional_notification_targets list ->
  ?approval_workflow:approval_workflow list ->
  ?timeouts:timeouts ->
  entitlement_id:string prop ->
  location:string prop ->
  max_request_duration:string prop ->
  parent:string prop ->
  eligible_users:eligible_users list ->
  privileged_access:privileged_access list ->
  requester_justification_config:requester_justification_config list ->
  unit ->
  google_privileged_access_manager_entitlement

val yojson_of_google_privileged_access_manager_entitlement :
  google_privileged_access_manager_entitlement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  entitlement_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  max_request_duration : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?additional_notification_targets:
    additional_notification_targets list ->
  ?approval_workflow:approval_workflow list ->
  ?timeouts:timeouts ->
  entitlement_id:string prop ->
  location:string prop ->
  max_request_duration:string prop ->
  parent:string prop ->
  eligible_users:eligible_users list ->
  privileged_access:privileged_access list ->
  requester_justification_config:requester_justification_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?additional_notification_targets:
    additional_notification_targets list ->
  ?approval_workflow:approval_workflow list ->
  ?timeouts:timeouts ->
  entitlement_id:string prop ->
  location:string prop ->
  max_request_duration:string prop ->
  parent:string prop ->
  eligible_users:eligible_users list ->
  privileged_access:privileged_access list ->
  requester_justification_config:requester_justification_config list ->
  string ->
  t Tf_core.resource
