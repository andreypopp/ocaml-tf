(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iot_time_series_insights_standard_environment__timeouts
type azurerm_iot_time_series_insights_standard_environment

type t = private {
  data_retention_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_limit_exceeded_behavior : string prop;
  tags : (string * string) list prop;
}

val azurerm_iot_time_series_insights_standard_environment :
  ?id:string prop ->
  ?partition_key:string prop ->
  ?storage_limit_exceeded_behavior:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_iot_time_series_insights_standard_environment__timeouts ->
  data_retention_time:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
