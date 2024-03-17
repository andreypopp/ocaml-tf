(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_virtual_network_rule__timeouts
type azurerm_sql_virtual_network_rule

val azurerm_sql_virtual_network_rule :
  ?id:string prop ->
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  ?timeouts:azurerm_sql_virtual_network_rule__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  string ->
  unit
