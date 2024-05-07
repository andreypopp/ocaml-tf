(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  address_prefixes : string prop list;
  next_hop_ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       address_prefixes = v_address_prefixes;
       next_hop_ip_address = v_next_hop_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_ip_address
         in
         ("next_hop_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_address_prefixes
         in
         ("address_prefixes", arg) :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

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

type azurerm_virtual_hub = {
  address_prefix : string prop option; [@option]
  hub_routing_preference : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_router_auto_scale_min_capacity : float prop option;
      [@option]
  virtual_wan_id : string prop option; [@option]
  route : route list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub) -> ()

let yojson_of_azurerm_virtual_hub =
  (function
   | {
       address_prefix = v_address_prefix;
       hub_routing_preference = v_hub_routing_preference;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       virtual_router_auto_scale_min_capacity =
         v_virtual_router_auto_scale_min_capacity;
       virtual_wan_id = v_virtual_wan_id;
       route = v_route;
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
         let arg = yojson_of_list yojson_of_route v_route in
         ("route", arg) :: bnds
       in
       let bnds =
         match v_virtual_wan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_wan_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_router_auto_scale_min_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "virtual_router_auto_scale_min_capacity", arg
             in
             bnd :: bnds
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
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hub_routing_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hub_routing_preference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub

[@@@deriving.end]

let route ~address_prefixes ~next_hop_ip_address () : route =
  { address_prefixes; next_hop_ip_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub ?address_prefix ?hub_routing_preference ?id
    ?sku ?tags ?virtual_router_auto_scale_min_capacity
    ?virtual_wan_id ?timeouts ~location ~name ~resource_group_name
    ~route () : azurerm_virtual_hub =
  {
    address_prefix;
    hub_routing_preference;
    id;
    location;
    name;
    resource_group_name;
    sku;
    tags;
    virtual_router_auto_scale_min_capacity;
    virtual_wan_id;
    route;
    timeouts;
  }

type t = {
  tf_name : string;
  address_prefix : string prop;
  default_route_table_id : string prop;
  hub_routing_preference : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_auto_scale_min_capacity : float prop;
  virtual_router_ips : string list prop;
  virtual_wan_id : string prop;
}

let make ?address_prefix ?hub_routing_preference ?id ?sku ?tags
    ?virtual_router_auto_scale_min_capacity ?virtual_wan_id ?timeouts
    ~location ~name ~resource_group_name ~route __id =
  let __type = "azurerm_virtual_hub" in
  let __attrs =
    ({
       tf_name = __id;
       address_prefix = Prop.computed __type __id "address_prefix";
       default_route_table_id =
         Prop.computed __type __id "default_route_table_id";
       hub_routing_preference =
         Prop.computed __type __id "hub_routing_preference";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       virtual_router_asn =
         Prop.computed __type __id "virtual_router_asn";
       virtual_router_auto_scale_min_capacity =
         Prop.computed __type __id
           "virtual_router_auto_scale_min_capacity";
       virtual_router_ips =
         Prop.computed __type __id "virtual_router_ips";
       virtual_wan_id = Prop.computed __type __id "virtual_wan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub
        (azurerm_virtual_hub ?address_prefix ?hub_routing_preference
           ?id ?sku ?tags ?virtual_router_auto_scale_min_capacity
           ?virtual_wan_id ?timeouts ~location ~name
           ~resource_group_name ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?address_prefix ?hub_routing_preference ?id
    ?sku ?tags ?virtual_router_auto_scale_min_capacity
    ?virtual_wan_id ?timeouts ~location ~name ~resource_group_name
    ~route __id =
  let (r : _ Tf_core.resource) =
    make ?address_prefix ?hub_routing_preference ?id ?sku ?tags
      ?virtual_router_auto_scale_min_capacity ?virtual_wan_id
      ?timeouts ~location ~name ~resource_group_name ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
