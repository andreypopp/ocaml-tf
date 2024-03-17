(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_access_policy__timeouts
type azurerm_iot_time_series_insights_access_policy

val azurerm_iot_time_series_insights_access_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_iot_time_series_insights_access_policy__timeouts ->
  name:string prop ->
  principal_object_id:string prop ->
  roles:string prop list ->
  time_series_insights_environment_id:string prop ->
  string ->
  unit
