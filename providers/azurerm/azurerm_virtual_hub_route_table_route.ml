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

type azurerm_virtual_hub_route_table_route = {
  destinations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  destinations_type : string prop;
  id : string prop option; [@option]
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop option; [@option]
  route_table_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_route_table_route) -> ()

let yojson_of_azurerm_virtual_hub_route_table_route =
  (function
   | {
       destinations = v_destinations;
       destinations_type = v_destinations_type;
       id = v_id;
       name = v_name;
       next_hop = v_next_hop;
       next_hop_type = v_next_hop_type;
       route_table_id = v_route_table_id;
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
           yojson_of_prop yojson_of_string v_route_table_id
         in
         ("route_table_id", arg) :: bnds
       in
       let bnds =
         match v_next_hop_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop in
         ("next_hop", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_destinations_type
         in
         ("destinations_type", arg) :: bnds
       in
       let bnds =
         if [] = v_destinations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destinations
           in
           let bnd = "destinations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_hub_route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_route_table_route

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_route_table_route ?id ?next_hop_type
    ?timeouts ~destinations ~destinations_type ~name ~next_hop
    ~route_table_id () : azurerm_virtual_hub_route_table_route =
  {
    destinations;
    destinations_type;
    id;
    name;
    next_hop;
    next_hop_type;
    route_table_id;
    timeouts;
  }

type t = {
  tf_name : string;
  destinations : string list prop;
  destinations_type : string prop;
  id : string prop;
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop;
  route_table_id : string prop;
}

let make ?id ?next_hop_type ?timeouts ~destinations
    ~destinations_type ~name ~next_hop ~route_table_id __id =
  let __type = "azurerm_virtual_hub_route_table_route" in
  let __attrs =
    ({
       tf_name = __id;
       destinations = Prop.computed __type __id "destinations";
       destinations_type =
         Prop.computed __type __id "destinations_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       next_hop = Prop.computed __type __id "next_hop";
       next_hop_type = Prop.computed __type __id "next_hop_type";
       route_table_id = Prop.computed __type __id "route_table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_route_table_route
        (azurerm_virtual_hub_route_table_route ?id ?next_hop_type
           ?timeouts ~destinations ~destinations_type ~name ~next_hop
           ~route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?next_hop_type ?timeouts ~destinations
    ~destinations_type ~name ~next_hop ~route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?next_hop_type ?timeouts ~destinations
      ~destinations_type ~name ~next_hop ~route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
