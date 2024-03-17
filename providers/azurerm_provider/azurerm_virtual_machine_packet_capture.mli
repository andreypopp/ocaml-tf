(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_packet_capture__filter
type azurerm_virtual_machine_packet_capture__storage_location
type azurerm_virtual_machine_packet_capture__timeouts
type azurerm_virtual_machine_packet_capture

val azurerm_virtual_machine_packet_capture :
  ?maximum_bytes_per_packet:float ->
  ?maximum_bytes_per_session:float ->
  ?maximum_capture_duration_in_seconds:float ->
  ?timeouts:azurerm_virtual_machine_packet_capture__timeouts ->
  name:string ->
  network_watcher_id:string ->
  virtual_machine_id:string ->
  filter:azurerm_virtual_machine_packet_capture__filter list ->
  storage_location:
    azurerm_virtual_machine_packet_capture__storage_location list ->
  string ->
  unit
