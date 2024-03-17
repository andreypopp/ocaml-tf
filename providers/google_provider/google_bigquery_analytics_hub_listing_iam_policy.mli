(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_policy

type t = private {
  data_exchange_id : string prop;
  etag : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_bigquery_analytics_hub_listing_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  policy_data:string prop ->
  string ->
  t
