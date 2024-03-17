(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_gen2_environment__storage
type azurerm_iot_time_series_insights_gen2_environment__timeouts
type azurerm_iot_time_series_insights_gen2_environment

val azurerm_iot_time_series_insights_gen2_environment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?warm_store_data_retention_time:string prop ->
  ?timeouts:
    azurerm_iot_time_series_insights_gen2_environment__timeouts ->
  id_properties:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage:
    azurerm_iot_time_series_insights_gen2_environment__storage list ->
  string ->
  unit
