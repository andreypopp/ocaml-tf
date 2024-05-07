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

type azurerm_route = {
  address_prefix : string prop;
  id : string prop option; [@option]
  name : string prop;
  next_hop_in_ip_address : string prop option; [@option]
  next_hop_type : string prop;
  resource_group_name : string prop;
  route_table_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_route) -> ()

let yojson_of_azurerm_route =
  (function
   | {
       address_prefix = v_address_prefix;
       id = v_id;
       name = v_name;
       next_hop_in_ip_address = v_next_hop_in_ip_address;
       next_hop_type = v_next_hop_type;
       resource_group_name = v_resource_group_name;
       route_table_name = v_route_table_name;
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
           yojson_of_prop yojson_of_string v_route_table_name
         in
         ("route_table_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_type in
         ("next_hop_type", arg) :: bnds
       in
       let bnds =
         match v_next_hop_in_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_in_ip_address", arg in
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
           yojson_of_prop yojson_of_string v_address_prefix
         in
         ("address_prefix", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_route

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name () : azurerm_route =
  {
    address_prefix;
    id;
    name;
    next_hop_in_ip_address;
    next_hop_type;
    resource_group_name;
    route_table_name;
    timeouts;
  }

type t = {
  tf_name : string;
  address_prefix : string prop;
  id : string prop;
  name : string prop;
  next_hop_in_ip_address : string prop;
  next_hop_type : string prop;
  resource_group_name : string prop;
  route_table_name : string prop;
}

let make ?id ?next_hop_in_ip_address ?timeouts ~address_prefix ~name
    ~next_hop_type ~resource_group_name ~route_table_name __id =
  let __type = "azurerm_route" in
  let __attrs =
    ({
       tf_name = __id;
       address_prefix = Prop.computed __type __id "address_prefix";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       next_hop_in_ip_address =
         Prop.computed __type __id "next_hop_in_ip_address";
       next_hop_type = Prop.computed __type __id "next_hop_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route_table_name =
         Prop.computed __type __id "route_table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route
        (azurerm_route ?id ?next_hop_in_ip_address ?timeouts
           ~address_prefix ~name ~next_hop_type ~resource_group_name
           ~route_table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?next_hop_in_ip_address ?timeouts
    ~address_prefix ~name ~next_hop_type ~resource_group_name
    ~route_table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?next_hop_in_ip_address ?timeouts ~address_prefix ~name
      ~next_hop_type ~resource_group_name ~route_table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
