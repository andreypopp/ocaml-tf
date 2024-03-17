(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_network_rule__timeouts
type azurerm_mssql_virtual_network_rule

val azurerm_mssql_virtual_network_rule :
  ?ignore_missing_vnet_service_endpoint:bool ->
  ?timeouts:azurerm_mssql_virtual_network_rule__timeouts ->
  name:string ->
  server_id:string ->
  subnet_id:string ->
  string ->
  unit
