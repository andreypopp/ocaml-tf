(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_dedicated_gateway__timeouts
type azurerm_cosmosdb_sql_dedicated_gateway

val azurerm_cosmosdb_sql_dedicated_gateway :
  ?id:string ->
  ?timeouts:azurerm_cosmosdb_sql_dedicated_gateway__timeouts ->
  cosmosdb_account_id:string ->
  instance_count:float ->
  instance_size:string ->
  string ->
  unit
