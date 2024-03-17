(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_gen2_environment__storage
type azurerm_iot_time_series_insights_gen2_environment__timeouts
type azurerm_iot_time_series_insights_gen2_environment

val azurerm_iot_time_series_insights_gen2_environment :
  ?tags:(string * string) list ->
  ?warm_store_data_retention_time:string ->
  ?timeouts:
    azurerm_iot_time_series_insights_gen2_environment__timeouts ->
  id_properties:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  storage:
    azurerm_iot_time_series_insights_gen2_environment__storage list ->
  string ->
  unit
