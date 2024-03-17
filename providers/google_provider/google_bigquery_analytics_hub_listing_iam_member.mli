(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_member__condition
type google_bigquery_analytics_hub_listing_iam_member

val google_bigquery_analytics_hub_listing_iam_member :
  data_exchange_id:string ->
  listing_id:string ->
  member:string ->
  role:string ->
  condition:
    google_bigquery_analytics_hub_listing_iam_member__condition list ->
  string ->
  unit
