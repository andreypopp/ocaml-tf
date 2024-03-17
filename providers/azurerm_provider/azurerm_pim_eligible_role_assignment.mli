(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_pim_eligible_role_assignment__schedule__expiration
type azurerm_pim_eligible_role_assignment__schedule
type azurerm_pim_eligible_role_assignment__ticket
type azurerm_pim_eligible_role_assignment__timeouts
type azurerm_pim_eligible_role_assignment

type t = private {
  id : string prop;
  justification : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

val azurerm_pim_eligible_role_assignment :
  ?id:string prop ->
  ?justification:string prop ->
  ?timeouts:azurerm_pim_eligible_role_assignment__timeouts ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  schedule:azurerm_pim_eligible_role_assignment__schedule list ->
  ticket:azurerm_pim_eligible_role_assignment__ticket list ->
  string ->
  t
