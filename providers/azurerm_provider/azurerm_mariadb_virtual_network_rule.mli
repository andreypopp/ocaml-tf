(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_virtual_network_rule__timeouts
type azurerm_mariadb_virtual_network_rule

val azurerm_mariadb_virtual_network_rule :
  ?id:string prop ->
  ?timeouts:azurerm_mariadb_virtual_network_rule__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  subnet_id:string prop ->
  string ->
  unit
