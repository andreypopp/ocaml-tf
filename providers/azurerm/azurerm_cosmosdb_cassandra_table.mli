(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale_settings

val autoscale_settings :
  ?max_throughput:float prop -> unit -> autoscale_settings

type schema__cluster_key

val schema__cluster_key :
  name:string prop ->
  order_by:string prop ->
  unit ->
  schema__cluster_key

type schema__column

val schema__column :
  name:string prop -> type_:string prop -> unit -> schema__column

type schema__partition_key

val schema__partition_key :
  name:string prop -> unit -> schema__partition_key

type schema

val schema :
  cluster_key:schema__cluster_key list ->
  column:schema__column list ->
  partition_key:schema__partition_key list ->
  unit ->
  schema

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_cassandra_table

val azurerm_cosmosdb_cassandra_table :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  cassandra_keyspace_id:string prop ->
  name:string prop ->
  autoscale_settings:autoscale_settings list ->
  schema:schema list ->
  unit ->
  azurerm_cosmosdb_cassandra_table

val yojson_of_azurerm_cosmosdb_cassandra_table :
  azurerm_cosmosdb_cassandra_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  analytical_storage_ttl : float prop;
  cassandra_keyspace_id : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  cassandra_keyspace_id:string prop ->
  name:string prop ->
  autoscale_settings:autoscale_settings list ->
  schema:schema list ->
  string ->
  t

val make :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  cassandra_keyspace_id:string prop ->
  name:string prop ->
  autoscale_settings:autoscale_settings list ->
  schema:schema list ->
  string ->
  t Tf_core.resource
