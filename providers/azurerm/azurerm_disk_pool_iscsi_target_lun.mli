(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target_lun__timeouts
type azurerm_disk_pool_iscsi_target_lun

type t = private {
  disk_pool_managed_disk_attachment_id : string prop;
  id : string prop;
  iscsi_target_id : string prop;
  lun : float prop;
  name : string prop;
}

val azurerm_disk_pool_iscsi_target_lun :
  ?id:string prop ->
  ?timeouts:azurerm_disk_pool_iscsi_target_lun__timeouts ->
  disk_pool_managed_disk_attachment_id:string prop ->
  iscsi_target_id:string prop ->
  name:string prop ->
  string ->
  t
