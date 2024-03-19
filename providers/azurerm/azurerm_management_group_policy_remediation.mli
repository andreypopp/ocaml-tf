(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_management_group_policy_remediation

val azurerm_management_group_policy_remediation :
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  unit ->
  azurerm_management_group_policy_remediation

val yojson_of_azurerm_management_group_policy_remediation :
  azurerm_management_group_policy_remediation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  failure_percentage : float prop;
  id : string prop;
  location_filters : string list prop;
  management_group_id : string prop;
  name : string prop;
  parallel_deployments : float prop;
  policy_assignment_id : string prop;
  policy_definition_id : string prop;
  policy_definition_reference_id : string prop;
  resource_count : float prop;
  resource_discovery_mode : string prop;
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
  management_group_id:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  string ->
  t
