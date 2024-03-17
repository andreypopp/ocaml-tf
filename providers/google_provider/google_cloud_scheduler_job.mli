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

type t = private {
  attempt_deadline : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  paused : bool prop;
  project : string prop;
  region : string prop;
  schedule : string prop;
  state : string prop;
  time_zone : string prop;
}

val google_cloud_scheduler_job :
  ?attempt_deadline:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?schedule:string prop ->
  ?time_zone:string prop ->
  ?timeouts:google_cloud_scheduler_job__timeouts ->
  name:string prop ->
  app_engine_http_target:
    google_cloud_scheduler_job__app_engine_http_target list ->
  http_target:google_cloud_scheduler_job__http_target list ->
  pubsub_target:google_cloud_scheduler_job__pubsub_target list ->
  retry_config:google_cloud_scheduler_job__retry_config list ->
  string ->
  t
