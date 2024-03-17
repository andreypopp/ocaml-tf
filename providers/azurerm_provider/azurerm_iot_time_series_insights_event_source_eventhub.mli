(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_event_source_eventhub__timeouts
type azurerm_iot_time_series_insights_event_source_eventhub

val azurerm_iot_time_series_insights_event_source_eventhub :
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_iot_time_series_insights_event_source_eventhub__timeouts ->
  consumer_group_name:string ->
  environment_id:string ->
  event_source_resource_id:string ->
  eventhub_name:string ->
  location:string ->
  name:string ->
  namespace_name:string ->
  shared_access_key:string ->
  shared_access_key_name:string ->
  string ->
  unit
