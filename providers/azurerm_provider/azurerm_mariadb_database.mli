(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_database__timeouts
type azurerm_mariadb_database

val azurerm_mariadb_database :
  ?id:string prop ->
  ?timeouts:azurerm_mariadb_database__timeouts ->
  charset:string prop ->
  collation:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  string ->
  unit
