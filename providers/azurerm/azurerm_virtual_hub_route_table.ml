(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  destinations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  destinations_type : string prop;
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       destinations = v_destinations;
       destinations_type = v_destinations_type;
       name = v_name;
       next_hop = v_next_hop;
       next_hop_type = v_next_hop_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_virtual_hub_route_table = {
  id : string prop option; [@option]
  labels : string prop list option; [@option]
  name : string prop;
  virtual_hub_id : string prop;
  route : route list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_route_table) -> ()

let yojson_of_azurerm_virtual_hub_route_table =
  (function
   | {
       id = v_id;
       labels = v_labels;
       name = v_name;
       virtual_hub_id = v_virtual_hub_id;
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
         if [] = v_route then bnds
         else
           let arg = (yojson_of_list yojson_of_route) v_route in
           let bnd = "route", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_hub_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_route_table

[@@@deriving.end]

let route ?next_hop_type ~destinations ~destinations_type ~name
    ~next_hop () : route =
  { destinations; destinations_type; name; next_hop; next_hop_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_route_table ?id ?labels ?timeouts ~name
    ~virtual_hub_id ~route () : azurerm_virtual_hub_route_table =
  { id; labels; name; virtual_hub_id; route; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  labels : string list prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?labels ?timeouts ~name ~virtual_hub_id ~route __id =
  let __type = "azurerm_virtual_hub_route_table" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_route_table
        (azurerm_virtual_hub_route_table ?id ?labels ?timeouts ~name
           ~virtual_hub_id ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?timeouts ~name ~virtual_hub_id
    ~route __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?timeouts ~name ~virtual_hub_id ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
