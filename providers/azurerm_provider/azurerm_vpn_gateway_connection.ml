(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_gateway_connection__routing__propagated_route_table = {
  labels : string list option; [@option]  (** labels *)
  route_table_ids : string list;  (** route_table_ids *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__routing__propagated_route_table *)

type azurerm_vpn_gateway_connection__routing = {
  associated_route_table : string;  (** associated_route_table *)
  inbound_route_map_id : string option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    azurerm_vpn_gateway_connection__routing__propagated_route_table
    list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__routing *)

type azurerm_vpn_gateway_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__timeouts *)

type azurerm_vpn_gateway_connection__traffic_selector_policy = {
  local_address_ranges : string list;  (** local_address_ranges *)
  remote_address_ranges : string list;  (** remote_address_ranges *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__traffic_selector_policy *)

type azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address = {
  ip_address : string;  (** ip_address *)
  ip_configuration_id : string;  (** ip_configuration_id *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address *)

type azurerm_vpn_gateway_connection__vpn_link__ipsec_policy = {
  dh_group : string;  (** dh_group *)
  encryption_algorithm : string;  (** encryption_algorithm *)
  ike_encryption_algorithm : string;  (** ike_encryption_algorithm *)
  ike_integrity_algorithm : string;  (** ike_integrity_algorithm *)
  integrity_algorithm : string;  (** integrity_algorithm *)
  pfs_group : string;  (** pfs_group *)
  sa_data_size_kb : float;  (** sa_data_size_kb *)
  sa_lifetime_sec : float;  (** sa_lifetime_sec *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link__ipsec_policy *)

type azurerm_vpn_gateway_connection__vpn_link = {
  bandwidth_mbps : float option; [@option]  (** bandwidth_mbps *)
  bgp_enabled : bool option; [@option]  (** bgp_enabled *)
  connection_mode : string option; [@option]  (** connection_mode *)
  egress_nat_rule_ids : string list option; [@option]
      (** egress_nat_rule_ids *)
  ingress_nat_rule_ids : string list option; [@option]
      (** ingress_nat_rule_ids *)
  local_azure_ip_address_enabled : bool option; [@option]
      (** local_azure_ip_address_enabled *)
  name : string;  (** name *)
  policy_based_traffic_selector_enabled : bool option; [@option]
      (** policy_based_traffic_selector_enabled *)
  protocol : string option; [@option]  (** protocol *)
  ratelimit_enabled : bool option; [@option]
      (** ratelimit_enabled *)
  route_weight : float option; [@option]  (** route_weight *)
  shared_key : string option; [@option]  (** shared_key *)
  vpn_site_link_id : string;  (** vpn_site_link_id *)
  custom_bgp_address :
    azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address list;
  ipsec_policy :
    azurerm_vpn_gateway_connection__vpn_link__ipsec_policy list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link *)

type azurerm_vpn_gateway_connection = {
  internet_security_enabled : bool option; [@option]
      (** internet_security_enabled *)
  name : string;  (** name *)
  remote_vpn_site_id : string;  (** remote_vpn_site_id *)
  vpn_gateway_id : string;  (** vpn_gateway_id *)
  routing : azurerm_vpn_gateway_connection__routing list;
  timeouts : azurerm_vpn_gateway_connection__timeouts option;
  traffic_selector_policy :
    azurerm_vpn_gateway_connection__traffic_selector_policy list;
  vpn_link : azurerm_vpn_gateway_connection__vpn_link list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection *)

let azurerm_vpn_gateway_connection ?internet_security_enabled
    ?timeouts ~name ~remote_vpn_site_id ~vpn_gateway_id ~routing
    ~traffic_selector_policy ~vpn_link __resource_id =
  let __resource_type = "azurerm_vpn_gateway_connection" in
  let __resource =
    {
      internet_security_enabled;
      name;
      remote_vpn_site_id;
      vpn_gateway_id;
      routing;
      timeouts;
      traffic_selector_policy;
      vpn_link;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway_connection __resource);
  ()
