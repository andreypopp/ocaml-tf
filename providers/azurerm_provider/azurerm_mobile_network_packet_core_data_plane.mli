(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_packet_core_data_plane__timeouts
type azurerm_mobile_network_packet_core_data_plane

val azurerm_mobile_network_packet_core_data_plane :
  ?id:string ->
  ?tags:(string * string) list ->
  ?user_plane_access_ipv4_address:string ->
  ?user_plane_access_ipv4_gateway:string ->
  ?user_plane_access_ipv4_subnet:string ->
  ?user_plane_access_name:string ->
  ?timeouts:azurerm_mobile_network_packet_core_data_plane__timeouts ->
  location:string ->
  mobile_network_packet_core_control_plane_id:string ->
  name:string ->
  string ->
  unit
