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

type route = {
  address_prefix : string prop;
  name : string prop;
  next_hop_in_ip_address : string prop;
  next_hop_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       address_prefix = v_address_prefix;
       name = v_name;
       next_hop_in_ip_address = v_next_hop_in_ip_address;
       next_hop_type = v_next_hop_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_type in
         ("next_hop_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_in_ip_address
         in
         ("next_hop_in_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix
         in
         ("address_prefix", arg) :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

[@@@deriving.end]

type azurerm_route_table = {
  bgp_route_propagation_enabled : bool prop option; [@option]
  disable_bgp_route_propagation : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_route_table) -> ()

let yojson_of_azurerm_route_table =
  (function
   | {
       bgp_route_propagation_enabled =
         v_bgp_route_propagation_enabled;
       disable_bgp_route_propagation =
         v_disable_bgp_route_propagation;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       route = v_route;
       tags = v_tags;
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
         match v_route with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_route v in
             let bnd = "route", arg in
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
         match v_disable_bgp_route_propagation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_bgp_route_propagation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgp_route_propagation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bgp_route_propagation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_route_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_route_table

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_table ?bgp_route_propagation_enabled
    ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
    ~location ~name ~resource_group_name () : azurerm_route_table =
  {
    bgp_route_propagation_enabled;
    disable_bgp_route_propagation;
    id;
    location;
    name;
    resource_group_name;
    route;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  bgp_route_propagation_enabled : bool prop;
  disable_bgp_route_propagation : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
}

let make ?bgp_route_propagation_enabled
    ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_route_table" in
  let __attrs =
    ({
       tf_name = __id;
       bgp_route_propagation_enabled =
         Prop.computed __type __id "bgp_route_propagation_enabled";
       disable_bgp_route_propagation =
         Prop.computed __type __id "disable_bgp_route_propagation";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route = Prop.computed __type __id "route";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_table
        (azurerm_route_table ?bgp_route_propagation_enabled
           ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_route_propagation_enabled
    ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_route_propagation_enabled
      ?disable_bgp_route_propagation ?id ?route ?tags ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
