(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_data_disk_attachment__timeouts
type azurerm_virtual_machine_data_disk_attachment

val azurerm_virtual_machine_data_disk_attachment :
  ?create_option:string prop ->
  ?id:string prop ->
  ?write_accelerator_enabled:bool prop ->
  ?timeouts:azurerm_virtual_machine_data_disk_attachment__timeouts ->
  caching:string prop ->
  lun:float prop ->
  managed_disk_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  unit
