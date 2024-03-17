(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_database__timeouts
type azurerm_mariadb_database

val azurerm_mariadb_database :
  ?timeouts:azurerm_mariadb_database__timeouts ->
  charset:string ->
  collation:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  string ->
  unit
