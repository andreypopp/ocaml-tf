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

type azurerm_express_route_gateway = {
  allow_non_virtual_wan_traffic : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  tags : (string * string prop) list option; [@option]
  virtual_hub_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_express_route_gateway) -> ()

let yojson_of_azurerm_express_route_gateway =
  (function
   | {
       allow_non_virtual_wan_traffic =
         v_allow_non_virtual_wan_traffic;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scale_units = v_scale_units;
       tags = v_tags;
       virtual_hub_id = v_virtual_hub_id;
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
         let arg = yojson_of_prop yojson_of_float v_scale_units in
         ("scale_units", arg) :: bnds
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
         match v_allow_non_virtual_wan_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_non_virtual_wan_traffic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_express_route_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_express_route_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_gateway ?allow_non_virtual_wan_traffic ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id () : azurerm_express_route_gateway =
  {
    allow_non_virtual_wan_traffic;
    id;
    location;
    name;
    resource_group_name;
    scale_units;
    tags;
    virtual_hub_id;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_non_virtual_wan_traffic : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let make ?allow_non_virtual_wan_traffic ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_units ~virtual_hub_id __id =
  let __type = "azurerm_express_route_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       allow_non_virtual_wan_traffic =
         Prop.computed __type __id "allow_non_virtual_wan_traffic";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_units = Prop.computed __type __id "scale_units";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_gateway
        (azurerm_express_route_gateway ?allow_non_virtual_wan_traffic
           ?id ?tags ?timeouts ~location ~name ~resource_group_name
           ~scale_units ~virtual_hub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_non_virtual_wan_traffic ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~scale_units
    ~virtual_hub_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_non_virtual_wan_traffic ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~scale_units ~virtual_hub_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
