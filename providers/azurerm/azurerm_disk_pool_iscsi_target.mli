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

type azurerm_disk_pool_iscsi_target

val azurerm_disk_pool_iscsi_target :
  ?id:string prop ->
  ?target_iqn:string prop ->
  ?timeouts:timeouts ->
  acl_mode:string prop ->
  disks_pool_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_disk_pool_iscsi_target

val yojson_of_azurerm_disk_pool_iscsi_target :
  azurerm_disk_pool_iscsi_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acl_mode : string prop;
  disks_pool_id : string prop;
  endpoints : string list prop;
  id : string prop;
  name : string prop;
  port : float prop;
  target_iqn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?target_iqn:string prop ->
  ?timeouts:timeouts ->
  acl_mode:string prop ->
  disks_pool_id:string prop ->
  name:string prop ->
  string ->
  t
