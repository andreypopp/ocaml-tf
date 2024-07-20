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

type azurerm_virtual_machine_implicit_data_disk_from_source

val azurerm_virtual_machine_implicit_data_disk_from_source :
  ?caching:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  disk_size_gb:float prop ->
  lun:float prop ->
  name:string prop ->
  source_resource_id:string prop ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_virtual_machine_implicit_data_disk_from_source

val yojson_of_azurerm_virtual_machine_implicit_data_disk_from_source :
  azurerm_virtual_machine_implicit_data_disk_from_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  caching : string prop;
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop;
  lun : float prop;
  name : string prop;
  source_resource_id : string prop;
  virtual_machine_id : string prop;
  write_accelerator_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?caching:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  disk_size_gb:float prop ->
  lun:float prop ->
  name:string prop ->
  source_resource_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?caching:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  disk_size_gb:float prop ->
  lun:float prop ->
  name:string prop ->
  source_resource_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
