(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_connectivity_configuration__applies_to_group

type azurerm_network_manager_connectivity_configuration__hub
type azurerm_network_manager_connectivity_configuration__timeouts
type azurerm_network_manager_connectivity_configuration

val azurerm_network_manager_connectivity_configuration :
  ?delete_existing_peering_enabled:bool ->
  ?description:string ->
  ?global_mesh_enabled:bool ->
  ?timeouts:
    azurerm_network_manager_connectivity_configuration__timeouts ->
  connectivity_topology:string ->
  name:string ->
  network_manager_id:string ->
  applies_to_group:
    azurerm_network_manager_connectivity_configuration__applies_to_group
    list ->
  hub:azurerm_network_manager_connectivity_configuration__hub list ->
  string ->
  unit
