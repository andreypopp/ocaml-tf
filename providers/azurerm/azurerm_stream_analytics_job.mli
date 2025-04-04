(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type job_storage_account

val job_storage_account :
  ?authentication_mode:string prop ->
  account_key:string prop ->
  account_name:string prop ->
  unit ->
  job_storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_job

val azurerm_stream_analytics_job :
  ?compatibility_level:string prop ->
  ?content_storage_policy:string prop ->
  ?data_locale:string prop ->
  ?events_late_arrival_max_delay_in_seconds:float prop ->
  ?events_out_of_order_max_delay_in_seconds:float prop ->
  ?events_out_of_order_policy:string prop ->
  ?id:string prop ->
  ?output_error_policy:string prop ->
  ?sku_name:string prop ->
  ?stream_analytics_cluster_id:string prop ->
  ?streaming_units:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?identity:identity list ->
  ?job_storage_account:job_storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transformation_query:string prop ->
  unit ->
  azurerm_stream_analytics_job

val yojson_of_azurerm_stream_analytics_job :
  azurerm_stream_analytics_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  compatibility_level : string prop;
  content_storage_policy : string prop;
  data_locale : string prop;
  events_late_arrival_max_delay_in_seconds : float prop;
  events_out_of_order_max_delay_in_seconds : float prop;
  events_out_of_order_policy : string prop;
  id : string prop;
  job_id : string prop;
  location : string prop;
  name : string prop;
  output_error_policy : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stream_analytics_cluster_id : string prop;
  streaming_units : float prop;
  tags : string Tf_core.assoc prop;
  transformation_query : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compatibility_level:string prop ->
  ?content_storage_policy:string prop ->
  ?data_locale:string prop ->
  ?events_late_arrival_max_delay_in_seconds:float prop ->
  ?events_out_of_order_max_delay_in_seconds:float prop ->
  ?events_out_of_order_policy:string prop ->
  ?id:string prop ->
  ?output_error_policy:string prop ->
  ?sku_name:string prop ->
  ?stream_analytics_cluster_id:string prop ->
  ?streaming_units:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?identity:identity list ->
  ?job_storage_account:job_storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transformation_query:string prop ->
  string ->
  t

val make :
  ?compatibility_level:string prop ->
  ?content_storage_policy:string prop ->
  ?data_locale:string prop ->
  ?events_late_arrival_max_delay_in_seconds:float prop ->
  ?events_out_of_order_max_delay_in_seconds:float prop ->
  ?events_out_of_order_policy:string prop ->
  ?id:string prop ->
  ?output_error_policy:string prop ->
  ?sku_name:string prop ->
  ?stream_analytics_cluster_id:string prop ->
  ?streaming_units:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?identity:identity list ->
  ?job_storage_account:job_storage_account list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transformation_query:string prop ->
  string ->
  t Tf_core.resource
