(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_header = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_header) -> ()

let yojson_of_custom_header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : custom_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_header

[@@@deriving.end]

type subnet = {
  first : string prop;
  last : string prop option; [@option]
  scope : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet) -> ()

let yojson_of_subnet =
  (function
   | { first = v_first; last = v_last; scope = v_scope } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first in
         ("first", arg) :: bnds
       in
       `Assoc bnds
    : subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet

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

type azurerm_traffic_manager_nested_endpoint = {
  enabled : bool prop option; [@option]
  endpoint_location : string prop option; [@option]
  geo_mappings : string prop list option; [@option]
  id : string prop option; [@option]
  minimum_child_endpoints : float prop;
  minimum_required_child_endpoints_ipv4 : float prop option;
      [@option]
  minimum_required_child_endpoints_ipv6 : float prop option;
      [@option]
  name : string prop;
  priority : float prop option; [@option]
  profile_id : string prop;
  target_resource_id : string prop;
  weight : float prop option; [@option]
  custom_header : custom_header list;
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_traffic_manager_nested_endpoint) -> ()

let yojson_of_azurerm_traffic_manager_nested_endpoint =
  (function
   | {
       enabled = v_enabled;
       endpoint_location = v_endpoint_location;
       geo_mappings = v_geo_mappings;
       id = v_id;
       minimum_child_endpoints = v_minimum_child_endpoints;
       minimum_required_child_endpoints_ipv4 =
         v_minimum_required_child_endpoints_ipv4;
       minimum_required_child_endpoints_ipv6 =
         v_minimum_required_child_endpoints_ipv6;
       name = v_name;
       priority = v_priority;
       profile_id = v_profile_id;
       target_resource_id = v_target_resource_id;
       weight = v_weight;
       custom_header = v_custom_header;
       subnet = v_subnet;
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
         let arg = yojson_of_list yojson_of_subnet v_subnet in
         ("subnet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_header v_custom_header
         in
         ("custom_header", arg) :: bnds
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_id
         in
         ("target_resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_profile_id in
         ("profile_id", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_required_child_endpoints_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "minimum_required_child_endpoints_ipv6", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_required_child_endpoints_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "minimum_required_child_endpoints_ipv4", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_minimum_child_endpoints
         in
         ("minimum_child_endpoints", arg) :: bnds
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
         match v_geo_mappings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "geo_mappings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_location", arg in
             bnd :: bnds
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
    : azurerm_traffic_manager_nested_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_traffic_manager_nested_endpoint

[@@@deriving.end]

let custom_header ~name ~value () : custom_header = { name; value }
let subnet ?last ?scope ~first () : subnet = { first; last; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_traffic_manager_nested_endpoint ?enabled
    ?endpoint_location ?geo_mappings ?id
    ?minimum_required_child_endpoints_ipv4
    ?minimum_required_child_endpoints_ipv6 ?priority ?weight
    ?(custom_header = []) ?(subnet = []) ?timeouts
    ~minimum_child_endpoints ~name ~profile_id ~target_resource_id ()
    : azurerm_traffic_manager_nested_endpoint =
  {
    enabled;
    endpoint_location;
    geo_mappings;
    id;
    minimum_child_endpoints;
    minimum_required_child_endpoints_ipv4;
    minimum_required_child_endpoints_ipv6;
    name;
    priority;
    profile_id;
    target_resource_id;
    weight;
    custom_header;
    subnet;
    timeouts;
  }

type t = {
  enabled : bool prop;
  endpoint_location : string prop;
  geo_mappings : string list prop;
  id : string prop;
  minimum_child_endpoints : float prop;
  minimum_required_child_endpoints_ipv4 : float prop;
  minimum_required_child_endpoints_ipv6 : float prop;
  name : string prop;
  priority : float prop;
  profile_id : string prop;
  target_resource_id : string prop;
  weight : float prop;
}

let make ?enabled ?endpoint_location ?geo_mappings ?id
    ?minimum_required_child_endpoints_ipv4
    ?minimum_required_child_endpoints_ipv6 ?priority ?weight
    ?(custom_header = []) ?(subnet = []) ?timeouts
    ~minimum_child_endpoints ~name ~profile_id ~target_resource_id
    __id =
  let __type = "azurerm_traffic_manager_nested_endpoint" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       endpoint_location =
         Prop.computed __type __id "endpoint_location";
       geo_mappings = Prop.computed __type __id "geo_mappings";
       id = Prop.computed __type __id "id";
       minimum_child_endpoints =
         Prop.computed __type __id "minimum_child_endpoints";
       minimum_required_child_endpoints_ipv4 =
         Prop.computed __type __id
           "minimum_required_child_endpoints_ipv4";
       minimum_required_child_endpoints_ipv6 =
         Prop.computed __type __id
           "minimum_required_child_endpoints_ipv6";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       profile_id = Prop.computed __type __id "profile_id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_traffic_manager_nested_endpoint
        (azurerm_traffic_manager_nested_endpoint ?enabled
           ?endpoint_location ?geo_mappings ?id
           ?minimum_required_child_endpoints_ipv4
           ?minimum_required_child_endpoints_ipv6 ?priority ?weight
           ~custom_header ~subnet ?timeouts ~minimum_child_endpoints
           ~name ~profile_id ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?endpoint_location ?geo_mappings ?id
    ?minimum_required_child_endpoints_ipv4
    ?minimum_required_child_endpoints_ipv6 ?priority ?weight
    ?(custom_header = []) ?(subnet = []) ?timeouts
    ~minimum_child_endpoints ~name ~profile_id ~target_resource_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?endpoint_location ?geo_mappings ?id
      ?minimum_required_child_endpoints_ipv4
      ?minimum_required_child_endpoints_ipv6 ?priority ?weight
      ~custom_header ~subnet ?timeouts ~minimum_child_endpoints ~name
      ~profile_id ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
