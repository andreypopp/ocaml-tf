(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_stream_analytics_job

val azurerm_stream_analytics_job :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_stream_analytics_job

val yojson_of_azurerm_stream_analytics_job :
  azurerm_stream_analytics_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  compatibility_level : string prop;
  data_locale : string prop;
  events_late_arrival_max_delay_in_seconds : float prop;
  events_out_of_order_max_delay_in_seconds : float prop;
  events_out_of_order_policy : string prop;
  id : string prop;
  identity : identity list prop;
  job_id : string prop;
  last_output_time : string prop;
  location : string prop;
  name : string prop;
  output_error_policy : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  start_mode : string prop;
  start_time : string prop;
  streaming_units : float prop;
  transformation_query : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
