(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type servers = {
  fqdn : string prop;  (** fqdn *)
  name : string prop;  (** name *)
}

type maintenance_window

val maintenance_window :
  ?day_of_week:float prop ->
  ?start_hour:float prop ->
  ?start_minute:float prop ->
  unit ->
  maintenance_window

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cosmosdb_postgresql_cluster

val azurerm_cosmosdb_postgresql_cluster :
  ?administrator_login_password:string prop ->
  ?citus_version:string prop ->
  ?coordinator_public_ip_access_enabled:bool prop ->
  ?coordinator_server_edition:string prop ->
  ?coordinator_storage_quota_in_mb:float prop ->
  ?coordinator_vcore_count:float prop ->
  ?ha_enabled:bool prop ->
  ?id:string prop ->
  ?node_public_ip_access_enabled:bool prop ->
  ?node_server_edition:string prop ->
  ?node_storage_quota_in_mb:float prop ->
  ?node_vcores:float prop ->
  ?point_in_time_in_utc:string prop ->
  ?preferred_primary_zone:string prop ->
  ?shards_on_coordinator_enabled:bool prop ->
  ?source_location:string prop ->
  ?source_resource_id:string prop ->
  ?sql_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?maintenance_window:maintenance_window list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cosmosdb_postgresql_cluster

val yojson_of_azurerm_cosmosdb_postgresql_cluster :
  azurerm_cosmosdb_postgresql_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login_password : string prop;
  citus_version : string prop;
  coordinator_public_ip_access_enabled : bool prop;
  coordinator_server_edition : string prop;
  coordinator_storage_quota_in_mb : float prop;
  coordinator_vcore_count : float prop;
  earliest_restore_time : string prop;
  ha_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  node_count : float prop;
  node_public_ip_access_enabled : bool prop;
  node_server_edition : string prop;
  node_storage_quota_in_mb : float prop;
  node_vcores : float prop;
  point_in_time_in_utc : string prop;
  preferred_primary_zone : string prop;
  resource_group_name : string prop;
  servers : servers list prop;
  shards_on_coordinator_enabled : bool prop;
  source_location : string prop;
  source_resource_id : string prop;
  sql_version : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?administrator_login_password:string prop ->
  ?citus_version:string prop ->
  ?coordinator_public_ip_access_enabled:bool prop ->
  ?coordinator_server_edition:string prop ->
  ?coordinator_storage_quota_in_mb:float prop ->
  ?coordinator_vcore_count:float prop ->
  ?ha_enabled:bool prop ->
  ?id:string prop ->
  ?node_public_ip_access_enabled:bool prop ->
  ?node_server_edition:string prop ->
  ?node_storage_quota_in_mb:float prop ->
  ?node_vcores:float prop ->
  ?point_in_time_in_utc:string prop ->
  ?preferred_primary_zone:string prop ->
  ?shards_on_coordinator_enabled:bool prop ->
  ?source_location:string prop ->
  ?source_resource_id:string prop ->
  ?sql_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?maintenance_window:maintenance_window list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?administrator_login_password:string prop ->
  ?citus_version:string prop ->
  ?coordinator_public_ip_access_enabled:bool prop ->
  ?coordinator_server_edition:string prop ->
  ?coordinator_storage_quota_in_mb:float prop ->
  ?coordinator_vcore_count:float prop ->
  ?ha_enabled:bool prop ->
  ?id:string prop ->
  ?node_public_ip_access_enabled:bool prop ->
  ?node_server_edition:string prop ->
  ?node_storage_quota_in_mb:float prop ->
  ?node_vcores:float prop ->
  ?point_in_time_in_utc:string prop ->
  ?preferred_primary_zone:string prop ->
  ?shards_on_coordinator_enabled:bool prop ->
  ?source_location:string prop ->
  ?source_resource_id:string prop ->
  ?sql_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?maintenance_window:maintenance_window list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
