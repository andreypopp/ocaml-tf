(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_database__timeouts
type azurerm_mysql_database

val azurerm_mysql_database :
  ?id:string ->
  ?timeouts:azurerm_mysql_database__timeouts ->
  charset:string ->
  collation:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  string ->
  unit
