(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_admin_rule__destination
type azurerm_network_manager_admin_rule__source
type azurerm_network_manager_admin_rule__timeouts
type azurerm_network_manager_admin_rule

val azurerm_network_manager_admin_rule :
  ?description:string ->
  ?destination_port_ranges:string list ->
  ?id:string ->
  ?source_port_ranges:string list ->
  ?timeouts:azurerm_network_manager_admin_rule__timeouts ->
  action:string ->
  admin_rule_collection_id:string ->
  direction:string ->
  name:string ->
  priority:float ->
  protocol:string ->
  destination:azurerm_network_manager_admin_rule__destination list ->
  source:azurerm_network_manager_admin_rule__source list ->
  string ->
  unit
