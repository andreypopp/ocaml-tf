(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range = {
  maximum : float prop option; [@option]  (** maximum *)
  minimum : float prop option; [@option]  (** minimum *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range *)

type azurerm_mobile_network_attached_data_network__network_address_port_translation = {
  icmp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** icmp_pinhole_timeout_in_seconds *)
  pinhole_maximum_number : float prop option; [@option]
      (** pinhole_maximum_number *)
  tcp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** tcp_pinhole_timeout_in_seconds *)
  tcp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
      (** tcp_port_reuse_minimum_hold_time_in_seconds *)
  udp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** udp_pinhole_timeout_in_seconds *)
  udp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
      (** udp_port_reuse_minimum_hold_time_in_seconds *)
  port_range :
    azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__network_address_port_translation *)

type azurerm_mobile_network_attached_data_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__timeouts *)

type azurerm_mobile_network_attached_data_network = {
  dns_addresses : string prop list;  (** dns_addresses *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_data_network_name : string prop;
      (** mobile_network_data_network_name *)
  mobile_network_packet_core_data_plane_id : string prop;
      (** mobile_network_packet_core_data_plane_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_equipment_address_pool_prefixes : string prop list option;
      [@option]
      (** user_equipment_address_pool_prefixes *)
  user_equipment_static_address_pool_prefixes :
    string prop list option;
      [@option]
      (** user_equipment_static_address_pool_prefixes *)
  user_plane_access_ipv4_address : string prop option; [@option]
      (** user_plane_access_ipv4_address *)
  user_plane_access_ipv4_gateway : string prop option; [@option]
      (** user_plane_access_ipv4_gateway *)
  user_plane_access_ipv4_subnet : string prop option; [@option]
      (** user_plane_access_ipv4_subnet *)
  user_plane_access_name : string prop option; [@option]
      (** user_plane_access_name *)
  network_address_port_translation :
    azurerm_mobile_network_attached_data_network__network_address_port_translation
    list;
  timeouts :
    azurerm_mobile_network_attached_data_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network *)

let azurerm_mobile_network_attached_data_network ?id ?tags
    ?user_equipment_address_pool_prefixes
    ?user_equipment_static_address_pool_prefixes
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name ?timeouts
    ~dns_addresses ~location ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id
    ~network_address_port_translation __resource_id =
  let __resource_type =
    "azurerm_mobile_network_attached_data_network"
  in
  let __resource =
    {
      dns_addresses;
      id;
      location;
      mobile_network_data_network_name;
      mobile_network_packet_core_data_plane_id;
      tags;
      user_equipment_address_pool_prefixes;
      user_equipment_static_address_pool_prefixes;
      user_plane_access_ipv4_address;
      user_plane_access_ipv4_gateway;
      user_plane_access_ipv4_subnet;
      user_plane_access_name;
      network_address_port_translation;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_attached_data_network
       __resource);
  ()
