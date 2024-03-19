(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type bgp_settings__peering_addresses = {
  apipa_addresses : string prop list option; [@option]
      (** apipa_addresses *)
  ip_configuration_name : string prop option; [@option]
      (** ip_configuration_name *)
}
[@@deriving yojson_of]
(** bgp_settings__peering_addresses *)

type bgp_settings = {
  asn : float prop option; [@option]  (** asn *)
  peer_weight : float prop option; [@option]  (** peer_weight *)
  peering_addresses : bgp_settings__peering_addresses list;
}
[@@deriving yojson_of]
(** bgp_settings *)

type custom_route = {
  address_prefixes : string prop list option; [@option]
      (** address_prefixes *)
}
[@@deriving yojson_of]
(** custom_route *)

type ip_configuration = {
  name : string prop option; [@option]  (** name *)
  private_ip_address_allocation : string prop option; [@option]
      (** private_ip_address_allocation *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** ip_configuration *)

type policy_group__policy_member = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** policy_group__policy_member *)

type policy_group = {
  is_default : bool prop option; [@option]  (** is_default *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  policy_member : policy_group__policy_member list;
}
[@@deriving yojson_of]
(** policy_group *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpn_client_configuration__ipsec_policy = {
  dh_group : string prop;  (** dh_group *)
  ike_encryption : string prop;  (** ike_encryption *)
  ike_integrity : string prop;  (** ike_integrity *)
  ipsec_encryption : string prop;  (** ipsec_encryption *)
  ipsec_integrity : string prop;  (** ipsec_integrity *)
  pfs_group : string prop;  (** pfs_group *)
  sa_data_size_in_kilobytes : float prop;
      (** sa_data_size_in_kilobytes *)
  sa_lifetime_in_seconds : float prop;  (** sa_lifetime_in_seconds *)
}
[@@deriving yojson_of]
(** vpn_client_configuration__ipsec_policy *)

type vpn_client_configuration__radius_server = {
  address : string prop;  (** address *)
  score : float prop;  (** score *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]
(** vpn_client_configuration__radius_server *)

type vpn_client_configuration__revoked_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** vpn_client_configuration__revoked_certificate *)

type vpn_client_configuration__root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** vpn_client_configuration__root_certificate *)

type vpn_client_configuration__virtual_network_gateway_client_connection = {
  address_prefixes : string prop list;  (** address_prefixes *)
  name : string prop;  (** name *)
  policy_group_names : string prop list;  (** policy_group_names *)
}
[@@deriving yojson_of]
(** vpn_client_configuration__virtual_network_gateway_client_connection *)

type vpn_client_configuration = {
  aad_audience : string prop option; [@option]  (** aad_audience *)
  aad_issuer : string prop option; [@option]  (** aad_issuer *)
  aad_tenant : string prop option; [@option]  (** aad_tenant *)
  address_space : string prop list;  (** address_space *)
  radius_server_address : string prop option; [@option]
      (** radius_server_address *)
  radius_server_secret : string prop option; [@option]
      (** radius_server_secret *)
  vpn_auth_types : string prop list option; [@option]
      (** vpn_auth_types *)
  vpn_client_protocols : string prop list option; [@option]
      (** vpn_client_protocols *)
  ipsec_policy : vpn_client_configuration__ipsec_policy list;
  radius_server : vpn_client_configuration__radius_server list;
  revoked_certificate :
    vpn_client_configuration__revoked_certificate list;
  root_certificate : vpn_client_configuration__root_certificate list;
  virtual_network_gateway_client_connection :
    vpn_client_configuration__virtual_network_gateway_client_connection
    list;
}
[@@deriving yojson_of]
(** vpn_client_configuration *)

type azurerm_virtual_network_gateway = {
  active_active : bool prop option; [@option]  (** active_active *)
  bgp_route_translation_for_nat_enabled : bool prop option; [@option]
      (** bgp_route_translation_for_nat_enabled *)
  default_local_network_gateway_id : string prop option; [@option]
      (** default_local_network_gateway_id *)
  dns_forwarding_enabled : bool prop option; [@option]
      (** dns_forwarding_enabled *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_bgp : bool prop option; [@option]  (** enable_bgp *)
  generation : string prop option; [@option]  (** generation *)
  id : string prop option; [@option]  (** id *)
  ip_sec_replay_protection_enabled : bool prop option; [@option]
      (** ip_sec_replay_protection_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_ip_address_enabled : bool prop option; [@option]
      (** private_ip_address_enabled *)
  remote_vnet_traffic_enabled : bool prop option; [@option]
      (** remote_vnet_traffic_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  virtual_wan_traffic_enabled : bool prop option; [@option]
      (** virtual_wan_traffic_enabled *)
  vpn_type : string prop option; [@option]  (** vpn_type *)
  bgp_settings : bgp_settings list;
  custom_route : custom_route list;
  ip_configuration : ip_configuration list;
  policy_group : policy_group list;
  timeouts : timeouts option;
  vpn_client_configuration : vpn_client_configuration list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway *)

let bgp_settings__peering_addresses ?apipa_addresses
    ?ip_configuration_name () : bgp_settings__peering_addresses =
  { apipa_addresses; ip_configuration_name }

let bgp_settings ?asn ?peer_weight ~peering_addresses () :
    bgp_settings =
  { asn; peer_weight; peering_addresses }

let custom_route ?address_prefixes () : custom_route =
  { address_prefixes }

let ip_configuration ?name ?private_ip_address_allocation
    ~public_ip_address_id ~subnet_id () : ip_configuration =
  {
    name;
    private_ip_address_allocation;
    public_ip_address_id;
    subnet_id;
  }

let policy_group__policy_member ~name ~type_ ~value () :
    policy_group__policy_member =
  { name; type_; value }

let policy_group ?is_default ?priority ~name ~policy_member () :
    policy_group =
  { is_default; name; priority; policy_member }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let vpn_client_configuration__ipsec_policy ~dh_group ~ike_encryption
    ~ike_integrity ~ipsec_encryption ~ipsec_integrity ~pfs_group
    ~sa_data_size_in_kilobytes ~sa_lifetime_in_seconds () :
    vpn_client_configuration__ipsec_policy =
  {
    dh_group;
    ike_encryption;
    ike_integrity;
    ipsec_encryption;
    ipsec_integrity;
    pfs_group;
    sa_data_size_in_kilobytes;
    sa_lifetime_in_seconds;
  }

let vpn_client_configuration__radius_server ~address ~score ~secret
    () : vpn_client_configuration__radius_server =
  { address; score; secret }

let vpn_client_configuration__revoked_certificate ~name ~thumbprint
    () : vpn_client_configuration__revoked_certificate =
  { name; thumbprint }

let vpn_client_configuration__root_certificate ~name
    ~public_cert_data () : vpn_client_configuration__root_certificate
    =
  { name; public_cert_data }

let vpn_client_configuration__virtual_network_gateway_client_connection
    ~address_prefixes ~name ~policy_group_names () :
    vpn_client_configuration__virtual_network_gateway_client_connection
    =
  { address_prefixes; name; policy_group_names }

let vpn_client_configuration ?aad_audience ?aad_issuer ?aad_tenant
    ?radius_server_address ?radius_server_secret ?vpn_auth_types
    ?vpn_client_protocols ~address_space ~ipsec_policy ~radius_server
    ~revoked_certificate ~root_certificate
    ~virtual_network_gateway_client_connection () :
    vpn_client_configuration =
  {
    aad_audience;
    aad_issuer;
    aad_tenant;
    address_space;
    radius_server_address;
    radius_server_secret;
    vpn_auth_types;
    vpn_client_protocols;
    ipsec_policy;
    radius_server;
    revoked_certificate;
    root_certificate;
    virtual_network_gateway_client_connection;
  }

let azurerm_virtual_network_gateway ?active_active
    ?bgp_route_translation_for_nat_enabled
    ?default_local_network_gateway_id ?dns_forwarding_enabled
    ?edge_zone ?enable_bgp ?generation ?id
    ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
    ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
    ?vpn_type ?timeouts ~location ~name ~resource_group_name ~sku
    ~type_ ~bgp_settings ~custom_route ~ip_configuration
    ~policy_group ~vpn_client_configuration () :
    azurerm_virtual_network_gateway =
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

type t = {
  active_active : bool prop;
  bgp_route_translation_for_nat_enabled : bool prop;
  default_local_network_gateway_id : string prop;
  dns_forwarding_enabled : bool prop;
  edge_zone : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_sec_replay_protection_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  remote_vnet_traffic_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  virtual_wan_traffic_enabled : bool prop;
  vpn_type : string prop;
}

let register ?tf_module ?active_active
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
    azurerm_virtual_network_gateway ?active_active
      ?bgp_route_translation_for_nat_enabled
      ?default_local_network_gateway_id ?dns_forwarding_enabled
      ?edge_zone ?enable_bgp ?generation ?id
      ?ip_sec_replay_protection_enabled ?private_ip_address_enabled
      ?remote_vnet_traffic_enabled ?tags ?virtual_wan_traffic_enabled
      ?vpn_type ?timeouts ~location ~name ~resource_group_name ~sku
      ~type_ ~bgp_settings ~custom_route ~ip_configuration
      ~policy_group ~vpn_client_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway __resource);
  let __resource_attributes =
    ({
       active_active =
         Prop.computed __resource_type __resource_id "active_active";
       bgp_route_translation_for_nat_enabled =
         Prop.computed __resource_type __resource_id
           "bgp_route_translation_for_nat_enabled";
       default_local_network_gateway_id =
         Prop.computed __resource_type __resource_id
           "default_local_network_gateway_id";
       dns_forwarding_enabled =
         Prop.computed __resource_type __resource_id
           "dns_forwarding_enabled";
       edge_zone =
         Prop.computed __resource_type __resource_id "edge_zone";
       enable_bgp =
         Prop.computed __resource_type __resource_id "enable_bgp";
       generation =
         Prop.computed __resource_type __resource_id "generation";
       id = Prop.computed __resource_type __resource_id "id";
       ip_sec_replay_protection_enabled =
         Prop.computed __resource_type __resource_id
           "ip_sec_replay_protection_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_address_enabled =
         Prop.computed __resource_type __resource_id
           "private_ip_address_enabled";
       remote_vnet_traffic_enabled =
         Prop.computed __resource_type __resource_id
           "remote_vnet_traffic_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       virtual_wan_traffic_enabled =
         Prop.computed __resource_type __resource_id
           "virtual_wan_traffic_enabled";
       vpn_type =
         Prop.computed __resource_type __resource_id "vpn_type";
     }
      : t)
  in
  __resource_attributes
