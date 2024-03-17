(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_packet_capture__filter
type azurerm_network_packet_capture__storage_location
type azurerm_network_packet_capture__timeouts
type azurerm_network_packet_capture

val azurerm_network_packet_capture :
  ?id:string prop ->
  ?maximum_bytes_per_packet:float prop ->
  ?maximum_bytes_per_session:float prop ->
  ?maximum_capture_duration:float prop ->
  ?timeouts:azurerm_network_packet_capture__timeouts ->
  name:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  target_resource_id:string prop ->
  filter:azurerm_network_packet_capture__filter list ->
  storage_location:
    azurerm_network_packet_capture__storage_location list ->
  string ->
  unit
