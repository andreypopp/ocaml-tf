(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_data_disk_attachment__timeouts
type azurerm_virtual_machine_data_disk_attachment

val azurerm_virtual_machine_data_disk_attachment :
  ?create_option:string ->
  ?write_accelerator_enabled:bool ->
  ?timeouts:azurerm_virtual_machine_data_disk_attachment__timeouts ->
  caching:string ->
  lun:float ->
  managed_disk_id:string ->
  virtual_machine_id:string ->
  string ->
  unit
