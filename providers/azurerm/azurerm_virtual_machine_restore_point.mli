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

type azurerm_virtual_machine_restore_point

val azurerm_virtual_machine_restore_point :
  ?crash_consistency_mode_enabled:bool prop ->
  ?excluded_disks:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_machine_restore_point_collection_id:string prop ->
  unit ->
  azurerm_virtual_machine_restore_point

val yojson_of_azurerm_virtual_machine_restore_point :
  azurerm_virtual_machine_restore_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  crash_consistency_mode_enabled : bool prop;
  excluded_disks : string list prop;
  id : string prop;
  name : string prop;
  virtual_machine_restore_point_collection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?crash_consistency_mode_enabled:bool prop ->
  ?excluded_disks:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_machine_restore_point_collection_id:string prop ->
  string ->
  t

val make :
  ?crash_consistency_mode_enabled:bool prop ->
  ?excluded_disks:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_machine_restore_point_collection_id:string prop ->
  string ->
  t Tf_core.resource
