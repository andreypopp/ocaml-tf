(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_time_series_insights_event_source_eventhub = {
  consumer_group_name : string prop;  (** consumer_group_name *)
  environment_id : string prop;  (** environment_id *)
  event_source_resource_id : string prop;
      (** event_source_resource_id *)
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  shared_access_key : string prop;  (** shared_access_key *)
  shared_access_key_name : string prop;
      (** shared_access_key_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timestamp_property_name : string prop option; [@option]
      (** timestamp_property_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_eventhub *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iot_time_series_insights_event_source_eventhub ?id ?tags
    ?timestamp_property_name ?timeouts ~consumer_group_name
    ~environment_id ~event_source_resource_id ~eventhub_name
    ~location ~name ~namespace_name ~shared_access_key
    ~shared_access_key_name () :
    azurerm_iot_time_series_insights_event_source_eventhub =
  {
    consumer_group_name;
    environment_id;
    event_source_resource_id;
    eventhub_name;
    id;
    location;
    name;
    namespace_name;
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
  eventhub_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  shared_access_key : string prop;
  shared_access_key_name : string prop;
  tags : (string * string) list prop;
  timestamp_property_name : string prop;
}

let make ?id ?tags ?timestamp_property_name ?timeouts
    ~consumer_group_name ~environment_id ~event_source_resource_id
    ~eventhub_name ~location ~name ~namespace_name ~shared_access_key
    ~shared_access_key_name __id =
  let __type =
    "azurerm_iot_time_series_insights_event_source_eventhub"
  in
  let __attrs =
    ({
       consumer_group_name =
         Prop.computed __type __id "consumer_group_name";
       environment_id = Prop.computed __type __id "environment_id";
       event_source_resource_id =
         Prop.computed __type __id "event_source_resource_id";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
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
      yojson_of_azurerm_iot_time_series_insights_event_source_eventhub
        (azurerm_iot_time_series_insights_event_source_eventhub ?id
           ?tags ?timestamp_property_name ?timeouts
           ~consumer_group_name ~environment_id
           ~event_source_resource_id ~eventhub_name ~location ~name
           ~namespace_name ~shared_access_key ~shared_access_key_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timestamp_property_name ?timeouts
    ~consumer_group_name ~environment_id ~event_source_resource_id
    ~eventhub_name ~location ~name ~namespace_name ~shared_access_key
    ~shared_access_key_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timestamp_property_name ?timeouts
      ~consumer_group_name ~environment_id ~event_source_resource_id
      ~eventhub_name ~location ~name ~namespace_name
      ~shared_access_key ~shared_access_key_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
