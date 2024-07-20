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

type indexing_policy__composite_index__index

val indexing_policy__composite_index__index :
  order:string prop ->
  path:string prop ->
  unit ->
  indexing_policy__composite_index__index

type indexing_policy__composite_index

val indexing_policy__composite_index :
  index:indexing_policy__composite_index__index list ->
  unit ->
  indexing_policy__composite_index

type indexing_policy__excluded_path

val indexing_policy__excluded_path :
  path:string prop -> unit -> indexing_policy__excluded_path

type indexing_policy__included_path

val indexing_policy__included_path :
  path:string prop -> unit -> indexing_policy__included_path

type indexing_policy__spatial_index

val indexing_policy__spatial_index :
  path:string prop -> unit -> indexing_policy__spatial_index

type indexing_policy

val indexing_policy :
  ?indexing_mode:string prop ->
  ?composite_index:indexing_policy__composite_index list ->
  ?excluded_path:indexing_policy__excluded_path list ->
  ?included_path:indexing_policy__included_path list ->
  ?spatial_index:indexing_policy__spatial_index list ->
  unit ->
  indexing_policy

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

type azurerm_cosmosdb_sql_container

val azurerm_cosmosdb_sql_container :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_kind:string prop ->
  ?partition_key_path:string prop ->
  ?partition_key_paths:string prop list ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?conflict_resolution_policy:conflict_resolution_policy list ->
  ?indexing_policy:indexing_policy list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unique_key:unique_key list ->
  unit ->
  azurerm_cosmosdb_sql_container

val yojson_of_azurerm_cosmosdb_sql_container :
  azurerm_cosmosdb_sql_container -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  partition_key_kind : string prop;
  partition_key_path : string prop;
  partition_key_paths : string list prop;
  partition_key_version : float prop;
  resource_group_name : string prop;
  throughput : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_kind:string prop ->
  ?partition_key_path:string prop ->
  ?partition_key_paths:string prop list ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?conflict_resolution_policy:conflict_resolution_policy list ->
  ?indexing_policy:indexing_policy list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unique_key:unique_key list ->
  string ->
  t

val make :
  ?analytical_storage_ttl:float prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?partition_key_kind:string prop ->
  ?partition_key_path:string prop ->
  ?partition_key_paths:string prop list ->
  ?partition_key_version:float prop ->
  ?throughput:float prop ->
  ?autoscale_settings:autoscale_settings list ->
  ?conflict_resolution_policy:conflict_resolution_policy list ->
  ?indexing_policy:indexing_policy list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unique_key:unique_key list ->
  string ->
  t Tf_core.resource
