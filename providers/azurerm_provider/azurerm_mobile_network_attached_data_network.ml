(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range = {
  maximum : float option; [@option]  (** maximum *)
  minimum : float option; [@option]  (** minimum *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range *)

type azurerm_mobile_network_attached_data_network__network_address_port_translation = {
  icmp_pinhole_timeout_in_seconds : float option; [@option]
      (** icmp_pinhole_timeout_in_seconds *)
  pinhole_maximum_number : float option; [@option]
      (** pinhole_maximum_number *)
  tcp_pinhole_timeout_in_seconds : float option; [@option]
      (** tcp_pinhole_timeout_in_seconds *)
  tcp_port_reuse_minimum_hold_time_in_seconds : float option;
      [@option]
      (** tcp_port_reuse_minimum_hold_time_in_seconds *)
  udp_pinhole_timeout_in_seconds : float option; [@option]
      (** udp_pinhole_timeout_in_seconds *)
  udp_port_reuse_minimum_hold_time_in_seconds : float option;
      [@option]
      (** udp_port_reuse_minimum_hold_time_in_seconds *)
  port_range :
    azurerm_mobile_network_attached_data_network__network_address_port_translation__port_range
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__network_address_port_translation *)

type azurerm_mobile_network_attached_data_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network__timeouts *)

type azurerm_mobile_network_attached_data_network = {
  dns_addresses : string list;  (** dns_addresses *)
  location : string;  (** location *)
  mobile_network_data_network_name : string;
      (** mobile_network_data_network_name *)
  mobile_network_packet_core_data_plane_id : string;
      (** mobile_network_packet_core_data_plane_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_equipment_address_pool_prefixes : string list option;
      [@option]
      (** user_equipment_address_pool_prefixes *)
  user_equipment_static_address_pool_prefixes : string list option;
      [@option]
      (** user_equipment_static_address_pool_prefixes *)
  user_plane_access_ipv4_address : string option; [@option]
      (** user_plane_access_ipv4_address *)
  user_plane_access_ipv4_gateway : string option; [@option]
      (** user_plane_access_ipv4_gateway *)
  user_plane_access_ipv4_subnet : string option; [@option]
      (** user_plane_access_ipv4_subnet *)
  user_plane_access_name : string option; [@option]
      (** user_plane_access_name *)
  network_address_port_translation :
    azurerm_mobile_network_attached_data_network__network_address_port_translation
    list;
  timeouts :
    azurerm_mobile_network_attached_data_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network *)

let azurerm_mobile_network_attached_data_network ?tags
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
