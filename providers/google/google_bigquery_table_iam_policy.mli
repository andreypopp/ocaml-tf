(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_bigquery_table_iam_policy

val google_bigquery_table_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  policy_data:string prop ->
  table_id:string prop ->
  unit ->
  google_bigquery_table_iam_policy

val yojson_of_google_bigquery_table_iam_policy :
  google_bigquery_table_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  policy_data:string prop ->
  table_id:string prop ->
  string ->
  t
