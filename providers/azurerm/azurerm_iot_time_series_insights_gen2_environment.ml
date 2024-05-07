(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage = { key : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : storage) -> ()

let yojson_of_storage =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage

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

type azurerm_iot_time_series_insights_gen2_environment = {
  id : string prop option; [@option]
  id_properties : string prop list;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  warm_store_data_retention_time : string prop option; [@option]
  storage : storage list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_iot_time_series_insights_gen2_environment) -> ()

let yojson_of_azurerm_iot_time_series_insights_gen2_environment =
  (function
   | {
       id = v_id;
       id_properties = v_id_properties;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       warm_store_data_retention_time =
         v_warm_store_data_retention_time;
       storage = v_storage;
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
         let arg = yojson_of_list yojson_of_storage v_storage in
         ("storage", arg) :: bnds
       in
       let bnds =
         match v_warm_store_data_retention_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "warm_store_data_retention_time", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_id_properties
         in
         ("id_properties", arg) :: bnds
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
    : azurerm_iot_time_series_insights_gen2_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iot_time_series_insights_gen2_environment

[@@@deriving.end]

let storage ~key ~name () : storage = { key; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_gen2_environment ?id ?tags
    ?warm_store_data_retention_time ?timeouts ~id_properties
    ~location ~name ~resource_group_name ~sku_name ~storage () :
    azurerm_iot_time_series_insights_gen2_environment =
  {
    id;
    id_properties;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    warm_store_data_retention_time;
    storage;
    timeouts;
  }

type t = {
  tf_name : string;
  data_access_fqdn : string prop;
  id : string prop;
  id_properties : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  warm_store_data_retention_time : string prop;
}

let make ?id ?tags ?warm_store_data_retention_time ?timeouts
    ~id_properties ~location ~name ~resource_group_name ~sku_name
    ~storage __id =
  let __type = "azurerm_iot_time_series_insights_gen2_environment" in
  let __attrs =
    ({
       tf_name = __id;
       data_access_fqdn =
         Prop.computed __type __id "data_access_fqdn";
       id = Prop.computed __type __id "id";
       id_properties = Prop.computed __type __id "id_properties";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       warm_store_data_retention_time =
         Prop.computed __type __id "warm_store_data_retention_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_gen2_environment
        (azurerm_iot_time_series_insights_gen2_environment ?id ?tags
           ?warm_store_data_retention_time ?timeouts ~id_properties
           ~location ~name ~resource_group_name ~sku_name ~storage ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?warm_store_data_retention_time
    ?timeouts ~id_properties ~location ~name ~resource_group_name
    ~sku_name ~storage __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?warm_store_data_retention_time ?timeouts
      ~id_properties ~location ~name ~resource_group_name ~sku_name
      ~storage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
