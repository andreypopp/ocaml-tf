(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_packet_core_data_plane__timeouts
type azurerm_mobile_network_packet_core_data_plane

type t = private {
  id : string prop;
  location : string prop;
  mobile_network_packet_core_control_plane_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

val azurerm_mobile_network_packet_core_data_plane :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?timeouts:azurerm_mobile_network_packet_core_data_plane__timeouts ->
  location:string prop ->
  mobile_network_packet_core_control_plane_id:string prop ->
  name:string prop ->
  string ->
  t
