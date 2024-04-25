(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing__propagated_route_table = {
  labels : string prop list option; [@option]
  route_table_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__propagated_route_table) -> ()

let yojson_of_routing__propagated_route_table =
  (function
   | { labels = v_labels; route_table_ids = v_route_table_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_route_table_ids
         in
         ("route_table_ids", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__propagated_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__propagated_route_table

[@@@deriving.end]

type routing = {
  associated_route_table : string prop;
  inbound_route_map_id : string prop option; [@option]
  outbound_route_map_id : string prop option; [@option]
  propagated_route_table : routing__propagated_route_table list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing) -> ()

let yojson_of_routing =
  (function
   | {
       associated_route_table = v_associated_route_table;
       inbound_route_map_id = v_inbound_route_map_id;
       outbound_route_map_id = v_outbound_route_map_id;
       propagated_route_table = v_propagated_route_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing__propagated_route_table
             v_propagated_route_table
         in
         ("propagated_route_table", arg) :: bnds
       in
       let bnds =
         match v_outbound_route_map_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_route_map_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inbound_route_map_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inbound_route_map_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_associated_route_table
         in
         ("associated_route_table", arg) :: bnds
       in
       `Assoc bnds
    : routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing

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
  local_address_ranges : string prop list;
  remote_address_ranges : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_selector_policy) -> ()

let yojson_of_traffic_selector_policy =
  (function
   | {
       local_address_ranges = v_local_address_ranges;
       remote_address_ranges = v_remote_address_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_remote_address_ranges
         in
         ("remote_address_ranges", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_local_address_ranges
         in
         ("local_address_ranges", arg) :: bnds
       in
       `Assoc bnds
    : traffic_selector_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_selector_policy

[@@@deriving.end]

type vpn_link__custom_bgp_address = {
  ip_address : string prop;
  ip_configuration_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_link__custom_bgp_address) -> ()

let yojson_of_vpn_link__custom_bgp_address =
  (function
   | {
       ip_address = v_ip_address;
       ip_configuration_id = v_ip_configuration_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_configuration_id
         in
         ("ip_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : vpn_link__custom_bgp_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_link__custom_bgp_address

[@@@deriving.end]

type vpn_link__ipsec_policy = {
  dh_group : string prop;
  encryption_algorithm : string prop;
  ike_encryption_algorithm : string prop;
  ike_integrity_algorithm : string prop;
  integrity_algorithm : string prop;
  pfs_group : string prop;
  sa_data_size_kb : float prop;
  sa_lifetime_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_link__ipsec_policy) -> ()

let yojson_of_vpn_link__ipsec_policy =
  (function
   | {
       dh_group = v_dh_group;
       encryption_algorithm = v_encryption_algorithm;
       ike_encryption_algorithm = v_ike_encryption_algorithm;
       ike_integrity_algorithm = v_ike_integrity_algorithm;
       integrity_algorithm = v_integrity_algorithm;
       pfs_group = v_pfs_group;
       sa_data_size_kb = v_sa_data_size_kb;
       sa_lifetime_sec = v_sa_lifetime_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_lifetime_sec
         in
         ("sa_lifetime_sec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_data_size_kb
         in
         ("sa_data_size_kb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pfs_group in
         ("pfs_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integrity_algorithm
         in
         ("integrity_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ike_integrity_algorithm
         in
         ("ike_integrity_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ike_encryption_algorithm
         in
         ("ike_encryption_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_algorithm
         in
         ("encryption_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dh_group in
         ("dh_group", arg) :: bnds
       in
       `Assoc bnds
    : vpn_link__ipsec_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_link__ipsec_policy

[@@@deriving.end]

type vpn_link = {
  bandwidth_mbps : float prop option; [@option]
  bgp_enabled : bool prop option; [@option]
  connection_mode : string prop option; [@option]
  egress_nat_rule_ids : string prop list option; [@option]
  ingress_nat_rule_ids : string prop list option; [@option]
  local_azure_ip_address_enabled : bool prop option; [@option]
  name : string prop;
  policy_based_traffic_selector_enabled : bool prop option; [@option]
  protocol : string prop option; [@option]
  ratelimit_enabled : bool prop option; [@option]
  route_weight : float prop option; [@option]
  shared_key : string prop option; [@option]
  vpn_site_link_id : string prop;
  custom_bgp_address : vpn_link__custom_bgp_address list;
  ipsec_policy : vpn_link__ipsec_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_link) -> ()

let yojson_of_vpn_link =
  (function
   | {
       bandwidth_mbps = v_bandwidth_mbps;
       bgp_enabled = v_bgp_enabled;
       connection_mode = v_connection_mode;
       egress_nat_rule_ids = v_egress_nat_rule_ids;
       ingress_nat_rule_ids = v_ingress_nat_rule_ids;
       local_azure_ip_address_enabled =
         v_local_azure_ip_address_enabled;
       name = v_name;
       policy_based_traffic_selector_enabled =
         v_policy_based_traffic_selector_enabled;
       protocol = v_protocol;
       ratelimit_enabled = v_ratelimit_enabled;
       route_weight = v_route_weight;
       shared_key = v_shared_key;
       vpn_site_link_id = v_vpn_site_link_id;
       custom_bgp_address = v_custom_bgp_address;
       ipsec_policy = v_ipsec_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpn_link__ipsec_policy
             v_ipsec_policy
         in
         ("ipsec_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpn_link__custom_bgp_address
             v_custom_bgp_address
         in
         ("custom_bgp_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpn_site_link_id
         in
         ("vpn_site_link_id", arg) :: bnds
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
         match v_route_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "route_weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ratelimit_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ratelimit_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_based_traffic_selector_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "policy_based_traffic_selector_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_connection_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgp_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bgp_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bandwidth_mbps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bandwidth_mbps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpn_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_link

[@@@deriving.end]

type azurerm_vpn_gateway_connection = {
  id : string prop option; [@option]
  internet_security_enabled : bool prop option; [@option]
  name : string prop;
  remote_vpn_site_id : string prop;
  vpn_gateway_id : string prop;
  routing : routing list;
  timeouts : timeouts option;
  traffic_selector_policy : traffic_selector_policy list;
  vpn_link : vpn_link list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_gateway_connection) -> ()

let yojson_of_azurerm_vpn_gateway_connection =
  (function
   | {
       id = v_id;
       internet_security_enabled = v_internet_security_enabled;
       name = v_name;
       remote_vpn_site_id = v_remote_vpn_site_id;
       vpn_gateway_id = v_vpn_gateway_id;
       routing = v_routing;
       timeouts = v_timeouts;
       traffic_selector_policy = v_traffic_selector_policy;
       vpn_link = v_vpn_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_vpn_link v_vpn_link in
         ("vpn_link", arg) :: bnds
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
         let arg = yojson_of_list yojson_of_routing v_routing in
         ("routing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpn_gateway_id
         in
         ("vpn_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_vpn_site_id
         in
         ("remote_vpn_site_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_internet_security_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_security_enabled", arg in
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
       `Assoc bnds
    : azurerm_vpn_gateway_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_gateway_connection

[@@@deriving.end]

let routing__propagated_route_table ?labels ~route_table_ids () :
    routing__propagated_route_table =
  { labels; route_table_ids }

let routing ?inbound_route_map_id ?outbound_route_map_id
    ?(propagated_route_table = []) ~associated_route_table () :
    routing =
  {
    associated_route_table;
    inbound_route_map_id;
    outbound_route_map_id;
    propagated_route_table;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let traffic_selector_policy ~local_address_ranges
    ~remote_address_ranges () : traffic_selector_policy =
  { local_address_ranges; remote_address_ranges }

let vpn_link__custom_bgp_address ~ip_address ~ip_configuration_id ()
    : vpn_link__custom_bgp_address =
  { ip_address; ip_configuration_id }

let vpn_link__ipsec_policy ~dh_group ~encryption_algorithm
    ~ike_encryption_algorithm ~ike_integrity_algorithm
    ~integrity_algorithm ~pfs_group ~sa_data_size_kb ~sa_lifetime_sec
    () : vpn_link__ipsec_policy =
  {
    dh_group;
    encryption_algorithm;
    ike_encryption_algorithm;
    ike_integrity_algorithm;
    integrity_algorithm;
    pfs_group;
    sa_data_size_kb;
    sa_lifetime_sec;
  }

let vpn_link ?bandwidth_mbps ?bgp_enabled ?connection_mode
    ?egress_nat_rule_ids ?ingress_nat_rule_ids
    ?local_azure_ip_address_enabled
    ?policy_based_traffic_selector_enabled ?protocol
    ?ratelimit_enabled ?route_weight ?shared_key ?(ipsec_policy = [])
    ~name ~vpn_site_link_id ~custom_bgp_address () : vpn_link =
  {
    bandwidth_mbps;
    bgp_enabled;
    connection_mode;
    egress_nat_rule_ids;
    ingress_nat_rule_ids;
    local_azure_ip_address_enabled;
    name;
    policy_based_traffic_selector_enabled;
    protocol;
    ratelimit_enabled;
    route_weight;
    shared_key;
    vpn_site_link_id;
    custom_bgp_address;
    ipsec_policy;
  }

let azurerm_vpn_gateway_connection ?id ?internet_security_enabled
    ?(routing = []) ?timeouts ~name ~remote_vpn_site_id
    ~vpn_gateway_id ~traffic_selector_policy ~vpn_link () :
    azurerm_vpn_gateway_connection =
  {
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

type t = {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_vpn_site_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?id ?internet_security_enabled ?(routing = []) ?timeouts
    ~name ~remote_vpn_site_id ~vpn_gateway_id
    ~traffic_selector_policy ~vpn_link __id =
  let __type = "azurerm_vpn_gateway_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       internet_security_enabled =
         Prop.computed __type __id "internet_security_enabled";
       name = Prop.computed __type __id "name";
       remote_vpn_site_id =
         Prop.computed __type __id "remote_vpn_site_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vpn_gateway_connection
        (azurerm_vpn_gateway_connection ?id
           ?internet_security_enabled ~routing ?timeouts ~name
           ~remote_vpn_site_id ~vpn_gateway_id
           ~traffic_selector_policy ~vpn_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?internet_security_enabled
    ?(routing = []) ?timeouts ~name ~remote_vpn_site_id
    ~vpn_gateway_id ~traffic_selector_policy ~vpn_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?internet_security_enabled ~routing ?timeouts ~name
      ~remote_vpn_site_id ~vpn_gateway_id ~traffic_selector_policy
      ~vpn_link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
