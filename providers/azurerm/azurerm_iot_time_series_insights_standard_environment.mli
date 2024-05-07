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

type azurerm_iot_time_series_insights_standard_environment

val azurerm_iot_time_series_insights_standard_environment :
  ?id:string prop ->
  ?partition_key:string prop ->
  ?storage_limit_exceeded_behavior:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_retention_time:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_iot_time_series_insights_standard_environment

val yojson_of_azurerm_iot_time_series_insights_standard_environment :
  azurerm_iot_time_series_insights_standard_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?storage_limit_exceeded_behavior:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_retention_time:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?partition_key:string prop ->
  ?storage_limit_exceeded_behavior:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_retention_time:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
