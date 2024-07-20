(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type activation_rules__approval_stage__primary_approver

val activation_rules__approval_stage__primary_approver :
  object_id:string prop ->
  type_:string prop ->
  unit ->
  activation_rules__approval_stage__primary_approver

type activation_rules__approval_stage

val activation_rules__approval_stage :
  primary_approver:
    activation_rules__approval_stage__primary_approver list ->
  unit ->
  activation_rules__approval_stage

type activation_rules

val activation_rules :
  ?maximum_duration:string prop ->
  ?require_approval:bool prop ->
  ?require_justification:bool prop ->
  ?require_multifactor_authentication:bool prop ->
  ?require_ticket_info:bool prop ->
  ?required_conditional_access_authentication_context:string prop ->
  ?approval_stage:activation_rules__approval_stage list ->
  unit ->
  activation_rules

type active_assignment_rules

val active_assignment_rules :
  ?expiration_required:bool prop ->
  ?expire_after:string prop ->
  ?require_justification:bool prop ->
  ?require_multifactor_authentication:bool prop ->
  ?require_ticket_info:bool prop ->
  unit ->
  active_assignment_rules

type eligible_assignment_rules

val eligible_assignment_rules :
  ?expiration_required:bool prop ->
  ?expire_after:string prop ->
  unit ->
  eligible_assignment_rules

type notification_rules__active_assignments__admin_notifications

val notification_rules__active_assignments__admin_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__active_assignments__admin_notifications

type notification_rules__active_assignments__approver_notifications

val notification_rules__active_assignments__approver_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__active_assignments__approver_notifications

type notification_rules__active_assignments__assignee_notifications

val notification_rules__active_assignments__assignee_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__active_assignments__assignee_notifications

type notification_rules__active_assignments

val notification_rules__active_assignments :
  ?admin_notifications:
    notification_rules__active_assignments__admin_notifications list ->
  ?approver_notifications:
    notification_rules__active_assignments__approver_notifications
    list ->
  ?assignee_notifications:
    notification_rules__active_assignments__assignee_notifications
    list ->
  unit ->
  notification_rules__active_assignments

type notification_rules__eligible_activations__admin_notifications

val notification_rules__eligible_activations__admin_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_activations__admin_notifications

type notification_rules__eligible_activations__approver_notifications

val notification_rules__eligible_activations__approver_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_activations__approver_notifications

type notification_rules__eligible_activations__assignee_notifications

val notification_rules__eligible_activations__assignee_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_activations__assignee_notifications

type notification_rules__eligible_activations

val notification_rules__eligible_activations :
  ?admin_notifications:
    notification_rules__eligible_activations__admin_notifications
    list ->
  ?approver_notifications:
    notification_rules__eligible_activations__approver_notifications
    list ->
  ?assignee_notifications:
    notification_rules__eligible_activations__assignee_notifications
    list ->
  unit ->
  notification_rules__eligible_activations

type notification_rules__eligible_assignments__admin_notifications

val notification_rules__eligible_assignments__admin_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_assignments__admin_notifications

type notification_rules__eligible_assignments__approver_notifications

val notification_rules__eligible_assignments__approver_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_assignments__approver_notifications

type notification_rules__eligible_assignments__assignee_notifications

val notification_rules__eligible_assignments__assignee_notifications :
  ?additional_recipients:string prop list ->
  default_recipients:bool prop ->
  notification_level:string prop ->
  unit ->
  notification_rules__eligible_assignments__assignee_notifications

type notification_rules__eligible_assignments

val notification_rules__eligible_assignments :
  ?admin_notifications:
    notification_rules__eligible_assignments__admin_notifications
    list ->
  ?approver_notifications:
    notification_rules__eligible_assignments__approver_notifications
    list ->
  ?assignee_notifications:
    notification_rules__eligible_assignments__assignee_notifications
    list ->
  unit ->
  notification_rules__eligible_assignments

type notification_rules

val notification_rules :
  ?active_assignments:notification_rules__active_assignments list ->
  ?eligible_activations:notification_rules__eligible_activations list ->
  ?eligible_assignments:notification_rules__eligible_assignments list ->
  unit ->
  notification_rules

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_role_management_policy

val azurerm_role_management_policy :
  ?id:string prop ->
  ?activation_rules:activation_rules list ->
  ?active_assignment_rules:active_assignment_rules list ->
  ?eligible_assignment_rules:eligible_assignment_rules list ->
  ?notification_rules:notification_rules list ->
  ?timeouts:timeouts ->
  role_definition_id:string prop ->
  scope:string prop ->
  unit ->
  azurerm_role_management_policy

val yojson_of_azurerm_role_management_policy :
  azurerm_role_management_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?activation_rules:activation_rules list ->
  ?active_assignment_rules:active_assignment_rules list ->
  ?eligible_assignment_rules:eligible_assignment_rules list ->
  ?notification_rules:notification_rules list ->
  ?timeouts:timeouts ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?activation_rules:activation_rules list ->
  ?active_assignment_rules:active_assignment_rules list ->
  ?eligible_assignment_rules:eligible_assignment_rules list ->
  ?notification_rules:notification_rules list ->
  ?timeouts:timeouts ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
