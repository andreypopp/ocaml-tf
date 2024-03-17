(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_job__identity
type azurerm_stream_analytics_job__job_storage_account
type azurerm_stream_analytics_job__timeouts
type azurerm_stream_analytics_job

type t = private {
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
  tags : (string * string) list prop;
  transformation_query : string prop;
  type_ : string prop;
}

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
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:azurerm_stream_analytics_job__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transformation_query:string prop ->
  identity:azurerm_stream_analytics_job__identity list ->
  job_storage_account:
    azurerm_stream_analytics_job__job_storage_account list ->
  string ->
  t
