(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_scale_set_packet_capture__filter
type azurerm_virtual_machine_scale_set_packet_capture__machine_scope

type azurerm_virtual_machine_scale_set_packet_capture__storage_location

type azurerm_virtual_machine_scale_set_packet_capture__timeouts
type azurerm_virtual_machine_scale_set_packet_capture

val azurerm_virtual_machine_scale_set_packet_capture :
  ?id:string prop ->
  ?maximum_bytes_per_packet:float prop ->
  ?maximum_bytes_per_session:float prop ->
  ?maximum_capture_duration_in_seconds:float prop ->
  ?timeouts:
    azurerm_virtual_machine_scale_set_packet_capture__timeouts ->
  name:string prop ->
  network_watcher_id:string prop ->
  virtual_machine_scale_set_id:string prop ->
  filter:
    azurerm_virtual_machine_scale_set_packet_capture__filter list ->
  machine_scope:
    azurerm_virtual_machine_scale_set_packet_capture__machine_scope
    list ->
  storage_location:
    azurerm_virtual_machine_scale_set_packet_capture__storage_location
    list ->
  string ->
  unit
