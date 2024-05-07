(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale_settings

val autoscale_settings :
  ?max_throughput:float prop -> unit -> autoscale_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_cassandra_keyspace

val azurerm_cosmosdb_cassandra_keyspace :
  ?id:string prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cosmosdb_cassandra_keyspace

val yojson_of_azurerm_cosmosdb_cassandra_keyspace :
  azurerm_cosmosdb_cassandra_keyspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
