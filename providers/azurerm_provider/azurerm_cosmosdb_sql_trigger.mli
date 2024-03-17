(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_trigger__timeouts
type azurerm_cosmosdb_sql_trigger

val azurerm_cosmosdb_sql_trigger :
  ?timeouts:azurerm_cosmosdb_sql_trigger__timeouts ->
  body:string ->
  container_id:string ->
  name:string ->
  operation:string ->
  type_:string ->
  string ->
  unit
