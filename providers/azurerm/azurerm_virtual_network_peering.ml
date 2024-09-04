(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_virtual_network_peering = {
  allow_forwarded_traffic : bool prop option; [@option]
  allow_gateway_transit : bool prop option; [@option]
  allow_virtual_network_access : bool prop option; [@option]
  id : string prop option; [@option]
  local_subnet_names : string prop list option; [@option]
  name : string prop;
  only_ipv6_peering_enabled : bool prop option; [@option]
  peer_complete_virtual_networks_enabled : bool prop option;
      [@option]
  remote_subnet_names : string prop list option; [@option]
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  triggers : string prop Tf_core.assoc option; [@option]
  use_remote_gateways : bool prop option; [@option]
  virtual_network_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network_peering) -> ()

let yojson_of_azurerm_virtual_network_peering =
  (function
   | {
       allow_forwarded_traffic = v_allow_forwarded_traffic;
       allow_gateway_transit = v_allow_gateway_transit;
       allow_virtual_network_access = v_allow_virtual_network_access;
       id = v_id;
       local_subnet_names = v_local_subnet_names;
       name = v_name;
       only_ipv6_peering_enabled = v_only_ipv6_peering_enabled;
       peer_complete_virtual_networks_enabled =
         v_peer_complete_virtual_networks_enabled;
       remote_subnet_names = v_remote_subnet_names;
       remote_virtual_network_id = v_remote_virtual_network_id;
       resource_group_name = v_resource_group_name;
       triggers = v_triggers;
       use_remote_gateways = v_use_remote_gateways;
       virtual_network_name = v_virtual_network_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_virtual_network_name
         in
         ("virtual_network_name", arg) :: bnds
       in
       let bnds =
         match v_use_remote_gateways with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_remote_gateways", arg in
             bnd :: bnds
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_virtual_network_id
         in
         ("remote_virtual_network_id", arg) :: bnds
       in
       let bnds =
         match v_remote_subnet_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "remote_subnet_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_complete_virtual_networks_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "peer_complete_virtual_networks_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_only_ipv6_peering_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "only_ipv6_peering_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_local_subnet_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_subnet_names", arg in
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
         match v_allow_virtual_network_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_virtual_network_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_gateway_transit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_gateway_transit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_forwarded_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_forwarded_traffic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_network_peering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network_peering

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_peering ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?local_subnet_names ?only_ipv6_peering_enabled
    ?peer_complete_virtual_networks_enabled ?remote_subnet_names
    ?triggers ?use_remote_gateways ?timeouts ~name
    ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name () : azurerm_virtual_network_peering =
  {
    allow_forwarded_traffic;
    allow_gateway_transit;
    allow_virtual_network_access;
    id;
    local_subnet_names;
    name;
    only_ipv6_peering_enabled;
    peer_complete_virtual_networks_enabled;
    remote_subnet_names;
    remote_virtual_network_id;
    resource_group_name;
    triggers;
    use_remote_gateways;
    virtual_network_name;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  local_subnet_names : string list prop;
  name : string prop;
  only_ipv6_peering_enabled : bool prop;
  peer_complete_virtual_networks_enabled : bool prop;
  remote_subnet_names : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  triggers : string Tf_core.assoc prop;
  use_remote_gateways : bool prop;
  virtual_network_name : string prop;
}

let make ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?local_subnet_names
    ?only_ipv6_peering_enabled
    ?peer_complete_virtual_networks_enabled ?remote_subnet_names
    ?triggers ?use_remote_gateways ?timeouts ~name
    ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name __id =
  let __type = "azurerm_virtual_network_peering" in
  let __attrs =
    ({
       tf_name = __id;
       allow_forwarded_traffic =
         Prop.computed __type __id "allow_forwarded_traffic";
       allow_gateway_transit =
         Prop.computed __type __id "allow_gateway_transit";
       allow_virtual_network_access =
         Prop.computed __type __id "allow_virtual_network_access";
       id = Prop.computed __type __id "id";
       local_subnet_names =
         Prop.computed __type __id "local_subnet_names";
       name = Prop.computed __type __id "name";
       only_ipv6_peering_enabled =
         Prop.computed __type __id "only_ipv6_peering_enabled";
       peer_complete_virtual_networks_enabled =
         Prop.computed __type __id
           "peer_complete_virtual_networks_enabled";
       remote_subnet_names =
         Prop.computed __type __id "remote_subnet_names";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       triggers = Prop.computed __type __id "triggers";
       use_remote_gateways =
         Prop.computed __type __id "use_remote_gateways";
       virtual_network_name =
         Prop.computed __type __id "virtual_network_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_peering
        (azurerm_virtual_network_peering ?allow_forwarded_traffic
           ?allow_gateway_transit ?allow_virtual_network_access ?id
           ?local_subnet_names ?only_ipv6_peering_enabled
           ?peer_complete_virtual_networks_enabled
           ?remote_subnet_names ?triggers ?use_remote_gateways
           ?timeouts ~name ~remote_virtual_network_id
           ~resource_group_name ~virtual_network_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?local_subnet_names ?only_ipv6_peering_enabled
    ?peer_complete_virtual_networks_enabled ?remote_subnet_names
    ?triggers ?use_remote_gateways ?timeouts ~name
    ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_forwarded_traffic ?allow_gateway_transit
      ?allow_virtual_network_access ?id ?local_subnet_names
      ?only_ipv6_peering_enabled
      ?peer_complete_virtual_networks_enabled ?remote_subnet_names
      ?triggers ?use_remote_gateways ?timeouts ~name
      ~remote_virtual_network_id ~resource_group_name
      ~virtual_network_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
