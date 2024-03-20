(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_disk_pool_iscsi_target_lun

val azurerm_disk_pool_iscsi_target_lun :
  ?id:string prop ->
  ?timeouts:timeouts ->
  disk_pool_managed_disk_attachment_id:string prop ->
  iscsi_target_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_disk_pool_iscsi_target_lun

val yojson_of_azurerm_disk_pool_iscsi_target_lun :
  azurerm_disk_pool_iscsi_target_lun -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disk_pool_managed_disk_attachment_id : string prop;
  id : string prop;
  iscsi_target_id : string prop;
  lun : float prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  disk_pool_managed_disk_attachment_id:string prop ->
  iscsi_target_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  disk_pool_managed_disk_attachment_id:string prop ->
  iscsi_target_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
