(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_pim_eligible_role_assignment__schedule__expiration
type azurerm_pim_eligible_role_assignment__schedule
type azurerm_pim_eligible_role_assignment__ticket
type azurerm_pim_eligible_role_assignment__timeouts
type azurerm_pim_eligible_role_assignment

val azurerm_pim_eligible_role_assignment :
  ?justification:string ->
  ?timeouts:azurerm_pim_eligible_role_assignment__timeouts ->
  principal_id:string ->
  role_definition_id:string ->
  scope:string ->
  schedule:azurerm_pim_eligible_role_assignment__schedule list ->
  ticket:azurerm_pim_eligible_role_assignment__ticket list ->
  string ->
  unit
