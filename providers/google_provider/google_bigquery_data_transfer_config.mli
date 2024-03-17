(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_data_transfer_config__email_preferences
type google_bigquery_data_transfer_config__schedule_options
type google_bigquery_data_transfer_config__sensitive_params
type google_bigquery_data_transfer_config__timeouts
type google_bigquery_data_transfer_config

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
  ?timeouts:google_bigquery_data_transfer_config__timeouts ->
  data_source_id:string prop ->
  display_name:string prop ->
  params:(string * string prop) list ->
  email_preferences:
    google_bigquery_data_transfer_config__email_preferences list ->
  schedule_options:
    google_bigquery_data_transfer_config__schedule_options list ->
  sensitive_params:
    google_bigquery_data_transfer_config__sensitive_params list ->
  string ->
  t
