(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_binding__condition
type google_bigquery_analytics_hub_listing_iam_binding

val google_bigquery_analytics_hub_listing_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  data_exchange_id:string ->
  listing_id:string ->
  members:string list ->
  role:string ->
  condition:
    google_bigquery_analytics_hub_listing_iam_binding__condition list ->
  string ->
  unit
