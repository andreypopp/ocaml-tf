(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_admin_rule__destination
type azurerm_network_manager_admin_rule__source
type azurerm_network_manager_admin_rule__timeouts
type azurerm_network_manager_admin_rule

type t = private {
  action : string prop;
  admin_rule_collection_id : string prop;
  description : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_port_ranges : string list prop;
}

val azurerm_network_manager_admin_rule :
  ?description:string prop ->
  ?destination_port_ranges:string prop list ->
  ?id:string prop ->
  ?source_port_ranges:string prop list ->
  ?timeouts:azurerm_network_manager_admin_rule__timeouts ->
  action:string prop ->
  admin_rule_collection_id:string prop ->
  direction:string prop ->
  name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  destination:azurerm_network_manager_admin_rule__destination list ->
  source:azurerm_network_manager_admin_rule__source list ->
  string ->
  t
