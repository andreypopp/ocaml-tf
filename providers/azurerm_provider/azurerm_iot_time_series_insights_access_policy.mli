(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_access_policy__timeouts
type azurerm_iot_time_series_insights_access_policy

val azurerm_iot_time_series_insights_access_policy :
  ?description:string ->
  ?timeouts:azurerm_iot_time_series_insights_access_policy__timeouts ->
  name:string ->
  principal_object_id:string ->
  roles:string list ->
  time_series_insights_environment_id:string ->
  string ->
  unit
