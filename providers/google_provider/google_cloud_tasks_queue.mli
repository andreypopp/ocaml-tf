(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_tasks_queue__app_engine_routing_override
type google_cloud_tasks_queue__rate_limits
type google_cloud_tasks_queue__retry_config
type google_cloud_tasks_queue__stackdriver_logging_config
type google_cloud_tasks_queue__timeouts
type google_cloud_tasks_queue

val google_cloud_tasks_queue :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloud_tasks_queue__timeouts ->
  location:string prop ->
  app_engine_routing_override:
    google_cloud_tasks_queue__app_engine_routing_override list ->
  rate_limits:google_cloud_tasks_queue__rate_limits list ->
  retry_config:google_cloud_tasks_queue__retry_config list ->
  stackdriver_logging_config:
    google_cloud_tasks_queue__stackdriver_logging_config list ->
  string ->
  unit
