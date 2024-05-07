(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage

val storage : key:string prop -> name:string prop -> unit -> storage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iot_time_series_insights_gen2_environment

val azurerm_iot_time_series_insights_gen2_environment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?warm_store_data_retention_time:string prop ->
  ?timeouts:timeouts ->
  id_properties:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage:storage list ->
  unit ->
  azurerm_iot_time_series_insights_gen2_environment

val yojson_of_azurerm_iot_time_series_insights_gen2_environment :
  azurerm_iot_time_series_insights_gen2_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_access_fqdn : string prop;
  id : string prop;
  id_properties : string list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  warm_store_data_retention_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?warm_store_data_retention_time:string prop ->
  ?timeouts:timeouts ->
  id_properties:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage:storage list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?warm_store_data_retention_time:string prop ->
  ?timeouts:timeouts ->
  id_properties:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage:storage list ->
  string ->
  t Tf_core.resource
