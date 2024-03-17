(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target__timeouts
type azurerm_disk_pool_iscsi_target

val azurerm_disk_pool_iscsi_target :
  ?target_iqn:string ->
  ?timeouts:azurerm_disk_pool_iscsi_target__timeouts ->
  acl_mode:string ->
  disks_pool_id:string ->
  name:string ->
  string ->
  unit
