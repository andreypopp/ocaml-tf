(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_iothub__timeouts
type azurerm_iot_time_series_insights_event_source_iothub

val azurerm_iot_time_series_insights_event_source_iothub :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timestamp_property_name:string ->
  ?timeouts:
    azurerm_iot_time_series_insights_event_source_iothub__timeouts ->
  consumer_group_name:string ->
  environment_id:string ->
  event_source_resource_id:string ->
  iothub_name:string ->
  location:string ->
  name:string ->
  shared_access_key:string ->
  shared_access_key_name:string ->
  string ->
  unit
