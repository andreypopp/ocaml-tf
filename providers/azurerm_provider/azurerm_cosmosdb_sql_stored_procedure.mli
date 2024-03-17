(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_stored_procedure__timeouts
type azurerm_cosmosdb_sql_stored_procedure

val azurerm_cosmosdb_sql_stored_procedure :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_stored_procedure__timeouts ->
  account_name:string prop ->
  body:string prop ->
  container_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
