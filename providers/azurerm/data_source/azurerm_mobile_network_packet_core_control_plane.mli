(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}

type local_diagnostics_access = {
  authentication_type : string prop;  (** authentication_type *)
  https_server_certificate_url : string prop;
      (** https_server_certificate_url *)
}

type platform = {
  arc_kubernetes_cluster_id : string prop;
      (** arc_kubernetes_cluster_id *)
  custom_location_id : string prop;  (** custom_location_id *)
  edge_device_id : string prop;  (** edge_device_id *)
  stack_hci_cluster_id : string prop;  (** stack_hci_cluster_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_packet_core_control_plane

val azurerm_mobile_network_packet_core_control_plane :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mobile_network_packet_core_control_plane

val yojson_of_azurerm_mobile_network_packet_core_control_plane :
  azurerm_mobile_network_packet_core_control_plane -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  control_plane_access_ipv4_address : string prop;
  control_plane_access_ipv4_gateway : string prop;
  control_plane_access_ipv4_subnet : string prop;
  control_plane_access_name : string prop;
  core_network_technology : string prop;
  id : string prop;
  identity : identity list prop;
  interoperability_settings_json : string prop;
  local_diagnostics_access : local_diagnostics_access list prop;
  location : string prop;
  name : string prop;
  platform : platform list prop;
  resource_group_name : string prop;
  site_ids : string list prop;
  sku : string prop;
  software_version : string prop;
  tags : (string * string) list prop;
  user_equipment_mtu_in_bytes : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
