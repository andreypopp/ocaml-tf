(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type activation_rules__approval_stage__primary_approver = {
  object_id : string prop;  (** object_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type activation_rules__approval_stage = {
  primary_approver :
    activation_rules__approval_stage__primary_approver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** primary_approver *)
}

type activation_rules = {
  approval_stage : activation_rules__approval_stage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** approval_stage *)
  maximum_duration : string prop;  (** maximum_duration *)
  require_approval : bool prop;  (** require_approval *)
  require_justification : bool prop;  (** require_justification *)
  require_multifactor_authentication : bool prop;
      (** require_multifactor_authentication *)
  require_ticket_info : bool prop;  (** require_ticket_info *)
  required_conditional_access_authentication_context : string prop;
      (** required_conditional_access_authentication_context *)
}

type active_assignment_rules = {
  expiration_required : bool prop;  (** expiration_required *)
  expire_after : string prop;  (** expire_after *)
  require_justification : bool prop;  (** require_justification *)
  require_multifactor_authentication : bool prop;
      (** require_multifactor_authentication *)
  require_ticket_info : bool prop;  (** require_ticket_info *)
}

type eligible_assignment_rules = {
  expiration_required : bool prop;  (** expiration_required *)
  expire_after : string prop;  (** expire_after *)
}

type notification_rules__eligible_assignments__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_assignments__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_assignments__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_assignments = {
  admin_notifications :
    notification_rules__eligible_assignments__admin_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** admin_notifications *)
  approver_notifications :
    notification_rules__eligible_assignments__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** approver_notifications *)
  assignee_notifications :
    notification_rules__eligible_assignments__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** assignee_notifications *)
}

type notification_rules__eligible_activations__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_activations__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_activations__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__eligible_activations = {
  admin_notifications :
    notification_rules__eligible_activations__admin_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** admin_notifications *)
  approver_notifications :
    notification_rules__eligible_activations__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** approver_notifications *)
  assignee_notifications :
    notification_rules__eligible_activations__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** assignee_notifications *)
}

type notification_rules__active_assignments__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__active_assignments__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__active_assignments__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_recipients *)
  default_recipients : bool prop;  (** default_recipients *)
  notification_level : string prop;  (** notification_level *)
}

type notification_rules__active_assignments = {
  admin_notifications :
    notification_rules__active_assignments__admin_notifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** admin_notifications *)
  approver_notifications :
    notification_rules__active_assignments__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** approver_notifications *)
  assignee_notifications :
    notification_rules__active_assignments__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** assignee_notifications *)
}

type notification_rules = {
  active_assignments : notification_rules__active_assignments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** active_assignments *)
  eligible_activations :
    notification_rules__eligible_activations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** eligible_activations *)
  eligible_assignments :
    notification_rules__eligible_assignments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** eligible_assignments *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_role_management_policy

val azurerm_role_management_policy :
  ?id:string prop ->
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
  activation_rules : activation_rules list prop;
  active_assignment_rules : active_assignment_rules list prop;
  description : string prop;
  eligible_assignment_rules : eligible_assignment_rules list prop;
  id : string prop;
  name : string prop;
  notification_rules : notification_rules list prop;
  role_definition_id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
