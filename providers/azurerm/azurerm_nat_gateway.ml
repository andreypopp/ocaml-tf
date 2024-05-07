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

type azurerm_nat_gateway = {
  id : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  zones : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_nat_gateway) -> ()

let yojson_of_azurerm_nat_gateway =
  (function
   | {
       id = v_id;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       zones = v_zones;
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
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
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
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
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
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
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
    : azurerm_nat_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_nat_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nat_gateway ?id ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name () :
    azurerm_nat_gateway =
  {
    id;
    idle_timeout_in_minutes;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    zones;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?idle_timeout_in_minutes ?sku_name ?tags ?zones
    ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_nat_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_guid = Prop.computed __type __id "resource_guid";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_nat_gateway
        (azurerm_nat_gateway ?id ?idle_timeout_in_minutes ?sku_name
           ?tags ?zones ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?idle_timeout_in_minutes ?sku_name ?tags ?zones
      ?timeouts ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
