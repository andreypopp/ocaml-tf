(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_database__timeouts
type azurerm_mysql_database

val azurerm_mysql_database :
  ?id:string prop ->
  ?timeouts:azurerm_mysql_database__timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  unit
