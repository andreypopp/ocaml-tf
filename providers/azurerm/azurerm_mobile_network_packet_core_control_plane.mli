(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type local_diagnostics_access

val local_diagnostics_access :
  ?https_server_certificate_url:string prop ->
  authentication_type:string prop ->
  unit ->
  local_diagnostics_access

type platform

val platform :
  ?arc_kubernetes_cluster_id:string prop ->
  ?custom_location_id:string prop ->
  ?edge_device_id:string prop ->
  ?stack_hci_cluster_id:string prop ->
  type_:string prop ->
  unit ->
  platform

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mobile_network_packet_core_control_plane

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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  site_ids:string prop list ->
  sku:string prop ->
  identity:identity list ->
  local_diagnostics_access:local_diagnostics_access list ->
  platform:platform list ->
  unit ->
  azurerm_mobile_network_packet_core_control_plane

val yojson_of_azurerm_mobile_network_packet_core_control_plane :
  azurerm_mobile_network_packet_core_control_plane -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  site_ids:string prop list ->
  sku:string prop ->
  identity:identity list ->
  local_diagnostics_access:local_diagnostics_access list ->
  platform:platform list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  site_ids:string prop list ->
  sku:string prop ->
  identity:identity list ->
  local_diagnostics_access:local_diagnostics_access list ->
  platform:platform list ->
  string ->
  t Tf_core.resource
