(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_table__autoscale_settings
type azurerm_cosmosdb_cassandra_table__schema__cluster_key
type azurerm_cosmosdb_cassandra_table__schema__column
type azurerm_cosmosdb_cassandra_table__schema__partition_key
type azurerm_cosmosdb_cassandra_table__schema
type azurerm_cosmosdb_cassandra_table__timeouts
type azurerm_cosmosdb_cassandra_table

type t = private {
  analytical_storage_ttl : float prop;
  cassandra_keyspace_id : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  throughput : float prop;
}

val azurerm_cosmosdb_cassandra_table :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_cassandra_table__timeouts ->
  cassandra_keyspace_id:string prop ->
  name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_cassandra_table__autoscale_settings list ->
  schema:azurerm_cosmosdb_cassandra_table__schema list ->
  string ->
  t
