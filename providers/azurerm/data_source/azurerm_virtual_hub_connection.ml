(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type routing__static_vnet_route = {
  address_prefixes : string prop list;
  name : string prop;
  next_hop_ip_address : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_ip_address
         in
         ("next_hop_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : routing__static_vnet_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__static_vnet_route

[@@@deriving.end]

type routing__propagated_route_table = {
  labels : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : routing__propagated_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__propagated_route_table

[@@@deriving.end]

type routing = {
  associated_route_table_id : string prop;
  inbound_route_map_id : string prop;
  outbound_route_map_id : string prop;
  propagated_route_table : routing__propagated_route_table list;
  static_vnet_local_route_override_criteria : string prop;
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
       propagated_route_table = v_propagated_route_table;
       static_vnet_local_route_override_criteria =
         v_static_vnet_local_route_override_criteria;
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
           yojson_of_prop yojson_of_string
             v_static_vnet_local_route_override_criteria
         in
         ("static_vnet_local_route_override_criteria", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing__propagated_route_table
             v_propagated_route_table
         in
         ("propagated_route_table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_outbound_route_map_id
         in
         ("outbound_route_map_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_inbound_route_map_id
         in
         ("inbound_route_map_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_associated_route_table_id
         in
         ("associated_route_table_id", arg) :: bnds
       in
       `Assoc bnds
    : routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing

[@@@deriving.end]

type azurerm_virtual_hub_connection = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  virtual_hub_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_connection) -> ()

let yojson_of_azurerm_virtual_hub_connection =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       virtual_hub_name = v_virtual_hub_name;
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
           yojson_of_prop yojson_of_string v_virtual_hub_name
         in
         ("virtual_hub_name", arg) :: bnds
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

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_hub_connection ?id ?timeouts ~name
    ~resource_group_name ~virtual_hub_name () :
    azurerm_virtual_hub_connection =
  { id; name; resource_group_name; virtual_hub_name; timeouts }

type t = {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  routing : routing list prop;
  virtual_hub_id : string prop;
  virtual_hub_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~virtual_hub_name
    __id =
  let __type = "azurerm_virtual_hub_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       internet_security_enabled =
         Prop.computed __type __id "internet_security_enabled";
       name = Prop.computed __type __id "name";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing = Prop.computed __type __id "routing";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
       virtual_hub_name =
         Prop.computed __type __id "virtual_hub_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_connection
        (azurerm_virtual_hub_connection ?id ?timeouts ~name
           ~resource_group_name ~virtual_hub_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~virtual_hub_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~virtual_hub_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
