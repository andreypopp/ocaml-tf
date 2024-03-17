(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_eventhub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_eventhub__timeouts *)

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
  timeouts :
    azurerm_iot_time_series_insights_event_source_eventhub__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_eventhub *)

let azurerm_iot_time_series_insights_event_source_eventhub ?id ?tags
    ?timestamp_property_name ?timeouts ~consumer_group_name
    ~environment_id ~event_source_resource_id ~eventhub_name
    ~location ~name ~namespace_name ~shared_access_key
    ~shared_access_key_name __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_event_source_eventhub"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_event_source_eventhub
       __resource);
  ()
