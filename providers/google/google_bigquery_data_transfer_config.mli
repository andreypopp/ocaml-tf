(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type email_preferences

val email_preferences :
  enable_failure_email:bool prop -> unit -> email_preferences

type schedule_options

val schedule_options :
  ?disable_auto_scheduling:bool prop ->
  ?end_time:string prop ->
  ?start_time:string prop ->
  unit ->
  schedule_options

type sensitive_params

val sensitive_params :
  secret_access_key:string prop -> unit -> sensitive_params

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_data_transfer_config

val google_bigquery_data_transfer_config :
  ?data_refresh_window_days:float prop ->
  ?destination_dataset_id:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?notification_pubsub_topic:string prop ->
  ?project:string prop ->
  ?schedule:string prop ->
  ?service_account_name:string prop ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  display_name:string prop ->
  params:(string * string prop) list ->
  email_preferences:email_preferences list ->
  schedule_options:schedule_options list ->
  sensitive_params:sensitive_params list ->
  unit ->
  google_bigquery_data_transfer_config

val yojson_of_google_bigquery_data_transfer_config :
  google_bigquery_data_transfer_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_refresh_window_days : float prop;
  data_source_id : string prop;
  destination_dataset_id : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  notification_pubsub_topic : string prop;
  params : (string * string) list prop;
  project : string prop;
  schedule : string prop;
  service_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data_refresh_window_days:float prop ->
  ?destination_dataset_id:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?notification_pubsub_topic:string prop ->
  ?project:string prop ->
  ?schedule:string prop ->
  ?service_account_name:string prop ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  display_name:string prop ->
  params:(string * string prop) list ->
  email_preferences:email_preferences list ->
  schedule_options:schedule_options list ->
  sensitive_params:sensitive_params list ->
  string ->
  t
