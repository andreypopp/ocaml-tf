(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_policy_exemption__timeouts
type azurerm_resource_policy_exemption

val azurerm_resource_policy_exemption :
  ?description:string ->
  ?display_name:string ->
  ?expires_on:string ->
  ?policy_definition_reference_ids:string list ->
  ?timeouts:azurerm_resource_policy_exemption__timeouts ->
  exemption_category:string ->
  name:string ->
  policy_assignment_id:string ->
  resource_id:string ->
  string ->
  unit
