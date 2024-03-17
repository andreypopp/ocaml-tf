(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_admin_rule_collection__timeouts
type azurerm_network_manager_admin_rule_collection

val azurerm_network_manager_admin_rule_collection :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_network_manager_admin_rule_collection__timeouts ->
  name:string ->
  network_group_ids:string list ->
  security_admin_configuration_id:string ->
  string ->
  unit
