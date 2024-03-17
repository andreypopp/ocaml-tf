(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_reference_data_set__key_property
type azurerm_iot_time_series_insights_reference_data_set__timeouts
type azurerm_iot_time_series_insights_reference_data_set

val azurerm_iot_time_series_insights_reference_data_set :
  ?data_string_comparison_behavior:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_iot_time_series_insights_reference_data_set__timeouts ->
  location:string ->
  name:string ->
  time_series_insights_environment_id:string ->
  key_property:
    azurerm_iot_time_series_insights_reference_data_set__key_property
    list ->
  string ->
  unit
