(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_keyspace__autoscale_settings
type azurerm_cosmosdb_cassandra_keyspace__timeouts
type azurerm_cosmosdb_cassandra_keyspace

val azurerm_cosmosdb_cassandra_keyspace :
  ?id:string ->
  ?throughput:float ->
  ?timeouts:azurerm_cosmosdb_cassandra_keyspace__timeouts ->
  account_name:string ->
  name:string ->
  resource_group_name:string ->
  autoscale_settings:
    azurerm_cosmosdb_cassandra_keyspace__autoscale_settings list ->
  string ->
  unit
