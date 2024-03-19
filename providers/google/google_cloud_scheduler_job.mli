(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type app_engine_http_target__app_engine_routing

val app_engine_http_target__app_engine_routing :
  ?instance:string prop ->
  ?service:string prop ->
  ?version:string prop ->
  unit ->
  app_engine_http_target__app_engine_routing

type app_engine_http_target

val app_engine_http_target :
  ?body:string prop ->
  ?headers:(string * string prop) list ->
  ?http_method:string prop ->
  relative_uri:string prop ->
  app_engine_routing:app_engine_http_target__app_engine_routing list ->
  unit ->
  app_engine_http_target

type http_target__oauth_token

val http_target__oauth_token :
  ?scope:string prop ->
  service_account_email:string prop ->
  unit ->
  http_target__oauth_token

type http_target__oidc_token

val http_target__oidc_token :
  ?audience:string prop ->
  service_account_email:string prop ->
  unit ->
  http_target__oidc_token

type http_target

val http_target :
  ?body:string prop ->
  ?headers:(string * string prop) list ->
  ?http_method:string prop ->
  uri:string prop ->
  oauth_token:http_target__oauth_token list ->
  oidc_token:http_target__oidc_token list ->
  unit ->
  http_target

type pubsub_target

val pubsub_target :
  ?attributes:(string * string prop) list ->
  ?data:string prop ->
  topic_name:string prop ->
  unit ->
  pubsub_target

type retry_config

val retry_config :
  ?max_backoff_duration:string prop ->
  ?max_doublings:float prop ->
  ?max_retry_duration:string prop ->
  ?min_backoff_duration:string prop ->
  ?retry_count:float prop ->
  unit ->
  retry_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_scheduler_job

val google_cloud_scheduler_job :
  ?attempt_deadline:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?schedule:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  app_engine_http_target:app_engine_http_target list ->
  http_target:http_target list ->
  pubsub_target:pubsub_target list ->
  retry_config:retry_config list ->
  unit ->
  google_cloud_scheduler_job

val yojson_of_google_cloud_scheduler_job :
  google_cloud_scheduler_job -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?attempt_deadline:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?paused:bool prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?schedule:string prop ->
  ?time_zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  app_engine_http_target:app_engine_http_target list ->
  http_target:http_target list ->
  pubsub_target:pubsub_target list ->
  retry_config:retry_config list ->
  string ->
  t
