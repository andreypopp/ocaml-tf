(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server_database__timeouts
type azurerm_postgresql_flexible_server_database

val azurerm_postgresql_flexible_server_database :
  ?charset:string ->
  ?collation:string ->
  ?id:string ->
  ?timeouts:azurerm_postgresql_flexible_server_database__timeouts ->
  name:string ->
  server_id:string ->
  string ->
  unit
