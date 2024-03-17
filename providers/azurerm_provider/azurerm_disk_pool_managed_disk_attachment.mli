(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_managed_disk_attachment__timeouts
type azurerm_disk_pool_managed_disk_attachment

val azurerm_disk_pool_managed_disk_attachment :
  ?timeouts:azurerm_disk_pool_managed_disk_attachment__timeouts ->
  disk_pool_id:string ->
  managed_disk_id:string ->
  string ->
  unit
