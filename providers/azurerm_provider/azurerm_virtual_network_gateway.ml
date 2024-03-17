(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_gateway__bgp_settings__peering_addresses = {
  apipa_addresses : string list option; [@option]
      (** apipa_addresses *)
  default_addresses : string list;  (** default_addresses *)
  ip_configuration_name : string option; [@option]
      (** ip_configuration_name *)
  tunnel_ip_addresses : string list;  (** tunnel_ip_addresses *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__bgp_settings__peering_addresses *)

type azurerm_virtual_network_gateway__bgp_settings = {
  asn : float option; [@option]  (** asn *)
  peer_weight : float option; [@option]  (** peer_weight *)
  peering_addresses :
    azurerm_virtual_network_gateway__bgp_settings__peering_addresses
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__bgp_settings *)

type azurerm_virtual_network_gateway__custom_route = {
  address_prefixes : string list option; [@option]
      (** address_prefixes *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__custom_route *)

type azurerm_virtual_network_gateway__ip_configuration = {
  name : string option; [@option]  (** name *)
  private_ip_address_allocation : string option; [@option]
      (** private_ip_address_allocation *)
  public_ip_address_id : string;  (** public_ip_address_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__ip_configuration *)

type azurerm_virtual_network_gateway__policy_group__policy_member = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__policy_group__policy_member *)

type azurerm_virtual_network_gateway__policy_group = {
  is_default : bool option; [@option]  (** is_default *)
  name : string;  (** name *)
  priority : float option; [@option]  (** priority *)
  policy_member :
    azurerm_virtual_network_gateway__policy_group__policy_member list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__policy_group *)

type azurerm_virtual_network_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__timeouts *)

type azurerm_virtual_network_gateway__vpn_client_configuration__ipsec_policy = {
  dh_group : string;  (** dh_group *)
  ike_encryption : string;  (** ike_encryption *)
  ike_integrity : string;  (** ike_integrity *)
  ipsec_encryption : string;  (** ipsec_encryption *)
  ipsec_integrity : string;  (** ipsec_integrity *)
  pfs_group : string;  (** pfs_group *)
  sa_data_size_in_kilobytes : float;
      (** sa_data_size_in_kilobytes *)
  sa_lifetime_in_seconds : float;  (** sa_lifetime_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration__ipsec_policy *)

type azurerm_virtual_network_gateway__vpn_client_configuration__radius_server = {
  address : string;  (** address *)
  score : float;  (** score *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration__radius_server *)

type azurerm_virtual_network_gateway__vpn_client_configuration__revoked_certificate = {
  name : string;  (** name *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration__revoked_certificate *)

type azurerm_virtual_network_gateway__vpn_client_configuration__root_certificate = {
  name : string;  (** name *)
  public_cert_data : string;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration__root_certificate *)

type azurerm_virtual_network_gateway__vpn_client_configuration__virtual_network_gateway_client_connection = {
  address_prefixes : string list;  (** address_prefixes *)
  name : string;  (** name *)
  policy_group_names : string list;  (** policy_group_names *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration__virtual_network_gateway_client_connection *)

type azurerm_virtual_network_gateway__vpn_client_configuration = {
  aad_audience : string option; [@option]  (** aad_audience *)
  aad_issuer : string option; [@option]  (** aad_issuer *)
  aad_tenant : string option; [@option]  (** aad_tenant *)
  address_space : string list;  (** address_space *)
  radius_server_address : string option; [@option]
      (** radius_server_address *)
  radius_server_secret : string option; [@option]
      (** radius_server_secret *)
  vpn_auth_types : string list option; [@option]
      (** vpn_auth_types *)
  vpn_client_protocols : string list option; [@option]
      (** vpn_client_protocols *)
  ipsec_policy :
    azurerm_virtual_network_gateway__vpn_client_configuration__ipsec_policy
    list;
  radius_server :
    azurerm_virtual_network_gateway__vpn_client_configuration__radius_server
    list;
  revoked_certificate :
    azurerm_virtual_network_gateway__vpn_client_configuration__revoked_certificate
    list;
  root_certificate :
    azurerm_virtual_network_gateway__vpn_client_configuration__root_certificate
    list;
  virtual_network_gateway_client_connection :
    azurerm_virtual_network_gateway__vpn_client_configuration__virtual_network_gateway_client_connection
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway__vpn_client_configuration *)

type azurerm_virtual_network_gateway = {
  active_active : bool option; [@option]  (** active_active *)
  bgp_route_translation_for_nat_enabled : bool option; [@option]
      (** bgp_route_translation_for_nat_enabled *)
  default_local_network_gateway_id : string option; [@option]
      (** default_local_network_gateway_id *)
  dns_forwarding_enabled : bool option; [@option]
      (** dns_forwarding_enabled *)
  edge_zone : string option; [@option]  (** edge_zone *)
  enable_bgp : bool option; [@option]  (** enable_bgp *)
  generation : string option; [@option]  (** generation *)
  id : string option; [@option]  (** id *)
  ip_sec_replay_protection_enabled : bool option; [@option]
      (** ip_sec_replay_protection_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  private_ip_address_enabled : bool option; [@option]
      (** private_ip_address_enabled *)
  remote_vnet_traffic_enabled : bool option; [@option]
      (** remote_vnet_traffic_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  virtual_wan_traffic_enabled : bool option; [@option]
      (** virtual_wan_traffic_enabled *)
  vpn_type : string option; [@option]  (** vpn_type *)
  bgp_settings : azurerm_virtual_network_gateway__bgp_settings list;
  custom_route : azurerm_virtual_network_gateway__custom_route list;
  ip_configuration :
    azurerm_virtual_network_gateway__ip_configuration list;
  policy_group : azurerm_virtual_network_gateway__policy_group list;
  timeouts : azurerm_virtual_network_gateway__timeouts option;
  vpn_client_configuration :
    azurerm_virtual_network_gateway__vpn_client_configuration list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway *)

let azurerm_virtual_network_gateway ?active_active
    ?bgp_route_translation_for_nat_enabled
    ?default_local_network_gateway_id ?dns_forwarding_enabled
    ?edge_zone ?enable_bgp ?generation ?id
    ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
    ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
    ?vpn_type ?timeouts ~location ~name ~resource_group_name ~sku
    ~type_ ~bgp_settings ~custom_route ~ip_configuration
    ~policy_group ~vpn_client_configuration __resource_id =
  let __resource_type = "azurerm_virtual_network_gateway" in
  let __resource =
    {
      active_active;
      bgp_route_translation_for_nat_enabled;
      default_local_network_gateway_id;
      dns_forwarding_enabled;
      edge_zone;
      enable_bgp;
      generation;
      id;
      ip_sec_replay_protection_enabled;
      location;
      name;
      private_ip_address_enabled;
      remote_vnet_traffic_enabled;
      resource_group_name;
      sku;
      tags;
      type_;
      virtual_wan_traffic_enabled;
      vpn_type;
      bgp_settings;
      custom_route;
      ip_configuration;
      policy_group;
      timeouts;
      vpn_client_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway __resource);
  ()
