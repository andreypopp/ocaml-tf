(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_virtual_network_rule__timeouts
type azurerm_mssql_virtual_network_rule

val azurerm_mssql_virtual_network_rule :
  ?id:string prop ->
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  ?timeouts:azurerm_mssql_virtual_network_rule__timeouts ->
  name:string prop ->
  server_id:string prop ->
  subnet_id:string prop ->
  string ->
  unit
