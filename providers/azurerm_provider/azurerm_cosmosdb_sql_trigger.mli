(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_trigger__timeouts
type azurerm_cosmosdb_sql_trigger

val azurerm_cosmosdb_sql_trigger :
  ?id:string prop ->
  ?timeouts:azurerm_cosmosdb_sql_trigger__timeouts ->
  body:string prop ->
  container_id:string prop ->
  name:string prop ->
  operation:string prop ->
  type_:string prop ->
  string ->
  unit
