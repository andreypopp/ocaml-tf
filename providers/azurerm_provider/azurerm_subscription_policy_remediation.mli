(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_policy_remediation__timeouts
type azurerm_subscription_policy_remediation

type t = private {
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
  subscription_id : string prop;
}

val azurerm_subscription_policy_remediation :
  ?failure_percentage:float prop ->
  ?id:string prop ->
  ?location_filters:string prop list ->
  ?parallel_deployments:float prop ->
  ?policy_definition_id:string prop ->
  ?policy_definition_reference_id:string prop ->
  ?resource_count:float prop ->
  ?resource_discovery_mode:string prop ->
  ?timeouts:azurerm_subscription_policy_remediation__timeouts ->
  name:string prop ->
  policy_assignment_id:string prop ->
  subscription_id:string prop ->
  string ->
  t
