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

type azurerm_iot_time_series_insights_access_policy

val azurerm_iot_time_series_insights_access_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_object_id:string prop ->
  roles:string prop list ->
  time_series_insights_environment_id:string prop ->
  unit ->
  azurerm_iot_time_series_insights_access_policy

val yojson_of_azurerm_iot_time_series_insights_access_policy :
  azurerm_iot_time_series_insights_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  principal_object_id : string prop;
  roles : string list prop;
  time_series_insights_environment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_object_id:string prop ->
  roles:string prop list ->
  time_series_insights_environment_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  principal_object_id:string prop ->
  roles:string prop list ->
  time_series_insights_environment_id:string prop ->
  string ->
  t Tf_core.resource
