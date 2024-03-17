(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_sync_cloud_endpoint__timeouts
type azurerm_storage_sync_cloud_endpoint

val azurerm_storage_sync_cloud_endpoint :
  ?id:string ->
  ?storage_account_tenant_id:string ->
  ?timeouts:azurerm_storage_sync_cloud_endpoint__timeouts ->
  file_share_name:string ->
  name:string ->
  storage_account_id:string ->
  storage_sync_group_id:string ->
  string ->
  unit
