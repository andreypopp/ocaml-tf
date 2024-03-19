(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_bgp_addresses = {
  primary : string prop;  (** primary *)
  secondary : string prop option; [@option]  (** secondary *)
}
[@@deriving yojson_of]
(** custom_bgp_addresses *)

type ipsec_policy = {
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
(** ipsec_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type traffic_selector_policy = {
  local_address_cidrs : string prop list;  (** local_address_cidrs *)
  remote_address_cidrs : string prop list;
      (** remote_address_cidrs *)
}
[@@deriving yojson_of]
(** traffic_selector_policy *)

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
  custom_bgp_addresses : custom_bgp_addresses list;
  ipsec_policy : ipsec_policy list;
  timeouts : timeouts option;
  traffic_selector_policy : traffic_selector_policy list;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_gateway_connection *)

let custom_bgp_addresses ?secondary ~primary () :
    custom_bgp_addresses =
  { primary; secondary }

let ipsec_policy ?sa_datasize ?sa_lifetime ~dh_group ~ike_encryption
    ~ike_integrity ~ipsec_encryption ~ipsec_integrity ~pfs_group () :
    ipsec_policy =
  {
    dh_group;
    ike_encryption;
    ike_integrity;
    ipsec_encryption;
    ipsec_integrity;
    pfs_group;
    sa_datasize;
    sa_lifetime;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let traffic_selector_policy ~local_address_cidrs
    ~remote_address_cidrs () : traffic_selector_policy =
  { local_address_cidrs; remote_address_cidrs }

let azurerm_virtual_network_gateway_connection ?authorization_key
    ?connection_mode ?connection_protocol ?dpd_timeout_seconds
    ?egress_nat_rule_ids ?enable_bgp ?express_route_circuit_id
    ?express_route_gateway_bypass ?id ?ingress_nat_rule_ids
    ?local_azure_ip_address_enabled ?local_network_gateway_id
    ?peer_virtual_network_gateway_id ?routing_weight ?shared_key
    ?tags ?use_policy_based_traffic_selectors ?timeouts ~location
    ~name ~resource_group_name ~type_ ~virtual_network_gateway_id
    ~custom_bgp_addresses ~ipsec_policy ~traffic_selector_policy () :
    azurerm_virtual_network_gateway_connection =
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

type t = {
  authorization_key : string prop;
  connection_mode : string prop;
  connection_protocol : string prop;
  dpd_timeout_seconds : float prop;
  egress_nat_rule_ids : string list prop;
  enable_bgp : bool prop;
  express_route_circuit_id : string prop;
  express_route_gateway_bypass : bool prop;
  id : string prop;
  ingress_nat_rule_ids : string list prop;
  local_azure_ip_address_enabled : bool prop;
  local_network_gateway_id : string prop;
  location : string prop;
  name : string prop;
  peer_virtual_network_gateway_id : string prop;
  resource_group_name : string prop;
  routing_weight : float prop;
  shared_key : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  use_policy_based_traffic_selectors : bool prop;
  virtual_network_gateway_id : string prop;
}

let register ?tf_module ?authorization_key ?connection_mode
    ?connection_protocol ?dpd_timeout_seconds ?egress_nat_rule_ids
    ?enable_bgp ?express_route_circuit_id
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
    azurerm_virtual_network_gateway_connection ?authorization_key
      ?connection_mode ?connection_protocol ?dpd_timeout_seconds
      ?egress_nat_rule_ids ?enable_bgp ?express_route_circuit_id
      ?express_route_gateway_bypass ?id ?ingress_nat_rule_ids
      ?local_azure_ip_address_enabled ?local_network_gateway_id
      ?peer_virtual_network_gateway_id ?routing_weight ?shared_key
      ?tags ?use_policy_based_traffic_selectors ?timeouts ~location
      ~name ~resource_group_name ~type_ ~virtual_network_gateway_id
      ~custom_bgp_addresses ~ipsec_policy ~traffic_selector_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_gateway_connection __resource);
  let __resource_attributes =
    ({
       authorization_key =
         Prop.computed __resource_type __resource_id
           "authorization_key";
       connection_mode =
         Prop.computed __resource_type __resource_id
           "connection_mode";
       connection_protocol =
         Prop.computed __resource_type __resource_id
           "connection_protocol";
       dpd_timeout_seconds =
         Prop.computed __resource_type __resource_id
           "dpd_timeout_seconds";
       egress_nat_rule_ids =
         Prop.computed __resource_type __resource_id
           "egress_nat_rule_ids";
       enable_bgp =
         Prop.computed __resource_type __resource_id "enable_bgp";
       express_route_circuit_id =
         Prop.computed __resource_type __resource_id
           "express_route_circuit_id";
       express_route_gateway_bypass =
         Prop.computed __resource_type __resource_id
           "express_route_gateway_bypass";
       id = Prop.computed __resource_type __resource_id "id";
       ingress_nat_rule_ids =
         Prop.computed __resource_type __resource_id
           "ingress_nat_rule_ids";
       local_azure_ip_address_enabled =
         Prop.computed __resource_type __resource_id
           "local_azure_ip_address_enabled";
       local_network_gateway_id =
         Prop.computed __resource_type __resource_id
           "local_network_gateway_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       peer_virtual_network_gateway_id =
         Prop.computed __resource_type __resource_id
           "peer_virtual_network_gateway_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       routing_weight =
         Prop.computed __resource_type __resource_id "routing_weight";
       shared_key =
         Prop.computed __resource_type __resource_id "shared_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       use_policy_based_traffic_selectors =
         Prop.computed __resource_type __resource_id
           "use_policy_based_traffic_selectors";
       virtual_network_gateway_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_gateway_id";
     }
      : t)
  in
  __resource_attributes
