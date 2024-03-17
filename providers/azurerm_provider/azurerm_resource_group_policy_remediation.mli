(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_policy_remediation__timeouts
type azurerm_resource_group_policy_remediation

val azurerm_resource_group_policy_remediation :
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:azurerm_resource_group_policy_remediation__timeouts ->
  name:string prop ->
  policy_assignment_id:string prop ->
  resource_group_id:string prop ->
  string ->
  unit
