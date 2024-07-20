(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type applies_to_group = {
  global_mesh_enabled : bool prop;  (** global_mesh_enabled *)
  group_connectivity : string prop;  (** group_connectivity *)
  network_group_id : string prop;  (** network_group_id *)
  use_hub_gateway : bool prop;  (** use_hub_gateway *)
}

type hub = {
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_network_manager_connectivity_configuration

val azurerm_network_manager_connectivity_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  unit ->
  azurerm_network_manager_connectivity_configuration

val yojson_of_azurerm_network_manager_connectivity_configuration :
  azurerm_network_manager_connectivity_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  applies_to_group : applies_to_group list prop;
  connectivity_topology : string prop;
  delete_existing_peering_enabled : bool prop;
  description : string prop;
  global_mesh_enabled : bool prop;
  hub : hub list prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t Tf_core.resource
