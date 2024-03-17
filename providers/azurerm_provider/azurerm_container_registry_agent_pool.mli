(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_agent_pool__timeouts
type azurerm_container_registry_agent_pool

val azurerm_container_registry_agent_pool :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?tags:(string * string prop) list ->
  ?tier:string prop ->
  ?virtual_network_subnet_id:string prop ->
  ?timeouts:azurerm_container_registry_agent_pool__timeouts ->
  container_registry_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
