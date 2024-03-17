(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_gateway_connection__routing__propagated_route_table = {
  labels : string prop list option; [@option]  (** labels *)
  route_table_ids : string prop list;  (** route_table_ids *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__routing__propagated_route_table *)

type azurerm_vpn_gateway_connection__routing = {
  associated_route_table : string prop;
      (** associated_route_table *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    azurerm_vpn_gateway_connection__routing__propagated_route_table
    list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__routing *)

type azurerm_vpn_gateway_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__timeouts *)

type azurerm_vpn_gateway_connection__traffic_selector_policy = {
  local_address_ranges : string prop list;
      (** local_address_ranges *)
  remote_address_ranges : string prop list;
      (** remote_address_ranges *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__traffic_selector_policy *)

type azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address = {
  ip_address : string prop;  (** ip_address *)
  ip_configuration_id : string prop;  (** ip_configuration_id *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address *)

type azurerm_vpn_gateway_connection__vpn_link__ipsec_policy = {
  dh_group : string prop;  (** dh_group *)
  encryption_algorithm : string prop;  (** encryption_algorithm *)
  ike_encryption_algorithm : string prop;
      (** ike_encryption_algorithm *)
  ike_integrity_algorithm : string prop;
      (** ike_integrity_algorithm *)
  integrity_algorithm : string prop;  (** integrity_algorithm *)
  pfs_group : string prop;  (** pfs_group *)
  sa_data_size_kb : float prop;  (** sa_data_size_kb *)
  sa_lifetime_sec : float prop;  (** sa_lifetime_sec *)
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link__ipsec_policy *)

type azurerm_vpn_gateway_connection__vpn_link = {
  bandwidth_mbps : float prop option; [@option]
      (** bandwidth_mbps *)
  bgp_enabled : bool prop option; [@option]  (** bgp_enabled *)
  connection_mode : string prop option; [@option]
      (** connection_mode *)
  egress_nat_rule_ids : string prop list option; [@option]
      (** egress_nat_rule_ids *)
  ingress_nat_rule_ids : string prop list option; [@option]
      (** ingress_nat_rule_ids *)
  local_azure_ip_address_enabled : bool prop option; [@option]
      (** local_azure_ip_address_enabled *)
  name : string prop;  (** name *)
  policy_based_traffic_selector_enabled : bool prop option; [@option]
      (** policy_based_traffic_selector_enabled *)
  protocol : string prop option; [@option]  (** protocol *)
  ratelimit_enabled : bool prop option; [@option]
      (** ratelimit_enabled *)
  route_weight : float prop option; [@option]  (** route_weight *)
  shared_key : string prop option; [@option]  (** shared_key *)
  vpn_site_link_id : string prop;  (** vpn_site_link_id *)
  custom_bgp_address :
    azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address list;
  ipsec_policy :
    azurerm_vpn_gateway_connection__vpn_link__ipsec_policy list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection__vpn_link *)

type azurerm_vpn_gateway_connection = {
  id : string prop option; [@option]  (** id *)
  internet_security_enabled : bool prop option; [@option]
      (** internet_security_enabled *)
  name : string prop;  (** name *)
  remote_vpn_site_id : string prop;  (** remote_vpn_site_id *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
  routing : azurerm_vpn_gateway_connection__routing list;
  timeouts : azurerm_vpn_gateway_connection__timeouts option;
  traffic_selector_policy :
    azurerm_vpn_gateway_connection__traffic_selector_policy list;
  vpn_link : azurerm_vpn_gateway_connection__vpn_link list;
}
[@@deriving yojson_of]
(** azurerm_vpn_gateway_connection *)

type t = {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_vpn_site_id : string prop;
  vpn_gateway_id : string prop;
}

let azurerm_vpn_gateway_connection ?id ?internet_security_enabled
    ?timeouts ~name ~remote_vpn_site_id ~vpn_gateway_id ~routing
    ~traffic_selector_policy ~vpn_link __resource_id =
  let __resource_type = "azurerm_vpn_gateway_connection" in
  let __resource =
    ({
       id;
       internet_security_enabled;
       name;
       remote_vpn_site_id;
       vpn_gateway_id;
       routing;
       timeouts;
       traffic_selector_policy;
       vpn_link;
     }
      : azurerm_vpn_gateway_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_gateway_connection __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       internet_security_enabled =
         Prop.computed __resource_type __resource_id
           "internet_security_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       remote_vpn_site_id =
         Prop.computed __resource_type __resource_id
           "remote_vpn_site_id";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
