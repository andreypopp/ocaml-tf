(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_table_iam_binding__condition
type google_bigquery_table_iam_binding

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  table_id : string prop;
}

val google_bigquery_table_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  members:string prop list ->
  role:string prop ->
  table_id:string prop ->
  condition:google_bigquery_table_iam_binding__condition list ->
  string ->
  t
