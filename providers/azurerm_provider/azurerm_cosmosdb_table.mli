(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_table__autoscale_settings
type azurerm_cosmosdb_table__timeouts
type azurerm_cosmosdb_table

val azurerm_cosmosdb_table :
  ?id:string ->
  ?throughput:float ->
  ?timeouts:azurerm_cosmosdb_table__timeouts ->
  account_name:string ->
  name:string ->
  resource_group_name:string ->
  autoscale_settings:azurerm_cosmosdb_table__autoscale_settings list ->
  string ->
  unit
