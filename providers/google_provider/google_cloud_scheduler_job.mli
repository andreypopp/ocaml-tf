(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_scheduler_job__app_engine_http_target__app_engine_routing

type google_cloud_scheduler_job__app_engine_http_target
type google_cloud_scheduler_job__http_target__oauth_token
type google_cloud_scheduler_job__http_target__oidc_token
type google_cloud_scheduler_job__http_target
type google_cloud_scheduler_job__pubsub_target
type google_cloud_scheduler_job__retry_config
type google_cloud_scheduler_job__timeouts
type google_cloud_scheduler_job

val google_cloud_scheduler_job :
  ?attempt_deadline:string ->
  ?description:string ->
  ?schedule:string ->
  ?time_zone:string ->
  ?timeouts:google_cloud_scheduler_job__timeouts ->
  name:string ->
  app_engine_http_target:
    google_cloud_scheduler_job__app_engine_http_target list ->
  http_target:google_cloud_scheduler_job__http_target list ->
  pubsub_target:google_cloud_scheduler_job__pubsub_target list ->
  retry_config:google_cloud_scheduler_job__retry_config list ->
  string ->
  unit
