(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_binding__condition
type google_bigquery_analytics_hub_listing_iam_binding

val google_bigquery_analytics_hub_listing_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:
    google_bigquery_analytics_hub_listing_iam_binding__condition list ->
  string ->
  unit
