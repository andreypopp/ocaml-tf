(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange_iam_binding__condition

type google_bigquery_analytics_hub_data_exchange_iam_binding

val google_bigquery_analytics_hub_data_exchange_iam_binding :
  data_exchange_id:string ->
  members:string list ->
  role:string ->
  condition:
    google_bigquery_analytics_hub_data_exchange_iam_binding__condition
    list ->
  string ->
  unit
