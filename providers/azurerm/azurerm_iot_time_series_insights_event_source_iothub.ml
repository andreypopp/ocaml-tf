(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iot_time_series_insights_event_source_iothub = {
  consumer_group_name : string prop;  (** consumer_group_name *)
  environment_id : string prop;  (** environment_id *)
  event_source_resource_id : string prop;
      (** event_source_resource_id *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  shared_access_key : string prop;  (** shared_access_key *)
  shared_access_key_name : string prop;
      (** shared_access_key_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timestamp_property_name : string prop option; [@option]
      (** timestamp_property_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_iothub *)

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

let register ?tf_module ?id ?tags ?timestamp_property_name ?timeouts
    ~consumer_group_name ~environment_id ~event_source_resource_id
    ~iothub_name ~location ~name ~shared_access_key
    ~shared_access_key_name __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_event_source_iothub"
  in
  let __resource =
    azurerm_iot_time_series_insights_event_source_iothub ?id ?tags
      ?timestamp_property_name ?timeouts ~consumer_group_name
      ~environment_id ~event_source_resource_id ~iothub_name
      ~location ~name ~shared_access_key ~shared_access_key_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_event_source_iothub
       __resource);
  let __resource_attributes =
    ({
       consumer_group_name =
         Prop.computed __resource_type __resource_id
           "consumer_group_name";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       event_source_resource_id =
         Prop.computed __resource_type __resource_id
           "event_source_resource_id";
       id = Prop.computed __resource_type __resource_id "id";
       iothub_name =
         Prop.computed __resource_type __resource_id "iothub_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       shared_access_key =
         Prop.computed __resource_type __resource_id
           "shared_access_key";
       shared_access_key_name =
         Prop.computed __resource_type __resource_id
           "shared_access_key_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       timestamp_property_name =
         Prop.computed __resource_type __resource_id
           "timestamp_property_name";
     }
      : t)
  in
  __resource_attributes
