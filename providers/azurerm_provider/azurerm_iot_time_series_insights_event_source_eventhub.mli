(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_eventhub__timeouts
type azurerm_iot_time_series_insights_event_source_eventhub

type t = private {
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

val azurerm_iot_time_series_insights_event_source_eventhub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timestamp_property_name:string prop ->
  ?timeouts:
    azurerm_iot_time_series_insights_event_source_eventhub__timeouts ->
  consumer_group_name:string prop ->
  environment_id:string prop ->
  event_source_resource_id:string prop ->
  eventhub_name:string prop ->
  location:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  shared_access_key:string prop ->
  shared_access_key_name:string prop ->
  string ->
  t
