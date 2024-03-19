(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_disk_pool_managed_disk_attachment

val azurerm_disk_pool_managed_disk_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  disk_pool_id:string prop ->
  managed_disk_id:string prop ->
  unit ->
  azurerm_disk_pool_managed_disk_attachment

val yojson_of_azurerm_disk_pool_managed_disk_attachment :
  azurerm_disk_pool_managed_disk_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  disk_pool_id:string prop ->
  managed_disk_id:string prop ->
  string ->
  t
