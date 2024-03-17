(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_cassandra_keyspace__autoscale_settings
type azurerm_cosmosdb_cassandra_keyspace__timeouts
type azurerm_cosmosdb_cassandra_keyspace

type t = private {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val azurerm_cosmosdb_cassandra_keyspace :
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:azurerm_cosmosdb_cassandra_keyspace__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:
    azurerm_cosmosdb_cassandra_keyspace__autoscale_settings list ->
  string ->
  t
