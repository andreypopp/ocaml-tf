(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_data_transfer_config__email_preferences
type google_bigquery_data_transfer_config__schedule_options
type google_bigquery_data_transfer_config__sensitive_params
type google_bigquery_data_transfer_config__timeouts
type google_bigquery_data_transfer_config

val google_bigquery_data_transfer_config :
  ?data_refresh_window_days:float ->
  ?destination_dataset_id:string ->
  ?disabled:bool ->
  ?id:string ->
  ?location:string ->
  ?notification_pubsub_topic:string ->
  ?project:string ->
  ?schedule:string ->
  ?service_account_name:string ->
  ?timeouts:google_bigquery_data_transfer_config__timeouts ->
  data_source_id:string ->
  display_name:string ->
  params:(string * string) list ->
  email_preferences:
    google_bigquery_data_transfer_config__email_preferences list ->
  schedule_options:
    google_bigquery_data_transfer_config__schedule_options list ->
  sensitive_params:
    google_bigquery_data_transfer_config__sensitive_params list ->
  string ->
  unit
