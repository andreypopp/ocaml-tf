(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_bgp_addresses = {
  primary : string prop;
  secondary : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_bgp_addresses) -> ()

let yojson_of_custom_bgp_addresses =
  (function
   | { primary = v_primary; secondary = v_secondary } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secondary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary in
         ("primary", arg) :: bnds
       in
       `Assoc bnds
    : custom_bgp_addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_bgp_addresses

[@@@deriving.end]

type ipsec_policy = {
  dh_group : string prop;
  ike_encryption : string prop;
  ike_integrity : string prop;
  ipsec_encryption : string prop;
  ipsec_integrity : string prop;
  pfs_group : string prop;
  sa_datasize : float prop option; [@option]
  sa_lifetime : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipsec_policy) -> ()

let yojson_of_ipsec_policy =
  (function
   | {
       dh_group = v_dh_group;
       ike_encryption = v_ike_encryption;
       ike_integrity = v_ike_integrity;
       ipsec_encryption = v_ipsec_encryption;
       ipsec_integrity = v_ipsec_integrity;
       pfs_group = v_pfs_group;
       sa_datasize = v_sa_datasize;
       sa_lifetime = v_sa_lifetime;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sa_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sa_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sa_datasize with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sa_datasize", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pfs_group in
         ("pfs_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_integrity
         in
         ("ipsec_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_encryption
         in
         ("ipsec_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ike_integrity in
         ("ike_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ike_encryption
         in
         ("ike_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dh_group in
         ("dh_group", arg) :: bnds
       in
       `Assoc bnds
    : ipsec_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipsec_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type traffic_selector_policy = {
  local_address_cidrs : string prop list;
  remote_address_cidrs : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_selector_policy) -> ()

let yojson_of_traffic_selector_policy =
  (function
   | {
       local_address_cidrs = v_local_address_cidrs;
       remote_address_cidrs = v_remote_address_cidrs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_remote_address_cidrs
         in
         ("remote_address_cidrs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_local_address_cidrs
         in
         ("local_address_cidrs", arg) :: bnds
       in
       `Assoc bnds
    : traffic_selector_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_selector_policy

[@@@deriving.end]

type azurerm_virtual_network_gateway_connection = {
  authorization_key : string prop option; [@option]
  connection_mode : string prop option; [@option]
  connection_protocol : string prop option; [@option]
  dpd_timeout_seconds : float prop option; [@option]
  egress_nat_rule_ids : string prop list option; [@option]
  enable_bgp : bool prop option; [@option]
  express_route_circuit_id : string prop option; [@option]
  express_route_gateway_bypass : bool prop option; [@option]
  id : string prop option; [@option]
  ingress_nat_rule_ids : string prop list option; [@option]
  local_azure_ip_address_enabled : bool prop option; [@option]
  local_network_gateway_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  peer_virtual_network_gateway_id : string prop option; [@option]
  resource_group_name : string prop;
  routing_weight : float prop option; [@option]
  shared_key : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  use_policy_based_traffic_selectors : bool prop option; [@option]
  virtual_network_gateway_id : string prop;
  custom_bgp_addresses : custom_bgp_addresses list;
  ipsec_policy : ipsec_policy list;
  timeouts : timeouts option;
  traffic_selector_policy : traffic_selector_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_gateway_connection) -> ()

let yojson_of_azurerm_virtual_network_gateway_connection =
  (function
   | {
       authorization_key = v_authorization_key;
       connection_mode = v_connection_mode;
       connection_protocol = v_connection_protocol;
       dpd_timeout_seconds = v_dpd_timeout_seconds;
       egress_nat_rule_ids = v_egress_nat_rule_ids;
       enable_bgp = v_enable_bgp;
       express_route_circuit_id = v_express_route_circuit_id;
       express_route_gateway_bypass = v_express_route_gateway_bypass;
       id = v_id;
       ingress_nat_rule_ids = v_ingress_nat_rule_ids;
       local_azure_ip_address_enabled =
         v_local_azure_ip_address_enabled;
       local_network_gateway_id = v_local_network_gateway_id;
       location = v_location;
       name = v_name;
       peer_virtual_network_gateway_id =
         v_peer_virtual_network_gateway_id;
       resource_group_name = v_resource_group_name;
       routing_weight = v_routing_weight;
       shared_key = v_shared_key;
       tags = v_tags;
       type_ = v_type_;
       use_policy_based_traffic_selectors =
         v_use_policy_based_traffic_selectors;
       virtual_network_gateway_id = v_virtual_network_gateway_id;
       custom_bgp_addresses = v_custom_bgp_addresses;
       ipsec_policy = v_ipsec_policy;
       timeouts = v_timeouts;
       traffic_selector_policy = v_traffic_selector_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_traffic_selector_policy
             v_traffic_selector_policy
         in
         ("traffic_selector_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ipsec_policy v_ipsec_policy
         in
         ("ipsec_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_bgp_addresses
             v_custom_bgp_addresses
         in
         ("custom_bgp_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_virtual_network_gateway_id
         in
         ("virtual_network_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_use_policy_based_traffic_selectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_policy_based_traffic_selectors", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_routing_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "routing_weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_peer_virtual_network_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_virtual_network_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_network_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_network_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_azure_ip_address_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_azure_ip_address_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress_nat_rule_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ingress_nat_rule_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_express_route_gateway_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "express_route_gateway_bypass", arg in
             bnd :: bnds
       in
       let bnds =
         match v_express_route_circuit_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "express_route_circuit_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_bgp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_bgp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_egress_nat_rule_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "egress_nat_rule_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dpd_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "dpd_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_network_gateway_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_gateway_connection

[@@@deriving.end]

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
    ?tags ?use_policy_based_traffic_selectors
    ?(custom_bgp_addresses = []) ?(ipsec_policy = []) ?timeouts
    ?(traffic_selector_policy = []) ~location ~name
    ~resource_group_name ~type_ ~virtual_network_gateway_id () :
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

let make ?authorization_key ?connection_mode ?connection_protocol
    ?dpd_timeout_seconds ?egress_nat_rule_ids ?enable_bgp
    ?express_route_circuit_id ?express_route_gateway_bypass ?id
    ?ingress_nat_rule_ids ?local_azure_ip_address_enabled
    ?local_network_gateway_id ?peer_virtual_network_gateway_id
    ?routing_weight ?shared_key ?tags
    ?use_policy_based_traffic_selectors ?(custom_bgp_addresses = [])
    ?(ipsec_policy = []) ?timeouts ?(traffic_selector_policy = [])
    ~location ~name ~resource_group_name ~type_
    ~virtual_network_gateway_id __id =
  let __type = "azurerm_virtual_network_gateway_connection" in
  let __attrs =
    ({
       authorization_key =
         Prop.computed __type __id "authorization_key";
       connection_mode = Prop.computed __type __id "connection_mode";
       connection_protocol =
         Prop.computed __type __id "connection_protocol";
       dpd_timeout_seconds =
         Prop.computed __type __id "dpd_timeout_seconds";
       egress_nat_rule_ids =
         Prop.computed __type __id "egress_nat_rule_ids";
       enable_bgp = Prop.computed __type __id "enable_bgp";
       express_route_circuit_id =
         Prop.computed __type __id "express_route_circuit_id";
       express_route_gateway_bypass =
         Prop.computed __type __id "express_route_gateway_bypass";
       id = Prop.computed __type __id "id";
       ingress_nat_rule_ids =
         Prop.computed __type __id "ingress_nat_rule_ids";
       local_azure_ip_address_enabled =
         Prop.computed __type __id "local_azure_ip_address_enabled";
       local_network_gateway_id =
         Prop.computed __type __id "local_network_gateway_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peer_virtual_network_gateway_id =
         Prop.computed __type __id "peer_virtual_network_gateway_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_weight = Prop.computed __type __id "routing_weight";
       shared_key = Prop.computed __type __id "shared_key";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       use_policy_based_traffic_selectors =
         Prop.computed __type __id
           "use_policy_based_traffic_selectors";
       virtual_network_gateway_id =
         Prop.computed __type __id "virtual_network_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_gateway_connection
        (azurerm_virtual_network_gateway_connection
           ?authorization_key ?connection_mode ?connection_protocol
           ?dpd_timeout_seconds ?egress_nat_rule_ids ?enable_bgp
           ?express_route_circuit_id ?express_route_gateway_bypass
           ?id ?ingress_nat_rule_ids ?local_azure_ip_address_enabled
           ?local_network_gateway_id ?peer_virtual_network_gateway_id
           ?routing_weight ?shared_key ?tags
           ?use_policy_based_traffic_selectors ~custom_bgp_addresses
           ~ipsec_policy ?timeouts ~traffic_selector_policy ~location
           ~name ~resource_group_name ~type_
           ~virtual_network_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_key ?connection_mode
    ?connection_protocol ?dpd_timeout_seconds ?egress_nat_rule_ids
    ?enable_bgp ?express_route_circuit_id
    ?express_route_gateway_bypass ?id ?ingress_nat_rule_ids
    ?local_azure_ip_address_enabled ?local_network_gateway_id
    ?peer_virtual_network_gateway_id ?routing_weight ?shared_key
    ?tags ?use_policy_based_traffic_selectors
    ?(custom_bgp_addresses = []) ?(ipsec_policy = []) ?timeouts
    ?(traffic_selector_policy = []) ~location ~name
    ~resource_group_name ~type_ ~virtual_network_gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_key ?connection_mode ?connection_protocol
      ?dpd_timeout_seconds ?egress_nat_rule_ids ?enable_bgp
      ?express_route_circuit_id ?express_route_gateway_bypass ?id
      ?ingress_nat_rule_ids ?local_azure_ip_address_enabled
      ?local_network_gateway_id ?peer_virtual_network_gateway_id
      ?routing_weight ?shared_key ?tags
      ?use_policy_based_traffic_selectors ~custom_bgp_addresses
      ~ipsec_policy ?timeouts ~traffic_selector_policy ~location
      ~name ~resource_group_name ~type_ ~virtual_network_gateway_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
