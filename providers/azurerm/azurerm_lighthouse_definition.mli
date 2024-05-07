(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authorization

val authorization :
  ?delegated_role_definition_ids:string prop list ->
  ?principal_display_name:string prop ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  unit ->
  authorization

type eligible_authorization__just_in_time_access_policy__approver

val eligible_authorization__just_in_time_access_policy__approver :
  ?principal_display_name:string prop ->
  principal_id:string prop ->
  unit ->
  eligible_authorization__just_in_time_access_policy__approver

type eligible_authorization__just_in_time_access_policy

val eligible_authorization__just_in_time_access_policy :
  ?maximum_activation_duration:string prop ->
  ?multi_factor_auth_provider:string prop ->
  approver:
    eligible_authorization__just_in_time_access_policy__approver list ->
  unit ->
  eligible_authorization__just_in_time_access_policy

type eligible_authorization

val eligible_authorization :
  ?principal_display_name:string prop ->
  ?just_in_time_access_policy:
    eligible_authorization__just_in_time_access_policy list ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  unit ->
  eligible_authorization

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  version:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lighthouse_definition

val azurerm_lighthouse_definition :
  ?description:string prop ->
  ?id:string prop ->
  ?lighthouse_definition_id:string prop ->
  ?plan:plan list ->
  ?timeouts:timeouts ->
  managing_tenant_id:string prop ->
  name:string prop ->
  scope:string prop ->
  authorization:authorization list ->
  eligible_authorization:eligible_authorization list ->
  unit ->
  azurerm_lighthouse_definition

val yojson_of_azurerm_lighthouse_definition :
  azurerm_lighthouse_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  lighthouse_definition_id : string prop;
  managing_tenant_id : string prop;
  name : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?lighthouse_definition_id:string prop ->
  ?plan:plan list ->
  ?timeouts:timeouts ->
  managing_tenant_id:string prop ->
  name:string prop ->
  scope:string prop ->
  authorization:authorization list ->
  eligible_authorization:eligible_authorization list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?lighthouse_definition_id:string prop ->
  ?plan:plan list ->
  ?timeouts:timeouts ->
  managing_tenant_id:string prop ->
  name:string prop ->
  scope:string prop ->
  authorization:authorization list ->
  eligible_authorization:eligible_authorization list ->
  string ->
  t Tf_core.resource
