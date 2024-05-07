(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_address_port_translation__port_range

val network_address_port_translation__port_range :
  ?maximum:float prop ->
  ?minimum:float prop ->
  unit ->
  network_address_port_translation__port_range

type network_address_port_translation

val network_address_port_translation :
  ?icmp_pinhole_timeout_in_seconds:float prop ->
  ?pinhole_maximum_number:float prop ->
  ?tcp_pinhole_timeout_in_seconds:float prop ->
  ?tcp_port_reuse_minimum_hold_time_in_seconds:float prop ->
  ?udp_pinhole_timeout_in_seconds:float prop ->
  ?udp_port_reuse_minimum_hold_time_in_seconds:float prop ->
  ?port_range:network_address_port_translation__port_range list ->
  unit ->
  network_address_port_translation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mobile_network_attached_data_network

val azurerm_mobile_network_attached_data_network :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_equipment_address_pool_prefixes:string prop list ->
  ?user_equipment_static_address_pool_prefixes:string prop list ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?network_address_port_translation:
    network_address_port_translation list ->
  ?timeouts:timeouts ->
  dns_addresses:string prop list ->
  location:string prop ->
  mobile_network_data_network_name:string prop ->
  mobile_network_packet_core_data_plane_id:string prop ->
  unit ->
  azurerm_mobile_network_attached_data_network

val yojson_of_azurerm_mobile_network_attached_data_network :
  azurerm_mobile_network_attached_data_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_addresses : string list prop;
  id : string prop;
  location : string prop;
  mobile_network_data_network_name : string prop;
  mobile_network_packet_core_data_plane_id : string prop;
  tags : (string * string) list prop;
  user_equipment_address_pool_prefixes : string list prop;
  user_equipment_static_address_pool_prefixes : string list prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_equipment_address_pool_prefixes:string prop list ->
  ?user_equipment_static_address_pool_prefixes:string prop list ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?network_address_port_translation:
    network_address_port_translation list ->
  ?timeouts:timeouts ->
  dns_addresses:string prop list ->
  location:string prop ->
  mobile_network_data_network_name:string prop ->
  mobile_network_packet_core_data_plane_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_equipment_address_pool_prefixes:string prop list ->
  ?user_equipment_static_address_pool_prefixes:string prop list ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?network_address_port_translation:
    network_address_port_translation list ->
  ?timeouts:timeouts ->
  dns_addresses:string prop list ->
  location:string prop ->
  mobile_network_data_network_name:string prop ->
  mobile_network_packet_core_data_plane_id:string prop ->
  string ->
  t Tf_core.resource
