(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_sync_server_endpoint

val azurerm_storage_sync_server_endpoint :
  ?cloud_tiering_enabled:bool prop ->
  ?id:string prop ->
  ?initial_download_policy:string prop ->
  ?local_cache_mode:string prop ->
  ?tier_files_older_than_days:float prop ->
  ?volume_free_space_percent:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  registered_server_id:string prop ->
  server_local_path:string prop ->
  storage_sync_group_id:string prop ->
  unit ->
  azurerm_storage_sync_server_endpoint

val yojson_of_azurerm_storage_sync_server_endpoint :
  azurerm_storage_sync_server_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cloud_tiering_enabled : bool prop;
  id : string prop;
  initial_download_policy : string prop;
  local_cache_mode : string prop;
  name : string prop;
  registered_server_id : string prop;
  server_local_path : string prop;
  storage_sync_group_id : string prop;
  tier_files_older_than_days : float prop;
  volume_free_space_percent : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?cloud_tiering_enabled:bool prop ->
  ?id:string prop ->
  ?initial_download_policy:string prop ->
  ?local_cache_mode:string prop ->
  ?tier_files_older_than_days:float prop ->
  ?volume_free_space_percent:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  registered_server_id:string prop ->
  server_local_path:string prop ->
  storage_sync_group_id:string prop ->
  string ->
  t

val make :
  ?cloud_tiering_enabled:bool prop ->
  ?id:string prop ->
  ?initial_download_policy:string prop ->
  ?local_cache_mode:string prop ->
  ?tier_files_older_than_days:float prop ->
  ?volume_free_space_percent:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  registered_server_id:string prop ->
  server_local_path:string prop ->
  storage_sync_group_id:string prop ->
  string ->
  t Tf_core.resource
