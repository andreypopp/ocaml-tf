(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type app_engine_routing_override

val app_engine_routing_override :
  ?instance:string prop ->
  ?service:string prop ->
  ?version:string prop ->
  unit ->
  app_engine_routing_override

type rate_limits

val rate_limits :
  ?max_concurrent_dispatches:float prop ->
  ?max_dispatches_per_second:float prop ->
  unit ->
  rate_limits

type retry_config

val retry_config :
  ?max_attempts:float prop ->
  ?max_backoff:string prop ->
  ?max_doublings:float prop ->
  ?max_retry_duration:string prop ->
  ?min_backoff:string prop ->
  unit ->
  retry_config

type stackdriver_logging_config

val stackdriver_logging_config :
  sampling_ratio:float prop -> unit -> stackdriver_logging_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_tasks_queue

val google_cloud_tasks_queue :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  app_engine_routing_override:app_engine_routing_override list ->
  rate_limits:rate_limits list ->
  retry_config:retry_config list ->
  stackdriver_logging_config:stackdriver_logging_config list ->
  unit ->
  google_cloud_tasks_queue

val yojson_of_google_cloud_tasks_queue :
  google_cloud_tasks_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  app_engine_routing_override:app_engine_routing_override list ->
  rate_limits:rate_limits list ->
  retry_config:retry_config list ->
  stackdriver_logging_config:stackdriver_logging_config list ->
  string ->
  t
