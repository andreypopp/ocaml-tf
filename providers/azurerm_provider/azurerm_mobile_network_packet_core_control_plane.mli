(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_packet_core_control_plane__identity

type azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access

type azurerm_mobile_network_packet_core_control_plane__platform
type azurerm_mobile_network_packet_core_control_plane__timeouts
type azurerm_mobile_network_packet_core_control_plane

val azurerm_mobile_network_packet_core_control_plane :
  ?control_plane_access_ipv4_address:string ->
  ?control_plane_access_ipv4_gateway:string ->
  ?control_plane_access_ipv4_subnet:string ->
  ?control_plane_access_name:string ->
  ?core_network_technology:string ->
  ?interoperability_settings_json:string ->
  ?software_version:string ->
  ?tags:(string * string) list ->
  ?user_equipment_mtu_in_bytes:float ->
  ?timeouts:
    azurerm_mobile_network_packet_core_control_plane__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  site_ids:string list ->
  sku:string ->
  identity:
    azurerm_mobile_network_packet_core_control_plane__identity list ->
  local_diagnostics_access:
    azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access
    list ->
  platform:
    azurerm_mobile_network_packet_core_control_plane__platform list ->
  string ->
  unit
