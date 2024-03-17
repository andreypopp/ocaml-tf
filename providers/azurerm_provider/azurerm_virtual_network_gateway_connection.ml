(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_gateway_connection__custom_bgp_addresses = {
  primary : string;  (** primary *)
  secondary : string option; [@option]  (** secondary *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__custom_bgp_addresses *)

type azurerm_virtual_network_gateway_connection__ipsec_policy = {
  dh_group : string;  (** dh_group *)
  ike_encryption : string;  (** ike_encryption *)
  ike_integrity : string;  (** ike_integrity *)
  ipsec_encryption : string;  (** ipsec_encryption *)
  ipsec_integrity : string;  (** ipsec_integrity *)
  pfs_group : string;  (** pfs_group *)
  sa_datasize : float option; [@option]  (** sa_datasize *)
  sa_lifetime : float option; [@option]  (** sa_lifetime *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__ipsec_policy *)

type azurerm_virtual_network_gateway_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__timeouts *)

type azurerm_virtual_network_gateway_connection__traffic_selector_policy = {
  local_address_cidrs : string list;  (** local_address_cidrs *)
  remote_address_cidrs : string list;  (** remote_address_cidrs *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection__traffic_selector_policy *)

type azurerm_virtual_network_gateway_connection = {
  authorization_key : string option; [@option]
      (** authorization_key *)
  connection_mode : string option; [@option]  (** connection_mode *)
  dpd_timeout_seconds : float option; [@option]
      (** dpd_timeout_seconds *)
  egress_nat_rule_ids : string list option; [@option]
      (** egress_nat_rule_ids *)
  express_route_circuit_id : string option; [@option]
      (** express_route_circuit_id *)
  ingress_nat_rule_ids : string list option; [@option]
      (** ingress_nat_rule_ids *)
  local_azure_ip_address_enabled : bool option; [@option]
      (** local_azure_ip_address_enabled *)
  local_network_gateway_id : string option; [@option]
      (** local_network_gateway_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  peer_virtual_network_gateway_id : string option; [@option]
      (** peer_virtual_network_gateway_id *)
  resource_group_name : string;  (** resource_group_name *)
  shared_key : string option; [@option]  (** shared_key *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  virtual_network_gateway_id : string;
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
    ?connection_mode ?dpd_timeout_seconds ?egress_nat_rule_ids
    ?express_route_circuit_id ?ingress_nat_rule_ids
    ?local_azure_ip_address_enabled ?local_network_gateway_id
    ?peer_virtual_network_gateway_id ?shared_key ?tags ?timeouts
    ~location ~name ~resource_group_name ~type_
    ~virtual_network_gateway_id ~custom_bgp_addresses ~ipsec_policy
    ~traffic_selector_policy __resource_id =
  let __resource_type =
    "azurerm_virtual_network_gateway_connection"
  in
  let __resource =
    {
      authorization_key;
      connection_mode;
      dpd_timeout_seconds;
      egress_nat_rule_ids;
      express_route_circuit_id;
      ingress_nat_rule_ids;
      local_azure_ip_address_enabled;
      local_network_gateway_id;
      location;
      name;
      peer_virtual_network_gateway_id;
      resource_group_name;
      shared_key;
      tags;
      type_;
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
