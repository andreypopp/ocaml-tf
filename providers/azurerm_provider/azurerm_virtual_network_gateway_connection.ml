(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_gateway_connection__custom_bgp_addresses = {
  primary : string prop;  (** primary *)
  secondary : string prop option; [@option]  (** secondary *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__custom_bgp_addresses *)

type azurerm_virtual_network_gateway_connection__ipsec_policy = {
  dh_group : string prop;  (** dh_group *)
  ike_encryption : string prop;  (** ike_encryption *)
  ike_integrity : string prop;  (** ike_integrity *)
  ipsec_encryption : string prop;  (** ipsec_encryption *)
  ipsec_integrity : string prop;  (** ipsec_integrity *)
  pfs_group : string prop;  (** pfs_group *)
  sa_datasize : float prop option; [@option]  (** sa_datasize *)
  sa_lifetime : float prop option; [@option]  (** sa_lifetime *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__ipsec_policy *)

type azurerm_virtual_network_gateway_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__timeouts *)

type azurerm_virtual_network_gateway_connection__traffic_selector_policy = {
  local_address_cidrs : string prop list;  (** local_address_cidrs *)
  remote_address_cidrs : string prop list;
      (** remote_address_cidrs *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__traffic_selector_policy *)

type azurerm_virtual_network_gateway_connection = {
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  connection_mode : string prop option; [@option]
      (** connection_mode *)
  connection_protocol : string prop option; [@option]
      (** connection_protocol *)
  dpd_timeout_seconds : float prop option; [@option]
      (** dpd_timeout_seconds *)
  egress_nat_rule_ids : string prop list option; [@option]
      (** egress_nat_rule_ids *)
  enable_bgp : bool prop option; [@option]  (** enable_bgp *)
  express_route_circuit_id : string prop option; [@option]
      (** express_route_circuit_id *)
  express_route_gateway_bypass : bool prop option; [@option]
      (** express_route_gateway_bypass *)
  id : string prop option; [@option]  (** id *)
  ingress_nat_rule_ids : string prop list option; [@option]
      (** ingress_nat_rule_ids *)
  local_azure_ip_address_enabled : bool prop option; [@option]
      (** local_azure_ip_address_enabled *)
  local_network_gateway_id : string prop option; [@option]
      (** local_network_gateway_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  peer_virtual_network_gateway_id : string prop option; [@option]
      (** peer_virtual_network_gateway_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  routing_weight : float prop option; [@option]
      (** routing_weight *)
  shared_key : string prop option; [@option]  (** shared_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  use_policy_based_traffic_selectors : bool prop option; [@option]
      (** use_policy_based_traffic_selectors *)
  virtual_network_gateway_id : string prop;
      (** virtual_network_gateway_id *)
  custom_bgp_addresses :
    azurerm_virtual_network_gateway_connection__custom_bgp_addresses
    list;
  ipsec_policy :
    azurerm_virtual_network_gateway_connection__ipsec_policy list;
  timeouts :
    azurerm_virtual_network_gateway_connection__timeouts option;
  traffic_selector_policy :
    azurerm_virtual_network_gateway_connection__traffic_selector_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection *)

let azurerm_virtual_network_gateway_connection ?authorization_key
    ?connection_mode ?connection_protocol ?dpd_timeout_seconds
    ?egress_nat_rule_ids ?enable_bgp ?express_route_circuit_id
    ?express_route_gateway_bypass ?id ?ingress_nat_rule_ids
    ?local_azure_ip_address_enabled ?local_network_gateway_id
    ?peer_virtual_network_gateway_id ?routing_weight ?shared_key
    ?tags ?use_policy_based_traffic_selectors ?timeouts ~location
    ~name ~resource_group_name ~type_ ~virtual_network_gateway_id
    ~custom_bgp_addresses ~ipsec_policy ~traffic_selector_policy
    __resource_id =
  let __resource_type =
    "azurerm_virtual_network_gateway_connection"
  in
  let __resource =
    {
      authorization_key;
      connection_mode;
      connection_protocol;
      dpd_timeout_seconds;
      egress_nat_rule_ids;
      enable_bgp;
      express_route_circuit_id;
      express_route_gateway_bypass;
      id;
      ingress_nat_rule_ids;
      local_azure_ip_address_enabled;
      local_network_gateway_id;
      location;
      name;
      peer_virtual_network_gateway_id;
      resource_group_name;
      routing_weight;
      shared_key;
      tags;
      type_;
      use_policy_based_traffic_selectors;
      virtual_network_gateway_id;
      custom_bgp_addresses;
      ipsec_policy;
      timeouts;
      traffic_selector_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway_connection __resource);
  ()
