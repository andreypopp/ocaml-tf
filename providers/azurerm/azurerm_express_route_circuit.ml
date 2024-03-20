(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = { family : string prop; tier : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { family = v_family; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

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

type azurerm_express_route_circuit = {
  allow_classic_operations : bool prop option; [@option]
  authorization_key : string prop option; [@option]
  bandwidth_in_gbps : float prop option; [@option]
  bandwidth_in_mbps : float prop option; [@option]
  express_route_port_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  peering_location : string prop option; [@option]
  resource_group_name : string prop;
  service_provider_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_circuit) -> ()

let yojson_of_azurerm_express_route_circuit =
  (function
   | {
       allow_classic_operations = v_allow_classic_operations;
       authorization_key = v_authorization_key;
       bandwidth_in_gbps = v_bandwidth_in_gbps;
       bandwidth_in_mbps = v_bandwidth_in_mbps;
       express_route_port_id = v_express_route_port_id;
       id = v_id;
       location = v_location;
       name = v_name;
       peering_location = v_peering_location;
       resource_group_name = v_resource_group_name;
       service_provider_name = v_service_provider_name;
       tags = v_tags;
       sku = v_sku;
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
         let arg = yojson_of_list yojson_of_sku v_sku in
         ("sku", arg) :: bnds
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
         match v_service_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_peering_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peering_location", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_express_route_port_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "express_route_port_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bandwidth_in_mbps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bandwidth_in_mbps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bandwidth_in_gbps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bandwidth_in_gbps", arg in
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
       let bnds =
         match v_allow_classic_operations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_classic_operations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_circuit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_circuit

[@@@deriving.end]

let sku ~family ~tier () : sku = { family; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_circuit ?allow_classic_operations
    ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
    ?express_route_port_id ?id ?peering_location
    ?service_provider_name ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_express_route_circuit =
  {
    allow_classic_operations;
    authorization_key;
    bandwidth_in_gbps;
    bandwidth_in_mbps;
    express_route_port_id;
    id;
    location;
    name;
    peering_location;
    resource_group_name;
    service_provider_name;
    tags;
    sku;
    timeouts;
  }

type t = {
  allow_classic_operations : bool prop;
  authorization_key : string prop;
  bandwidth_in_gbps : float prop;
  bandwidth_in_mbps : float prop;
  express_route_port_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  service_key : string prop;
  service_provider_name : string prop;
  service_provider_provisioning_state : string prop;
  tags : (string * string) list prop;
}

let make ?allow_classic_operations ?authorization_key
    ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id ?id
    ?peering_location ?service_provider_name ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_express_route_circuit" in
  let __attrs =
    ({
       allow_classic_operations =
         Prop.computed __type __id "allow_classic_operations";
       authorization_key =
         Prop.computed __type __id "authorization_key";
       bandwidth_in_gbps =
         Prop.computed __type __id "bandwidth_in_gbps";
       bandwidth_in_mbps =
         Prop.computed __type __id "bandwidth_in_mbps";
       express_route_port_id =
         Prop.computed __type __id "express_route_port_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peering_location =
         Prop.computed __type __id "peering_location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_key = Prop.computed __type __id "service_key";
       service_provider_name =
         Prop.computed __type __id "service_provider_name";
       service_provider_provisioning_state =
         Prop.computed __type __id
           "service_provider_provisioning_state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit
        (azurerm_express_route_circuit ?allow_classic_operations
           ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
           ?express_route_port_id ?id ?peering_location
           ?service_provider_name ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_classic_operations ?authorization_key
    ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id ?id
    ?peering_location ?service_provider_name ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?allow_classic_operations ?authorization_key
      ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id
      ?id ?peering_location ?service_provider_name ?tags ?timeouts
      ~location ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
