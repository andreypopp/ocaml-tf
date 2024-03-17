(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_iothub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_iothub__timeouts *)

type azurerm_iot_time_series_insights_event_source_iothub = {
  consumer_group_name : string;  (** consumer_group_name *)
  environment_id : string;  (** environment_id *)
  event_source_resource_id : string;  (** event_source_resource_id *)
  id : string option; [@option]  (** id *)
  iothub_name : string;  (** iothub_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  shared_access_key : string;  (** shared_access_key *)
  shared_access_key_name : string;  (** shared_access_key_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timestamp_property_name : string option; [@option]
      (** timestamp_property_name *)
  timeouts :
    azurerm_iot_time_series_insights_event_source_iothub__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_iot_time_series_insights_event_source_iothub *)

let azurerm_iot_time_series_insights_event_source_iothub ?id ?tags
    ?timestamp_property_name ?timeouts ~consumer_group_name
    ~environment_id ~event_source_resource_id ~iothub_name ~location
    ~name ~shared_access_key ~shared_access_key_name __resource_id =
  let __resource_type =
    "azurerm_iot_time_series_insights_event_source_iothub"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iot_time_series_insights_event_source_iothub
       __resource);
  ()
