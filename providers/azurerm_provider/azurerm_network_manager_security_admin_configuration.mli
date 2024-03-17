(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_security_admin_configuration__timeouts
type azurerm_network_manager_security_admin_configuration

val azurerm_network_manager_security_admin_configuration :
  ?apply_on_network_intent_policy_based_services:string list ->
  ?description:string ->
  ?timeouts:
    azurerm_network_manager_security_admin_configuration__timeouts ->
  name:string ->
  network_manager_id:string ->
  string ->
  unit
