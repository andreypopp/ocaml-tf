(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_bigquery_analytics_hub_listing_iam_policy

val google_bigquery_analytics_hub_listing_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  policy_data:string prop ->
  unit ->
  google_bigquery_analytics_hub_listing_iam_policy

val yojson_of_google_bigquery_analytics_hub_listing_iam_policy :
  google_bigquery_analytics_hub_listing_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_exchange_id : string prop;
  etag : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  policy_data:string prop ->
  string ->
  t
