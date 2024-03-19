(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_bigquery_analytics_hub_listing_iam_binding

val google_bigquery_analytics_hub_listing_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  unit ->
  google_bigquery_analytics_hub_listing_iam_binding

val yojson_of_google_bigquery_analytics_hub_listing_iam_binding :
  google_bigquery_analytics_hub_listing_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_exchange_id : string prop;
  etag : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  data_exchange_id:string prop ->
  listing_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:condition list ->
  string ->
  t
