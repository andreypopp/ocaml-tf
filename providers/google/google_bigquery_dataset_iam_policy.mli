(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset_iam_policy

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_bigquery_dataset_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  policy_data:string prop ->
  string ->
  t
