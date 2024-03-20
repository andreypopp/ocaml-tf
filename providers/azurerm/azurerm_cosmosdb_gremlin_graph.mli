(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscale_settings

val autoscale_settings :
  ?max_throughput:float prop -> unit -> autoscale_settings

type conflict_resolution_policy

val conflict_resolution_policy :
  ?conflict_resolution_path:string prop ->
  ?conflict_resolution_procedure:string prop ->
  mode:string prop ->
  unit ->
  conflict_resolution_policy

type index_policy__composite_index__index

val index_policy__composite_index__index :
  order:string prop ->
  path:string prop ->
  unit ->
  index_policy__composite_index__index

type index_policy__composite_index

val index_policy__composite_index :
  index:index_policy__composite_index__index list ->
  unit ->
  index_policy__composite_index

type index_policy__spatial_index

val index_policy__spatial_index :
  path:string prop -> unit -> index_policy__spatial_index

type index_policy

val index_policy :
  ?automatic:bool prop ->
  ?excluded_paths:string prop list ->
  ?included_paths:string prop list ->
  indexing_mode:string prop ->
  composite_index:index_policy__composite_index list ->
  spatial_index:index_policy__spatial_index list ->
  unit ->
  index_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type unique_key

val unique_key : paths:string prop list -> unit -> unique_key

type azurerm_cosmosdb_gremlin_graph

val azurerm_cosmosdb_gremlin_graph :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  partition_key_path:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  conflict_resolution_policy:conflict_resolution_policy list ->
  index_policy:index_policy list ->
  unique_key:unique_key list ->
  unit ->
  azurerm_cosmosdb_gremlin_graph

val yojson_of_azurerm_cosmosdb_gremlin_graph :
  azurerm_cosmosdb_gremlin_graph -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  partition_key_path : string prop;
  partition_key_version : float prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  partition_key_path:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  conflict_resolution_policy:conflict_resolution_policy list ->
  index_policy:index_policy list ->
  unique_key:unique_key list ->
  string ->
  t

val make :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  partition_key_path:string prop ->
  resource_group_name:string prop ->
  autoscale_settings:autoscale_settings list ->
  conflict_resolution_policy:conflict_resolution_policy list ->
  index_policy:index_policy list ->
  unique_key:unique_key list ->
  string ->
  t Tf_core.resource
