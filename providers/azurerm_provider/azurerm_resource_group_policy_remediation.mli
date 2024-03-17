(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_policy_remediation__timeouts
type azurerm_resource_group_policy_remediation

val azurerm_resource_group_policy_remediation :
  ?failure_percentage:float ->
  ?id:string ->
  ?location_filters:string list ->
  ?parallel_deployments:float ->
  ?policy_definition_id:string ->
  ?policy_definition_reference_id:string ->
  ?resource_count:float ->
  ?resource_discovery_mode:string ->
  ?timeouts:azurerm_resource_group_policy_remediation__timeouts ->
  name:string ->
  policy_assignment_id:string ->
  resource_group_id:string ->
  string ->
  unit
