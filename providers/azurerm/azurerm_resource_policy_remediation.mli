(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_resource_policy_remediation

val azurerm_resource_policy_remediation :
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  unit ->
  azurerm_resource_policy_remediation

val yojson_of_azurerm_resource_policy_remediation :
  azurerm_resource_policy_remediation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  failure_percentage : float prop;
  id : string prop;
  location_filters : string list prop;
  name : string prop;
  parallel_deployments : float prop;
  policy_assignment_id : string prop;
  policy_definition_id : string prop;
  policy_definition_reference_id : string prop;
  resource_count : float prop;
  resource_discovery_mode : string prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
