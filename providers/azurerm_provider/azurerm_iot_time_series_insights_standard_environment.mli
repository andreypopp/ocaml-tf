(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_standard_environment__timeouts
type azurerm_iot_time_series_insights_standard_environment

val azurerm_iot_time_series_insights_standard_environment :
  ?id:string ->
  ?partition_key:string ->
  ?storage_limit_exceeded_behavior:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_iot_time_series_insights_standard_environment__timeouts ->
  data_retention_time:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
