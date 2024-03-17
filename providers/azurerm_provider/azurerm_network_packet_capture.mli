(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_packet_capture__filter
type azurerm_network_packet_capture__storage_location
type azurerm_network_packet_capture__timeouts
type azurerm_network_packet_capture

val azurerm_network_packet_capture :
  ?maximum_bytes_per_packet:float ->
  ?maximum_bytes_per_session:float ->
  ?maximum_capture_duration:float ->
  ?timeouts:azurerm_network_packet_capture__timeouts ->
  name:string ->
  network_watcher_name:string ->
  resource_group_name:string ->
  target_resource_id:string ->
  filter:azurerm_network_packet_capture__filter list ->
  storage_location:
    azurerm_network_packet_capture__storage_location list ->
  string ->
  unit
