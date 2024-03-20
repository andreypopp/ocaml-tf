(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing__propagated_route_table = {
  labels : string prop list option; [@option]
  route_table_ids : string prop list option; [@option]
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
         match v_route_table_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_table_ids", arg in
             bnd :: bnds
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

type routing__static_vnet_route = {
  address_prefixes : string prop list option; [@option]
  name : string prop option; [@option]
  next_hop_ip_address : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__static_vnet_route) -> ()

let yojson_of_routing__static_vnet_route =
  (function
   | {
       address_prefixes = v_address_prefixes;
       name = v_name;
       next_hop_ip_address = v_next_hop_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_next_hop_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__static_vnet_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__static_vnet_route

[@@@deriving.end]

type routing = {
  associated_route_table_id : string prop option; [@option]
  inbound_route_map_id : string prop option; [@option]
  outbound_route_map_id : string prop option; [@option]
  static_vnet_local_route_override_criteria : string prop option;
      [@option]
  propagated_route_table : routing__propagated_route_table list;
  static_vnet_route : routing__static_vnet_route list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing) -> ()

let yojson_of_routing =
  (function
   | {
       associated_route_table_id = v_associated_route_table_id;
       inbound_route_map_id = v_inbound_route_map_id;
       outbound_route_map_id = v_outbound_route_map_id;
       static_vnet_local_route_override_criteria =
         v_static_vnet_local_route_override_criteria;
       propagated_route_table = v_propagated_route_table;
       static_vnet_route = v_static_vnet_route;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing__static_vnet_route
             v_static_vnet_route
         in
         ("static_vnet_route", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing__propagated_route_table
             v_propagated_route_table
         in
         ("propagated_route_table", arg) :: bnds
       in
       let bnds =
         match v_static_vnet_local_route_override_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "static_vnet_local_route_override_criteria", arg
             in
             bnd :: bnds
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
         match v_associated_route_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associated_route_table_id", arg in
             bnd :: bnds
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

type azurerm_virtual_hub_connection = {
  id : string prop option; [@option]
  internet_security_enabled : bool prop option; [@option]
  name : string prop;
  remote_virtual_network_id : string prop;
  virtual_hub_id : string prop;
  routing : routing list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_connection) -> ()

let yojson_of_azurerm_virtual_hub_connection =
  (function
   | {
       id = v_id;
       internet_security_enabled = v_internet_security_enabled;
       name = v_name;
       remote_virtual_network_id = v_remote_virtual_network_id;
       virtual_hub_id = v_virtual_hub_id;
       routing = v_routing;
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
         let arg = yojson_of_list yojson_of_routing v_routing in
         ("routing", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_virtual_network_id
         in
         ("remote_virtual_network_id", arg) :: bnds
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
    : azurerm_virtual_hub_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_connection

[@@@deriving.end]

let routing__propagated_route_table ?labels ?route_table_ids () :
    routing__propagated_route_table =
  { labels; route_table_ids }

let routing__static_vnet_route ?address_prefixes ?name
    ?next_hop_ip_address () : routing__static_vnet_route =
  { address_prefixes; name; next_hop_ip_address }

let routing ?associated_route_table_id ?inbound_route_map_id
    ?outbound_route_map_id ?static_vnet_local_route_override_criteria
    ~propagated_route_table ~static_vnet_route () : routing =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    static_vnet_local_route_override_criteria;
    propagated_route_table;
    static_vnet_route;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_connection ?id ?internet_security_enabled
    ?timeouts ~name ~remote_virtual_network_id ~virtual_hub_id
    ~routing () : azurerm_virtual_hub_connection =
  {
    id;
    internet_security_enabled;
    name;
    remote_virtual_network_id;
    virtual_hub_id;
    routing;
    timeouts;
  }

type t = {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?internet_security_enabled ?timeouts ~name
    ~remote_virtual_network_id ~virtual_hub_id ~routing __id =
  let __type = "azurerm_virtual_hub_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       internet_security_enabled =
         Prop.computed __type __id "internet_security_enabled";
       name = Prop.computed __type __id "name";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_connection
        (azurerm_virtual_hub_connection ?id
           ?internet_security_enabled ?timeouts ~name
           ~remote_virtual_network_id ~virtual_hub_id ~routing ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?internet_security_enabled ?timeouts
    ~name ~remote_virtual_network_id ~virtual_hub_id ~routing __id =
  let (r : _ Tf_core.resource) =
    make ?id ?internet_security_enabled ?timeouts ~name
      ~remote_virtual_network_id ~virtual_hub_id ~routing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
