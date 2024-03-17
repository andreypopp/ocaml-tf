(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_connectivity_configuration__applies_to_group

type azurerm_network_manager_connectivity_configuration__hub
type azurerm_network_manager_connectivity_configuration__timeouts
type azurerm_network_manager_connectivity_configuration

type t = private {
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val azurerm_network_manager_connectivity_configuration :
  ?delete_existing_peering_enabled:bool prop ->
  ?description:string prop ->
  ?global_mesh_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_network_manager_connectivity_configuration__timeouts ->
  connectivity_topology:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  applies_to_group:
    azurerm_network_manager_connectivity_configuration__applies_to_group
    list ->
  hub:azurerm_network_manager_connectivity_configuration__hub list ->
  string ->
  t
