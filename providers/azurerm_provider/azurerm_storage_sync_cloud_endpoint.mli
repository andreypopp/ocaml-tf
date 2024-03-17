(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_sync_cloud_endpoint__timeouts
type azurerm_storage_sync_cloud_endpoint

val azurerm_storage_sync_cloud_endpoint :
  ?id:string prop ->
  ?storage_account_tenant_id:string prop ->
  ?timeouts:azurerm_storage_sync_cloud_endpoint__timeouts ->
  file_share_name:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_sync_group_id:string prop ->
  string ->
  unit
