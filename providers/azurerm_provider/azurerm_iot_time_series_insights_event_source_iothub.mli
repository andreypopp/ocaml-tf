(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_iothub__timeouts
type azurerm_iot_time_series_insights_event_source_iothub

val azurerm_iot_time_series_insights_event_source_iothub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timestamp_property_name:string prop ->
  ?timeouts:
    azurerm_iot_time_series_insights_event_source_iothub__timeouts ->
  consumer_group_name:string prop ->
  environment_id:string prop ->
  event_source_resource_id:string prop ->
  iothub_name:string prop ->
  location:string prop ->
  name:string prop ->
  shared_access_key:string prop ->
  shared_access_key_name:string prop ->
  string ->
  unit
