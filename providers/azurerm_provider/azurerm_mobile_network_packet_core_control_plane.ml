(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_packet_core_control_plane__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__identity *)

type azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access = {
  authentication_type : string prop;  (** authentication_type *)
  https_server_certificate_url : string prop option; [@option]
      (** https_server_certificate_url *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__local_diagnostics_access *)

type azurerm_mobile_network_packet_core_control_plane__platform = {
  arc_kubernetes_cluster_id : string prop option; [@option]
      (** arc_kubernetes_cluster_id *)
  custom_location_id : string prop option; [@option]
      (** custom_location_id *)
  edge_device_id : string prop option; [@option]
      (** edge_device_id *)
  stack_hci_cluster_id : string prop option; [@option]
      (** stack_hci_cluster_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__platform *)

type azurerm_mobile_network_packet_core_control_plane__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_control_plane__timeouts *)

type azurerm_mobile_network_packet_core_control_plane = {
  control_plane_access_ipv4_address : string prop option; [@option]
      (** control_plane_access_ipv4_address *)
  control_plane_access_ipv4_gateway : string prop option; [@option]
      (** control_plane_access_ipv4_gateway *)
  control_plane_access_ipv4_subnet : string prop option; [@option]
      (** control_plane_access_ipv4_subnet *)
  control_plane_access_name : string prop option; [@option]
      (** control_plane_access_name *)
  core_network_technology : string prop option; [@option]
      (** core_network_technology *)
  id : string prop option; [@option]  (** id *)
  interoperability_settings_json : string prop option; [@option]
      (** interoperability_settings_json *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  site_ids : string prop list;  (** site_ids *)
  sku : string prop;  (** sku *)
  software_version : string prop option; [@option]
      (** software_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_equipment_mtu_in_bytes : float prop option; [@option]
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

type t = {
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
    ({
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
      : azurerm_mobile_network_packet_core_control_plane)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_packet_core_control_plane
       __resource);
  let __resource_attributes =
    ({
       control_plane_access_ipv4_address =
         Prop.computed __resource_type __resource_id
           "control_plane_access_ipv4_address";
       control_plane_access_ipv4_gateway =
         Prop.computed __resource_type __resource_id
           "control_plane_access_ipv4_gateway";
       control_plane_access_ipv4_subnet =
         Prop.computed __resource_type __resource_id
           "control_plane_access_ipv4_subnet";
       control_plane_access_name =
         Prop.computed __resource_type __resource_id
           "control_plane_access_name";
       core_network_technology =
         Prop.computed __resource_type __resource_id
           "core_network_technology";
       id = Prop.computed __resource_type __resource_id "id";
       interoperability_settings_json =
         Prop.computed __resource_type __resource_id
           "interoperability_settings_json";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       site_ids =
         Prop.computed __resource_type __resource_id "site_ids";
       sku = Prop.computed __resource_type __resource_id "sku";
       software_version =
         Prop.computed __resource_type __resource_id
           "software_version";
       tags = Prop.computed __resource_type __resource_id "tags";
       user_equipment_mtu_in_bytes =
         Prop.computed __resource_type __resource_id
           "user_equipment_mtu_in_bytes";
     }
      : t)
  in
  __resource_attributes
