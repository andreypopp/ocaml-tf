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

type route = {
  destinations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destinations_type : string prop;
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_next_hop_type in
         ("next_hop_type", arg) :: bnds
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
         if Stdlib.( = ) [] v_destinations then bnds
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

type azurerm_virtual_hub_route_table = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  virtual_hub_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_hub_route_table) -> ()

let yojson_of_azurerm_virtual_hub_route_table =
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
    : azurerm_virtual_hub_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_hub_route_table

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_virtual_hub_route_table ?id ?timeouts ~name
    ~resource_group_name ~virtual_hub_name () :
    azurerm_virtual_hub_route_table =
  { id; name; resource_group_name; virtual_hub_name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  labels : string list prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  virtual_hub_id : string prop;
  virtual_hub_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~virtual_hub_name
    __id =
  let __type = "azurerm_virtual_hub_route_table" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route = Prop.computed __type __id "route";
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
      yojson_of_azurerm_virtual_hub_route_table
        (azurerm_virtual_hub_route_table ?id ?timeouts ~name
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
