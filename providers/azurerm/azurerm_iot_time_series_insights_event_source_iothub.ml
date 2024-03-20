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

type azurerm_iot_time_series_insights_event_source_iothub = {
  consumer_group_name : string prop;
  environment_id : string prop;
  event_source_resource_id : string prop;
  id : string prop option; [@option]
  iothub_name : string prop;
  location : string prop;
  name : string prop;
  shared_access_key : string prop;
  shared_access_key_name : string prop;
  tags : (string * string prop) list option; [@option]
  timestamp_property_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_iot_time_series_insights_event_source_iothub) -> ()

let yojson_of_azurerm_iot_time_series_insights_event_source_iothub =
  (function
   | {
       consumer_group_name = v_consumer_group_name;
       environment_id = v_environment_id;
       event_source_resource_id = v_event_source_resource_id;
       id = v_id;
       iothub_name = v_iothub_name;
       location = v_location;
       name = v_name;
       shared_access_key = v_shared_access_key;
       shared_access_key_name = v_shared_access_key_name;
       tags = v_tags;
       timestamp_property_name = v_timestamp_property_name;
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
         match v_timestamp_property_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_property_name", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_shared_access_key_name
         in
         ("shared_access_key_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_shared_access_key
         in
         ("shared_access_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_iothub_name in
         ("iothub_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_event_source_resource_id
         in
         ("event_source_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_group_name
         in
         ("consumer_group_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iot_time_series_insights_event_source_iothub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_iot_time_series_insights_event_source_iothub

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_event_source_iothub ?id ?tags
    ?timestamp_property_name ?timeouts ~consumer_group_name
    ~environment_id ~event_source_resource_id ~iothub_name ~location
    ~name ~shared_access_key ~shared_access_key_name () :
    azurerm_iot_time_series_insights_event_source_iothub =
  {
    consumer_group_name;
    environment_id;
    event_source_resource_id;
    id;
    iothub_name;
    location;
    name;
    shared_access_key;
    shared_access_key_name;
    tags;
    timestamp_property_name;
    timeouts;
  }

type t = {
  consumer_group_name : string prop;
  environment_id : string prop;
  event_source_resource_id : string prop;
  id : string prop;
  iothub_name : string prop;
  location : string prop;
  name : string prop;
  shared_access_key : string prop;
  shared_access_key_name : string prop;
  tags : (string * string) list prop;
  timestamp_property_name : string prop;
}

let make ?id ?tags ?timestamp_property_name ?timeouts
    ~consumer_group_name ~environment_id ~event_source_resource_id
    ~iothub_name ~location ~name ~shared_access_key
    ~shared_access_key_name __id =
  let __type =
    "azurerm_iot_time_series_insights_event_source_iothub"
  in
  let __attrs =
    ({
       consumer_group_name =
         Prop.computed __type __id "consumer_group_name";
       environment_id = Prop.computed __type __id "environment_id";
       event_source_resource_id =
         Prop.computed __type __id "event_source_resource_id";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       shared_access_key =
         Prop.computed __type __id "shared_access_key";
       shared_access_key_name =
         Prop.computed __type __id "shared_access_key_name";
       tags = Prop.computed __type __id "tags";
       timestamp_property_name =
         Prop.computed __type __id "timestamp_property_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iot_time_series_insights_event_source_iothub
        (azurerm_iot_time_series_insights_event_source_iothub ?id
           ?tags ?timestamp_property_name ?timeouts
           ~consumer_group_name ~environment_id
           ~event_source_resource_id ~iothub_name ~location ~name
           ~shared_access_key ~shared_access_key_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timestamp_property_name ?timeouts
    ~consumer_group_name ~environment_id ~event_source_resource_id
    ~iothub_name ~location ~name ~shared_access_key
    ~shared_access_key_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timestamp_property_name ?timeouts
      ~consumer_group_name ~environment_id ~event_source_resource_id
      ~iothub_name ~location ~name ~shared_access_key
      ~shared_access_key_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
