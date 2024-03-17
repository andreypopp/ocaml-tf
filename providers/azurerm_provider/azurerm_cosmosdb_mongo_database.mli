(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_database__autoscale_settings
type azurerm_cosmosdb_mongo_database__timeouts
type azurerm_cosmosdb_mongo_database

val azurerm_cosmosdb_mongo_database :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_mongo_database__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_mongo_database__autoscale_settings list ->
  string ->
  unit
