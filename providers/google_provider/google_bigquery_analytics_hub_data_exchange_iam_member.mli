(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange_iam_member__condition
type google_bigquery_analytics_hub_data_exchange_iam_member

val google_bigquery_analytics_hub_data_exchange_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  data_exchange_id:string ->
  member:string ->
  role:string ->
  condition:
    google_bigquery_analytics_hub_data_exchange_iam_member__condition
    list ->
  string ->
  unit
