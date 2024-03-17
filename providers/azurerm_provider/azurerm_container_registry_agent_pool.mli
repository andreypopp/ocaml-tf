(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_agent_pool__timeouts
type azurerm_container_registry_agent_pool

val azurerm_container_registry_agent_pool :
  ?instance_count:float ->
  ?tags:(string * string) list ->
  ?tier:string ->
  ?virtual_network_subnet_id:string ->
  ?timeouts:azurerm_container_registry_agent_pool__timeouts ->
  container_registry_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
