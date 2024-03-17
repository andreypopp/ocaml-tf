(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_virtual_network_rule__timeouts
type azurerm_mariadb_virtual_network_rule

val azurerm_mariadb_virtual_network_rule :
  ?id:string ->
  ?timeouts:azurerm_mariadb_virtual_network_rule__timeouts ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  subnet_id:string ->
  string ->
  unit
