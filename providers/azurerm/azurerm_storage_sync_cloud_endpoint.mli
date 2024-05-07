(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_storage_sync_cloud_endpoint

val azurerm_storage_sync_cloud_endpoint :
  ?id:string prop ->
  ?storage_account_tenant_id:string prop ->
  ?timeouts:timeouts ->
  file_share_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_sync_group_id:string prop ->
  unit ->
  azurerm_storage_sync_cloud_endpoint

val yojson_of_azurerm_storage_sync_cloud_endpoint :
  azurerm_storage_sync_cloud_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  file_share_name : string prop;
  id : string prop;
  name : string prop;
  storage_account_id : string prop;
  storage_account_tenant_id : string prop;
  storage_sync_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?storage_account_tenant_id:string prop ->
  ?timeouts:timeouts ->
  file_share_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_sync_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?storage_account_tenant_id:string prop ->
  ?timeouts:timeouts ->
  file_share_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_sync_group_id:string prop ->
  string ->
  t Tf_core.resource
