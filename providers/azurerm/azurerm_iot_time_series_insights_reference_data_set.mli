(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_property

val key_property :
  name:string prop -> type_:string prop -> unit -> key_property

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iot_time_series_insights_reference_data_set

val azurerm_iot_time_series_insights_reference_data_set :
  ?data_string_comparison_behavior:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  time_series_insights_environment_id:string prop ->
  key_property:key_property list ->
  unit ->
  azurerm_iot_time_series_insights_reference_data_set

val yojson_of_azurerm_iot_time_series_insights_reference_data_set :
  azurerm_iot_time_series_insights_reference_data_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_string_comparison_behavior : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  time_series_insights_environment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_string_comparison_behavior:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  time_series_insights_environment_id:string prop ->
  key_property:key_property list ->
  string ->
  t

val make :
  ?data_string_comparison_behavior:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  time_series_insights_environment_id:string prop ->
  key_property:key_property list ->
  string ->
  t Tf_core.resource
