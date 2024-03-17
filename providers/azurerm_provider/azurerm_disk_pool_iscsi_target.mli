(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_iscsi_target__timeouts
type azurerm_disk_pool_iscsi_target

val azurerm_disk_pool_iscsi_target :
  ?id:string prop ->
  ?target_iqn:string prop ->
  ?timeouts:azurerm_disk_pool_iscsi_target__timeouts ->
  acl_mode:string prop ->
  disks_pool_id:string prop ->
  name:string prop ->
  string ->
  unit
