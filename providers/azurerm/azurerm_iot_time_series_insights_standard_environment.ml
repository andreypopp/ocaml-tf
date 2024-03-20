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

type azurerm_iot_time_series_insights_standard_environment = {
  data_retention_time : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  partition_key : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  storage_limit_exceeded_behavior : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_iot_time_series_insights_standard_environment) ->
  ()

let yojson_of_azurerm_iot_time_series_insights_standard_environment =
  (function
   | {
       data_retention_time = v_data_retention_time;
       id = v_id;
       location = v_location;
       name = v_name;
       partition_key = v_partition_key;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       storage_limit_exceeded_behavior =
         v_storage_limit_exceeded_behavior;
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
         match v_storage_limit_exceeded_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_limit_exceeded_behavior", arg in
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
         match v_partition_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_data_retention_time
         in
         ("data_retention_time", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iot_time_series_insights_standard_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_iot_time_series_insights_standard_environment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_standard_environment ?id
    ?partition_key ?storage_limit_exceeded_behavior ?tags ?timeouts
    ~data_retention_time ~location ~name ~resource_group_name
    ~sku_name () :
    azurerm_iot_time_series_insights_standard_environment =
  {
    data_retention_time;
    id;
    location;
    name;
    partition_key;
    resource_group_name;
    sku_name;
    storage_limit_exceeded_behavior;
    tags;
    timeouts;
  }

type t = {
  data_retention_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_limit_exceeded_behavior : string prop;
  tags : (string * string) list prop;
}

let make ?id ?partition_key ?storage_limit_exceeded_behavior ?tags
    ?timeouts ~data_retention_time ~location ~name
    ~resource_group_name ~sku_name __id =
  let __type =
    "azurerm_iot_time_series_insights_standard_environment"
  in
  let __attrs =
    ({
       data_retention_time =
         Prop.computed __type __id "data_retention_time";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       storage_limit_exceeded_behavior =
         Prop.computed __type __id "storage_limit_exceeded_behavior";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_standard_environment
        (azurerm_iot_time_series_insights_standard_environment ?id
           ?partition_key ?storage_limit_exceeded_behavior ?tags
           ?timeouts ~data_retention_time ~location ~name
           ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?partition_key
    ?storage_limit_exceeded_behavior ?tags ?timeouts
    ~data_retention_time ~location ~name ~resource_group_name
    ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?partition_key ?storage_limit_exceeded_behavior ?tags
      ?timeouts ~data_retention_time ~location ~name
      ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
