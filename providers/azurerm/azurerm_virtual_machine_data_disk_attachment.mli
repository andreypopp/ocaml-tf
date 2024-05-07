(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine_data_disk_attachment

val azurerm_virtual_machine_data_disk_attachment :
  ?create_option:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  caching:string prop ->
  lun:float prop ->
  managed_disk_id:string prop ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_virtual_machine_data_disk_attachment

val yojson_of_azurerm_virtual_machine_data_disk_attachment :
  azurerm_virtual_machine_data_disk_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  caching : string prop;
  create_option : string prop;
  id : string prop;
  lun : float prop;
  managed_disk_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_option:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  caching:string prop ->
  lun:float prop ->
  managed_disk_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?create_option:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  caching:string prop ->
  lun:float prop ->
  managed_disk_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
