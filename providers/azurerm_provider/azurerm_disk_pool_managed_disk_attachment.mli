(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_pool_managed_disk_attachment__timeouts
type azurerm_disk_pool_managed_disk_attachment

type t = private {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

val azurerm_disk_pool_managed_disk_attachment :
  ?id:string prop ->
  ?timeouts:azurerm_disk_pool_managed_disk_attachment__timeouts ->
  disk_pool_id:string prop ->
  managed_disk_id:string prop ->
  string ->
  t
