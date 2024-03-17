(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target_lun__timeouts
type azurerm_disk_pool_iscsi_target_lun

val azurerm_disk_pool_iscsi_target_lun :
  ?id:string ->
  ?timeouts:azurerm_disk_pool_iscsi_target_lun__timeouts ->
  disk_pool_managed_disk_attachment_id:string ->
  iscsi_target_id:string ->
  name:string ->
  string ->
  unit
