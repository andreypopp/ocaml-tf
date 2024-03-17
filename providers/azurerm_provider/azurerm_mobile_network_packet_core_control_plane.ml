(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_packet_core_control_plane__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__identity *)

type azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access = {
  authentication_type : string;  (** authentication_type *)
  https_server_certificate_url : string option; [@option]
      (** https_server_certificate_url *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access *)

type azurerm_mobile_network_packet_core_control_plane__platform = {
  arc_kubernetes_cluster_id : string option; [@option]
      (** arc_kubernetes_cluster_id *)
  custom_location_id : string option; [@option]
      (** custom_location_id *)
  edge_device_id : string option; [@option]  (** edge_device_id *)
  stack_hci_cluster_id : string option; [@option]
      (** stack_hci_cluster_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__platform *)

type azurerm_mobile_network_packet_core_control_plane__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__timeouts *)

type azurerm_mobile_network_packet_core_control_plane = {
  control_plane_access_ipv4_address : string option; [@option]
      (** control_plane_access_ipv4_address *)
  control_plane_access_ipv4_gateway : string option; [@option]
      (** control_plane_access_ipv4_gateway *)
  control_plane_access_ipv4_subnet : string option; [@option]
      (** control_plane_access_ipv4_subnet *)
  control_plane_access_name : string option; [@option]
      (** control_plane_access_name *)
  core_network_technology : string option; [@option]
      (** core_network_technology *)
  id : string option; [@option]  (** id *)
  interoperability_settings_json : string option; [@option]
      (** interoperability_settings_json *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  site_ids : string list;  (** site_ids *)
  sku : string;  (** sku *)
  software_version : string option; [@option]
      (** software_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_equipment_mtu_in_bytes : float option; [@option]
      (** user_equipment_mtu_in_bytes *)
  identity :
    azurerm_mobile_network_packet_core_control_plane__identity list;
  local_diagnostics_access :
    azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access
    list;
  platform :
    azurerm_mobile_network_packet_core_control_plane__platform list;
  timeouts :
    azurerm_mobile_network_packet_core_control_plane__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane *)

let azurerm_mobile_network_packet_core_control_plane
    ?control_plane_access_ipv4_address
    ?control_plane_access_ipv4_gateway
    ?control_plane_access_ipv4_subnet ?control_plane_access_name
    ?core_network_technology ?id ?interoperability_settings_json
    ?software_version ?tags ?user_equipment_mtu_in_bytes ?timeouts
    ~location ~name ~resource_group_name ~site_ids ~sku ~identity
    ~local_diagnostics_access ~platform __resource_id =
  let __resource_type =
    "azurerm_mobile_network_packet_core_control_plane"
  in
  let __resource =
    {
      control_plane_access_ipv4_address;
      control_plane_access_ipv4_gateway;
      control_plane_access_ipv4_subnet;
      control_plane_access_name;
      core_network_technology;
      id;
      interoperability_settings_json;
      location;
      name;
      resource_group_name;
      site_ids;
      sku;
      software_version;
      tags;
      user_equipment_mtu_in_bytes;
      identity;
      local_diagnostics_access;
      platform;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_packet_core_control_plane
       __resource);
  ()
