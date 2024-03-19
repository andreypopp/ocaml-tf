(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type system_indexes = {
  keys : string prop list;  (** keys *)
  unique : bool prop;  (** unique *)
}

type autoscale_settings

val autoscale_settings :
  ?max_throughput:float prop -> unit -> autoscale_settings

type index

val index :
  ?unique:bool prop -> keys:string prop list -> unit -> index

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_mongo_collection

val azurerm_cosmosdb_mongo_collection :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl_seconds:float prop ->
  ?id:string prop ->
  ?shard_key:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  index:index list ->
  unit ->
  azurerm_cosmosdb_mongo_collection

val yojson_of_azurerm_cosmosdb_mongo_collection :
  azurerm_cosmosdb_mongo_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl_seconds : float prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  shard_key : string prop;
  system_indexes : system_indexes list prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?analytical_storage_ttl:float prop ->
  ?default_ttl_seconds:float prop ->
  ?id:string prop ->
  ?shard_key:string prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  index:index list ->
  string ->
  t
