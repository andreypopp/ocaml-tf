(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_database__timeouts
type azurerm_postgresql_database

val azurerm_postgresql_database :
  ?timeouts:azurerm_postgresql_database__timeouts ->
  charset:string ->
  collation:string ->
  name:string ->
  resource_group_name:string ->
  server_name:string ->
  string ->
  unit
