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

type routing = {
  associated_route_table_id : string prop option; [@option]
  inbound_route_map_id : string prop option; [@option]
  outbound_route_map_id : string prop option; [@option]
  propagated_route_table : routing__propagated_route_table list;
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

type azurerm_express_route_connection = {
  authorization_key : string prop option; [@option]
  enable_internet_security : bool prop option; [@option]
  express_route_circuit_peering_id : string prop;
  express_route_gateway_bypass_enabled : bool prop option; [@option]
  express_route_gateway_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  routing_weight : float prop option; [@option]
  routing : routing list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_connection) -> ()

let yojson_of_azurerm_express_route_connection =
  (function
   | {
       authorization_key = v_authorization_key;
       enable_internet_security = v_enable_internet_security;
       express_route_circuit_peering_id =
         v_express_route_circuit_peering_id;
       express_route_gateway_bypass_enabled =
         v_express_route_gateway_bypass_enabled;
       express_route_gateway_id = v_express_route_gateway_id;
       id = v_id;
       name = v_name;
       routing_weight = v_routing_weight;
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
         match v_routing_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "routing_weight", arg in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_express_route_gateway_id
         in
         ("express_route_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_express_route_gateway_bypass_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "express_route_gateway_bypass_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_express_route_circuit_peering_id
         in
         ("express_route_circuit_peering_id", arg) :: bnds
       in
       let bnds =
         match v_enable_internet_security with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_internet_security", arg in
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
    : azurerm_express_route_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_connection

[@@@deriving.end]

let routing__propagated_route_table ?labels ?route_table_ids () :
    routing__propagated_route_table =
  { labels; route_table_ids }

let routing ?associated_route_table_id ?inbound_route_map_id
    ?outbound_route_map_id ?(propagated_route_table = []) () :
    routing =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    propagated_route_table;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_connection ?authorization_key
    ?enable_internet_security ?express_route_gateway_bypass_enabled
    ?id ?routing_weight ?(routing = []) ?timeouts
    ~express_route_circuit_peering_id ~express_route_gateway_id ~name
    () : azurerm_express_route_connection =
  {
    authorization_key;
    enable_internet_security;
    express_route_circuit_peering_id;
    express_route_gateway_bypass_enabled;
    express_route_gateway_id;
    id;
    name;
    routing_weight;
    routing;
    timeouts;
  }

type t = {
  authorization_key : string prop;
  enable_internet_security : bool prop;
  express_route_circuit_peering_id : string prop;
  express_route_gateway_bypass_enabled : bool prop;
  express_route_gateway_id : string prop;
  id : string prop;
  name : string prop;
  routing_weight : float prop;
}

let make ?authorization_key ?enable_internet_security
    ?express_route_gateway_bypass_enabled ?id ?routing_weight
    ?(routing = []) ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name __id =
  let __type = "azurerm_express_route_connection" in
  let __attrs =
    ({
       authorization_key =
         Prop.computed __type __id "authorization_key";
       enable_internet_security =
         Prop.computed __type __id "enable_internet_security";
       express_route_circuit_peering_id =
         Prop.computed __type __id "express_route_circuit_peering_id";
       express_route_gateway_bypass_enabled =
         Prop.computed __type __id
           "express_route_gateway_bypass_enabled";
       express_route_gateway_id =
         Prop.computed __type __id "express_route_gateway_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       routing_weight = Prop.computed __type __id "routing_weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_connection
        (azurerm_express_route_connection ?authorization_key
           ?enable_internet_security
           ?express_route_gateway_bypass_enabled ?id ?routing_weight
           ~routing ?timeouts ~express_route_circuit_peering_id
           ~express_route_gateway_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_key ?enable_internet_security
    ?express_route_gateway_bypass_enabled ?id ?routing_weight
    ?(routing = []) ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_key ?enable_internet_security
      ?express_route_gateway_bypass_enabled ?id ?routing_weight
      ~routing ?timeouts ~express_route_circuit_peering_id
      ~express_route_gateway_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
