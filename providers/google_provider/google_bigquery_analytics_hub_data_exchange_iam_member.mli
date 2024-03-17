(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange_iam_member__condition
type google_bigquery_analytics_hub_data_exchange_iam_member

type t = private {
  data_exchange_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_bigquery_analytics_hub_data_exchange_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:
    google_bigquery_analytics_hub_data_exchange_iam_member__condition
    list ->
  string ->
  t
