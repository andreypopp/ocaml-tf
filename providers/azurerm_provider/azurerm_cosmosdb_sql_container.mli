(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_sql_container__autoscale_settings
type azurerm_cosmosdb_sql_container__conflict_resolution_policy

type azurerm_cosmosdb_sql_container__indexing_policy__composite_index__index

type azurerm_cosmosdb_sql_container__indexing_policy__composite_index
type azurerm_cosmosdb_sql_container__indexing_policy__excluded_path
type azurerm_cosmosdb_sql_container__indexing_policy__included_path
type azurerm_cosmosdb_sql_container__indexing_policy__spatial_index
type azurerm_cosmosdb_sql_container__indexing_policy
type azurerm_cosmosdb_sql_container__timeouts
type azurerm_cosmosdb_sql_container__unique_key
type azurerm_cosmosdb_sql_container

val azurerm_cosmosdb_sql_container :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_sql_container__timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  partition_key_path:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_sql_container__autoscale_settings list ->
  conflict_resolution_policy:
    azurerm_cosmosdb_sql_container__conflict_resolution_policy list ->
  indexing_policy:
    azurerm_cosmosdb_sql_container__indexing_policy list ->
  unique_key:azurerm_cosmosdb_sql_container__unique_key list ->
  string ->
  unit
