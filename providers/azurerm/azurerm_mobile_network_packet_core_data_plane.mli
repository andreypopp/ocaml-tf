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

type azurerm_mobile_network_packet_core_data_plane

val azurerm_mobile_network_packet_core_data_plane :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_packet_core_control_plane_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_packet_core_data_plane

val yojson_of_azurerm_mobile_network_packet_core_data_plane :
  azurerm_mobile_network_packet_core_data_plane -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  mobile_network_packet_core_control_plane_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_packet_core_control_plane_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  mobile_network_packet_core_control_plane_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
