(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ipv6__microsoft_peering = {
  advertised_communities : string prop list option; [@option]
  advertised_public_prefixes : string prop list option; [@option]
  customer_asn : float prop option; [@option]
  routing_registry_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipv6__microsoft_peering) -> ()

let yojson_of_ipv6__microsoft_peering =
  (function
   | {
       advertised_communities = v_advertised_communities;
       advertised_public_prefixes = v_advertised_public_prefixes;
       customer_asn = v_customer_asn;
       routing_registry_name = v_routing_registry_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_routing_registry_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_registry_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "customer_asn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertised_public_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advertised_public_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertised_communities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advertised_communities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ipv6__microsoft_peering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipv6__microsoft_peering

[@@@deriving.end]

type ipv6 = {
  enabled : bool prop option; [@option]
  primary_peer_address_prefix : string prop;
  route_filter_id : string prop option; [@option]
  secondary_peer_address_prefix : string prop;
  microsoft_peering : ipv6__microsoft_peering list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipv6) -> ()

let yojson_of_ipv6 =
  (function
   | {
       enabled = v_enabled;
       primary_peer_address_prefix = v_primary_peer_address_prefix;
       route_filter_id = v_route_filter_id;
       secondary_peer_address_prefix =
         v_secondary_peer_address_prefix;
       microsoft_peering = v_microsoft_peering;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_microsoft_peering then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ipv6__microsoft_peering)
               v_microsoft_peering
           in
           let bnd = "microsoft_peering", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_secondary_peer_address_prefix
         in
         ("secondary_peer_address_prefix", arg) :: bnds
       in
       let bnds =
         match v_route_filter_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_filter_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_primary_peer_address_prefix
         in
         ("primary_peer_address_prefix", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ipv6 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipv6

[@@@deriving.end]

type microsoft_peering_config = {
  advertised_communities : string prop list option; [@option]
  advertised_public_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  customer_asn : float prop option; [@option]
  routing_registry_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : microsoft_peering_config) -> ()

let yojson_of_microsoft_peering_config =
  (function
   | {
       advertised_communities = v_advertised_communities;
       advertised_public_prefixes = v_advertised_public_prefixes;
       customer_asn = v_customer_asn;
       routing_registry_name = v_routing_registry_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_routing_registry_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_registry_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "customer_asn", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advertised_public_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_advertised_public_prefixes
           in
           let bnd = "advertised_public_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_advertised_communities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advertised_communities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : microsoft_peering_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_microsoft_peering_config

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

type azurerm_express_route_circuit_peering = {
  express_route_circuit_name : string prop;
  id : string prop option; [@option]
  ipv4_enabled : bool prop option; [@option]
  peer_asn : float prop option; [@option]
  peering_type : string prop;
  primary_peer_address_prefix : string prop option; [@option]
  resource_group_name : string prop;
  route_filter_id : string prop option; [@option]
  secondary_peer_address_prefix : string prop option; [@option]
  shared_key : string prop option; [@option]
  vlan_id : float prop;
  ipv6 : ipv6 list; [@default []] [@yojson_drop_default Stdlib.( = )]
  microsoft_peering_config : microsoft_peering_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_circuit_peering) -> ()

let yojson_of_azurerm_express_route_circuit_peering =
  (function
   | {
       express_route_circuit_name = v_express_route_circuit_name;
       id = v_id;
       ipv4_enabled = v_ipv4_enabled;
       peer_asn = v_peer_asn;
       peering_type = v_peering_type;
       primary_peer_address_prefix = v_primary_peer_address_prefix;
       resource_group_name = v_resource_group_name;
       route_filter_id = v_route_filter_id;
       secondary_peer_address_prefix =
         v_secondary_peer_address_prefix;
       shared_key = v_shared_key;
       vlan_id = v_vlan_id;
       ipv6 = v_ipv6;
       microsoft_peering_config = v_microsoft_peering_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_microsoft_peering_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_microsoft_peering_config)
               v_microsoft_peering_config
           in
           let bnd = "microsoft_peering_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv6 then bnds
         else
           let arg = (yojson_of_list yojson_of_ipv6) v_ipv6 in
           let bnd = "ipv6", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vlan_id in
         ("vlan_id", arg) :: bnds
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
         match v_secondary_peer_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_peer_address_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_filter_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_filter_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_primary_peer_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_peer_address_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peering_type in
         ("peering_type", arg) :: bnds
       in
       let bnds =
         match v_peer_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "peer_asn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv4_enabled", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_express_route_circuit_name
         in
         ("express_route_circuit_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_circuit_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_circuit_peering

[@@@deriving.end]

let ipv6__microsoft_peering ?advertised_communities
    ?advertised_public_prefixes ?customer_asn ?routing_registry_name
    () : ipv6__microsoft_peering =
  {
    advertised_communities;
    advertised_public_prefixes;
    customer_asn;
    routing_registry_name;
  }

let ipv6 ?enabled ?route_filter_id ?(microsoft_peering = [])
    ~primary_peer_address_prefix ~secondary_peer_address_prefix () :
    ipv6 =
  {
    enabled;
    primary_peer_address_prefix;
    route_filter_id;
    secondary_peer_address_prefix;
    microsoft_peering;
  }

let microsoft_peering_config ?advertised_communities ?customer_asn
    ?routing_registry_name ~advertised_public_prefixes () :
    microsoft_peering_config =
  {
    advertised_communities;
    advertised_public_prefixes;
    customer_asn;
    routing_registry_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_circuit_peering ?id ?ipv4_enabled ?peer_asn
    ?primary_peer_address_prefix ?route_filter_id
    ?secondary_peer_address_prefix ?shared_key ?(ipv6 = [])
    ?(microsoft_peering_config = []) ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name
    ~vlan_id () : azurerm_express_route_circuit_peering =
  {
    express_route_circuit_name;
    id;
    ipv4_enabled;
    peer_asn;
    peering_type;
    primary_peer_address_prefix;
    resource_group_name;
    route_filter_id;
    secondary_peer_address_prefix;
    shared_key;
    vlan_id;
    ipv6;
    microsoft_peering_config;
    timeouts;
  }

type t = {
  tf_name : string;
  azure_asn : float prop;
  express_route_circuit_name : string prop;
  gateway_manager_etag : string prop;
  id : string prop;
  ipv4_enabled : bool prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_azure_port : string prop;
  primary_peer_address_prefix : string prop;
  resource_group_name : string prop;
  route_filter_id : string prop;
  secondary_azure_port : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}

let make ?id ?ipv4_enabled ?peer_asn ?primary_peer_address_prefix
    ?route_filter_id ?secondary_peer_address_prefix ?shared_key
    ?(ipv6 = []) ?(microsoft_peering_config = []) ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name
    ~vlan_id __id =
  let __type = "azurerm_express_route_circuit_peering" in
  let __attrs =
    ({
       tf_name = __id;
       azure_asn = Prop.computed __type __id "azure_asn";
       express_route_circuit_name =
         Prop.computed __type __id "express_route_circuit_name";
       gateway_manager_etag =
         Prop.computed __type __id "gateway_manager_etag";
       id = Prop.computed __type __id "id";
       ipv4_enabled = Prop.computed __type __id "ipv4_enabled";
       peer_asn = Prop.computed __type __id "peer_asn";
       peering_type = Prop.computed __type __id "peering_type";
       primary_azure_port =
         Prop.computed __type __id "primary_azure_port";
       primary_peer_address_prefix =
         Prop.computed __type __id "primary_peer_address_prefix";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route_filter_id = Prop.computed __type __id "route_filter_id";
       secondary_azure_port =
         Prop.computed __type __id "secondary_azure_port";
       secondary_peer_address_prefix =
         Prop.computed __type __id "secondary_peer_address_prefix";
       shared_key = Prop.computed __type __id "shared_key";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit_peering
        (azurerm_express_route_circuit_peering ?id ?ipv4_enabled
           ?peer_asn ?primary_peer_address_prefix ?route_filter_id
           ?secondary_peer_address_prefix ?shared_key ~ipv6
           ~microsoft_peering_config ?timeouts
           ~express_route_circuit_name ~peering_type
           ~resource_group_name ~vlan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ipv4_enabled ?peer_asn
    ?primary_peer_address_prefix ?route_filter_id
    ?secondary_peer_address_prefix ?shared_key ?(ipv6 = [])
    ?(microsoft_peering_config = []) ?timeouts
    ~express_route_circuit_name ~peering_type ~resource_group_name
    ~vlan_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ipv4_enabled ?peer_asn ?primary_peer_address_prefix
      ?route_filter_id ?secondary_peer_address_prefix ?shared_key
      ~ipv6 ~microsoft_peering_config ?timeouts
      ~express_route_circuit_name ~peering_type ~resource_group_name
      ~vlan_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
