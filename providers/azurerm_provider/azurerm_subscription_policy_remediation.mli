(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_policy_remediation__timeouts
type azurerm_subscription_policy_remediation

val azurerm_subscription_policy_remediation :
  ?failure_percentage:float ->
  ?id:string ->
  ?location_filters:string list ->
  ?parallel_deployments:float ->
  ?policy_definition_id:string ->
  ?policy_definition_reference_id:string ->
  ?resource_count:float ->
  ?resource_discovery_mode:string ->
  ?timeouts:azurerm_subscription_policy_remediation__timeouts ->
  name:string ->
  policy_assignment_id:string ->
  subscription_id:string ->
  string ->
  unit
