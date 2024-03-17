(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_gremlin_graph__autoscale_settings
type azurerm_cosmosdb_gremlin_graph__conflict_resolution_policy

type azurerm_cosmosdb_gremlin_graph__index_policy__composite_index__index

type azurerm_cosmosdb_gremlin_graph__index_policy__composite_index
type azurerm_cosmosdb_gremlin_graph__index_policy__spatial_index
type azurerm_cosmosdb_gremlin_graph__index_policy
type azurerm_cosmosdb_gremlin_graph__timeouts
type azurerm_cosmosdb_gremlin_graph__unique_key
type azurerm_cosmosdb_gremlin_graph

val azurerm_cosmosdb_gremlin_graph :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_gremlin_graph__timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  partition_key_path:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_gremlin_graph__autoscale_settings list ->
  conflict_resolution_policy:
    azurerm_cosmosdb_gremlin_graph__conflict_resolution_policy list ->
  index_policy:azurerm_cosmosdb_gremlin_graph__index_policy list ->
  unique_key:azurerm_cosmosdb_gremlin_graph__unique_key list ->
  string ->
  unit
