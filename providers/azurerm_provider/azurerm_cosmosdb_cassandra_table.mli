(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_table__autoscale_settings
type azurerm_cosmosdb_cassandra_table__schema__cluster_key
type azurerm_cosmosdb_cassandra_table__schema__column
type azurerm_cosmosdb_cassandra_table__schema__partition_key
type azurerm_cosmosdb_cassandra_table__schema
type azurerm_cosmosdb_cassandra_table__timeouts
type azurerm_cosmosdb_cassandra_table

val azurerm_cosmosdb_cassandra_table :
  ?analytical_storage_ttl:float ->
  ?timeouts:azurerm_cosmosdb_cassandra_table__timeouts ->
  cassandra_keyspace_id:string ->
  name:string ->
  autoscale_settings:
    azurerm_cosmosdb_cassandra_table__autoscale_settings list ->
  schema:azurerm_cosmosdb_cassandra_table__schema list ->
  string ->
  unit
