(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_registry_agent_pool

val azurerm_container_registry_agent_pool :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?tags:(string * string prop) list ->
  ?tier:string prop ->
  ?virtual_network_subnet_id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_registry_agent_pool

val yojson_of_azurerm_container_registry_agent_pool :
  azurerm_container_registry_agent_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_registry_name : string prop;
  id : string prop;
  instance_count : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  virtual_network_subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?tags:(string * string prop) list ->
  ?tier:string prop ->
  ?virtual_network_subnet_id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?tags:(string * string prop) list ->
  ?tier:string prop ->
  ?virtual_network_subnet_id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
