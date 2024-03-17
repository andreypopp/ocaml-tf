(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range

type azurerm_mobile_network_attached_data_network__network_address_port_translation

type azurerm_mobile_network_attached_data_network__timeouts
type azurerm_mobile_network_attached_data_network

type t = private {
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

val azurerm_mobile_network_attached_data_network :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_equipment_address_pool_prefixes:string prop list ->
  ?user_equipment_static_address_pool_prefixes:string prop list ->
  ?user_plane_access_ipv4_address:string prop ->
  ?user_plane_access_ipv4_gateway:string prop ->
  ?user_plane_access_ipv4_subnet:string prop ->
  ?user_plane_access_name:string prop ->
  ?timeouts:azurerm_mobile_network_attached_data_network__timeouts ->
  dns_addresses:string prop list ->
  location:string prop ->
  mobile_network_data_network_name:string prop ->
  mobile_network_packet_core_data_plane_id:string prop ->
  network_address_port_translation:
    azurerm_mobile_network_attached_data_network__network_address_port_translation
    list ->
  string ->
  t
