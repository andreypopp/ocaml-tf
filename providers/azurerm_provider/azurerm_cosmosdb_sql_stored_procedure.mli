(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_stored_procedure__timeouts
type azurerm_cosmosdb_sql_stored_procedure

val azurerm_cosmosdb_sql_stored_procedure :
  ?timeouts:azurerm_cosmosdb_sql_stored_procedure__timeouts ->
  account_name:string ->
  body:string ->
  container_name:string ->
  database_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
