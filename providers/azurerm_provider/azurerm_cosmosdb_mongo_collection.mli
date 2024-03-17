(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_collection__autoscale_settings
type azurerm_cosmosdb_mongo_collection__index
type azurerm_cosmosdb_mongo_collection__timeouts

type azurerm_cosmosdb_mongo_collection__system_indexes = {
  keys : string list;  (** keys *)
  unique : bool;  (** unique *)
}

type azurerm_cosmosdb_mongo_collection

val azurerm_cosmosdb_mongo_collection :
  ?analytical_storage_ttl:float ->
  ?default_ttl_seconds:float ->
  ?id:string ->
  ?shard_key:string ->
  ?throughput:float ->
  ?timeouts:azurerm_cosmosdb_mongo_collection__timeouts ->
  account_name:string ->
  database_name:string ->
  name:string ->
  resource_group_name:string ->
  autoscale_settings:
    azurerm_cosmosdb_mongo_collection__autoscale_settings list ->
  index:azurerm_cosmosdb_mongo_collection__index list ->
  string ->
  unit
