(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type applies_to_group

val applies_to_group :
  ?global_mesh_enabled:bool prop ->
  ?use_hub_gateway:bool prop ->
  group_connectivity:string prop ->
  network_group_id:string prop ->
  unit ->
  applies_to_group

type hub

val hub :
  resource_id:string prop -> resource_type:string prop -> unit -> hub

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_manager_connectivity_configuration

val azurerm_network_manager_connectivity_configuration :
  ?delete_existing_peering_enabled:bool prop ->
  ?description:string prop ->
  ?global_mesh_enabled:bool prop ->
  ?id:string prop ->
  ?hub:hub list ->
  ?timeouts:timeouts ->
  connectivity_topology:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  applies_to_group:applies_to_group list ->
  unit ->
  azurerm_network_manager_connectivity_configuration

val yojson_of_azurerm_network_manager_connectivity_configuration :
  azurerm_network_manager_connectivity_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_existing_peering_enabled:bool prop ->
  ?description:string prop ->
  ?global_mesh_enabled:bool prop ->
  ?id:string prop ->
  ?hub:hub list ->
  ?timeouts:timeouts ->
  connectivity_topology:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  applies_to_group:applies_to_group list ->
  string ->
  t

val make :
  ?delete_existing_peering_enabled:bool prop ->
  ?description:string prop ->
  ?global_mesh_enabled:bool prop ->
  ?id:string prop ->
  ?hub:hub list ->
  ?timeouts:timeouts ->
  connectivity_topology:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  applies_to_group:applies_to_group list ->
  string ->
  t Tf_core.resource
