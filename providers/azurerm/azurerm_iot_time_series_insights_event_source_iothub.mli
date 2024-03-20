(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iot_time_series_insights_event_source_iothub

val azurerm_iot_time_series_insights_event_source_iothub :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timestamp_property_name:string prop ->
  ?timeouts:timeouts ->
  consumer_group_name:string prop ->
  environment_id:string prop ->
  event_source_resource_id:string prop ->
  iothub_name:string prop ->
  location:string prop ->
  name:string prop ->
  shared_access_key:string prop ->
  shared_access_key_name:string prop ->
  unit ->
  azurerm_iot_time_series_insights_event_source_iothub

val yojson_of_azurerm_iot_time_series_insights_event_source_iothub :
  azurerm_iot_time_series_insights_event_source_iothub -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timestamp_property_name:string prop ->
  ?timeouts:timeouts ->
  consumer_group_name:string prop ->
  environment_id:string prop ->
  event_source_resource_id:string prop ->
  iothub_name:string prop ->
  location:string prop ->
  name:string prop ->
  shared_access_key:string prop ->
  shared_access_key_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timestamp_property_name:string prop ->
  ?timeouts:timeouts ->
  consumer_group_name:string prop ->
  environment_id:string prop ->
  event_source_resource_id:string prop ->
  iothub_name:string prop ->
  location:string prop ->
  name:string prop ->
  shared_access_key:string prop ->
  shared_access_key_name:string prop ->
  string ->
  t Tf_core.resource
