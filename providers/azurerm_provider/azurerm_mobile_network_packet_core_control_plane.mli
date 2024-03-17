(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mobile_network_packet_core_control_plane__identity

type azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access

type azurerm_mobile_network_packet_core_control_plane__platform
type azurerm_mobile_network_packet_core_control_plane__timeouts
type azurerm_mobile_network_packet_core_control_plane

type t = private {
  control_plane_access_ipv4_address : string prop;
  control_plane_access_ipv4_gateway : string prop;
  control_plane_access_ipv4_subnet : string prop;
  control_plane_access_name : string prop;
  core_network_technology : string prop;
  id : string prop;
  interoperability_settings_json : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  site_ids : string list prop;
  sku : string prop;
  software_version : string prop;
  tags : (string * string) list prop;
  user_equipment_mtu_in_bytes : float prop;
}

val azurerm_mobile_network_packet_core_control_plane :
  ?control_plane_access_ipv4_address:string prop ->
  ?control_plane_access_ipv4_gateway:string prop ->
  ?control_plane_access_ipv4_subnet:string prop ->
  ?control_plane_access_name:string prop ->
  ?core_network_technology:string prop ->
  ?id:string prop ->
  ?interoperability_settings_json:string prop ->
  ?software_version:string prop ->
  ?tags:(string * string prop) list ->
  ?user_equipment_mtu_in_bytes:float prop ->
  ?timeouts:
    azurerm_mobile_network_packet_core_control_plane__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  site_ids:string prop list ->
  sku:string prop ->
  identity:
    azurerm_mobile_network_packet_core_control_plane__identity list ->
  local_diagnostics_access:
    azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access
    list ->
  platform:
    azurerm_mobile_network_packet_core_control_plane__platform list ->
  string ->
  t
