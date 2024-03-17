(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range

type azurerm_mobile_network_attached_data_network__network_address_port_translation

type azurerm_mobile_network_attached_data_network__timeouts
type azurerm_mobile_network_attached_data_network

val azurerm_mobile_network_attached_data_network :
  ?id:string ->
  ?tags:(string * string) list ->
  ?user_equipment_address_pool_prefixes:string list ->
  ?user_equipment_static_address_pool_prefixes:string list ->
  ?user_plane_access_ipv4_address:string ->
  ?user_plane_access_ipv4_gateway:string ->
  ?user_plane_access_ipv4_subnet:string ->
  ?user_plane_access_name:string ->
  ?timeouts:azurerm_mobile_network_attached_data_network__timeouts ->
  dns_addresses:string list ->
  location:string ->
  mobile_network_data_network_name:string ->
  mobile_network_packet_core_data_plane_id:string ->
  network_address_port_translation:
    azurerm_mobile_network_attached_data_network__network_address_port_translation
    list ->
  string ->
  unit
