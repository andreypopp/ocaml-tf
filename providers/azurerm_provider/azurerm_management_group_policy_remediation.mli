(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group_policy_remediation__timeouts
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
  ?timeouts:azurerm_management_group_policy_remediation__timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  policy_assignment_id:string prop ->
  string ->
  unit
