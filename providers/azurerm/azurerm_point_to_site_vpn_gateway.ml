(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_configuration__route__propagated_route_table = {
  ids : string prop list;
  labels : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : connection_configuration__route__propagated_route_table) ->
  ()

let yojson_of_connection_configuration__route__propagated_route_table
    =
  (function
   | { ids = v_ids; labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_ids
         in
         ("ids", arg) :: bnds
       in
       `Assoc bnds
    : connection_configuration__route__propagated_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_connection_configuration__route__propagated_route_table

[@@@deriving.end]

type connection_configuration__route = {
  associated_route_table_id : string prop;
  inbound_route_map_id : string prop option; [@option]
  outbound_route_map_id : string prop option; [@option]
  propagated_route_table :
    connection_configuration__route__propagated_route_table list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_configuration__route) -> ()

let yojson_of_connection_configuration__route =
  (function
   | {
       associated_route_table_id = v_associated_route_table_id;
       inbound_route_map_id = v_inbound_route_map_id;
       outbound_route_map_id = v_outbound_route_map_id;
       propagated_route_table = v_propagated_route_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connection_configuration__route__propagated_route_table
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
           yojson_of_prop yojson_of_string
             v_associated_route_table_id
         in
         ("associated_route_table_id", arg) :: bnds
       in
       `Assoc bnds
    : connection_configuration__route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_configuration__route

[@@@deriving.end]

type connection_configuration__vpn_client_address_pool = {
  address_prefixes : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : connection_configuration__vpn_client_address_pool) -> ()

let yojson_of_connection_configuration__vpn_client_address_pool =
  (function
   | { address_prefixes = v_address_prefixes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : connection_configuration__vpn_client_address_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_configuration__vpn_client_address_pool

[@@@deriving.end]

type connection_configuration = {
  internet_security_enabled : bool prop option; [@option]
  name : string prop;
  route : connection_configuration__route list;
  vpn_client_address_pool :
    connection_configuration__vpn_client_address_pool list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_configuration) -> ()

let yojson_of_connection_configuration =
  (function
   | {
       internet_security_enabled = v_internet_security_enabled;
       name = v_name;
       route = v_route;
       vpn_client_address_pool = v_vpn_client_address_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_connection_configuration__vpn_client_address_pool
             v_vpn_client_address_pool
         in
         ("vpn_client_address_pool", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connection_configuration__route
             v_route
         in
         ("route", arg) :: bnds
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
       `Assoc bnds
    : connection_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_configuration

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

type azurerm_point_to_site_vpn_gateway = {
  dns_servers : string prop list option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference_internet_enabled : bool prop option; [@option]
  scale_unit : float prop;
  tags : (string * string prop) list option; [@option]
  virtual_hub_id : string prop;
  vpn_server_configuration_id : string prop;
  connection_configuration : connection_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_point_to_site_vpn_gateway) -> ()

let yojson_of_azurerm_point_to_site_vpn_gateway =
  (function
   | {
       dns_servers = v_dns_servers;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       routing_preference_internet_enabled =
         v_routing_preference_internet_enabled;
       scale_unit = v_scale_unit;
       tags = v_tags;
       virtual_hub_id = v_virtual_hub_id;
       vpn_server_configuration_id = v_vpn_server_configuration_id;
       connection_configuration = v_connection_configuration;
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
           yojson_of_list yojson_of_connection_configuration
             v_connection_configuration
         in
         ("connection_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpn_server_configuration_id
         in
         ("vpn_server_configuration_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_scale_unit in
         ("scale_unit", arg) :: bnds
       in
       let bnds =
         match v_routing_preference_internet_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "routing_preference_internet_enabled", arg in
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
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_point_to_site_vpn_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_point_to_site_vpn_gateway

[@@@deriving.end]

let connection_configuration__route__propagated_route_table ?labels
    ~ids () : connection_configuration__route__propagated_route_table
    =
  { ids; labels }

let connection_configuration__route ?inbound_route_map_id
    ?outbound_route_map_id ~associated_route_table_id
    ~propagated_route_table () : connection_configuration__route =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    propagated_route_table;
  }

let connection_configuration__vpn_client_address_pool
    ~address_prefixes () :
    connection_configuration__vpn_client_address_pool =
  { address_prefixes }

let connection_configuration ?internet_security_enabled ~name ~route
    ~vpn_client_address_pool () : connection_configuration =
  { internet_security_enabled; name; route; vpn_client_address_pool }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_point_to_site_vpn_gateway ?dns_servers ?id
    ?routing_preference_internet_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_unit ~virtual_hub_id
    ~vpn_server_configuration_id ~connection_configuration () :
    azurerm_point_to_site_vpn_gateway =
  {
    dns_servers;
    id;
    location;
    name;
    resource_group_name;
    routing_preference_internet_enabled;
    scale_unit;
    tags;
    virtual_hub_id;
    vpn_server_configuration_id;
    connection_configuration;
    timeouts;
  }

type t = {
  dns_servers : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference_internet_enabled : bool prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
  vpn_server_configuration_id : string prop;
}

let make ?dns_servers ?id ?routing_preference_internet_enabled ?tags
    ?timeouts ~location ~name ~resource_group_name ~scale_unit
    ~virtual_hub_id ~vpn_server_configuration_id
    ~connection_configuration __id =
  let __type = "azurerm_point_to_site_vpn_gateway" in
  let __attrs =
    ({
       dns_servers = Prop.computed __type __id "dns_servers";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_preference_internet_enabled =
         Prop.computed __type __id
           "routing_preference_internet_enabled";
       scale_unit = Prop.computed __type __id "scale_unit";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
       vpn_server_configuration_id =
         Prop.computed __type __id "vpn_server_configuration_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_point_to_site_vpn_gateway
        (azurerm_point_to_site_vpn_gateway ?dns_servers ?id
           ?routing_preference_internet_enabled ?tags ?timeouts
           ~location ~name ~resource_group_name ~scale_unit
           ~virtual_hub_id ~vpn_server_configuration_id
           ~connection_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_servers ?id
    ?routing_preference_internet_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_unit ~virtual_hub_id
    ~vpn_server_configuration_id ~connection_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?dns_servers ?id ?routing_preference_internet_enabled ?tags
      ?timeouts ~location ~name ~resource_group_name ~scale_unit
      ~virtual_hub_id ~vpn_server_configuration_id
      ~connection_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
