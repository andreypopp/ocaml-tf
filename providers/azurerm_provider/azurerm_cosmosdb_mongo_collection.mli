(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_mongo_collection__autoscale_settings
type azurerm_cosmosdb_mongo_collection__index
type azurerm_cosmosdb_mongo_collection__timeouts

type azurerm_cosmosdb_mongo_collection__system_indexes = {
  keys : string prop list;  (** keys *)
  unique : bool prop;  (** unique *)
}

type azurerm_cosmosdb_mongo_collection

val azurerm_cosmosdb_mongo_collection :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl_seconds:float prop ->
  ?id:string prop ->
  ?shard_key:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_mongo_collection__timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_mongo_collection__autoscale_settings list ->
  index:azurerm_cosmosdb_mongo_collection__index list ->
  string ->
  unit
