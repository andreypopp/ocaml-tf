(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_virtual_network_rule__timeouts
type azurerm_postgresql_virtual_network_rule

val azurerm_postgresql_virtual_network_rule :
  ?id:string ->
  ?ignore_missing_vnet_service_endpoint:bool ->
  ?timeouts:azurerm_postgresql_virtual_network_rule__timeouts ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  subnet_id:string ->
  string ->
  unit
