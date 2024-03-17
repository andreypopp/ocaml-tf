(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset_iam_member__condition
type google_bigquery_dataset_iam_member

type t = private {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_bigquery_dataset_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_bigquery_dataset_iam_member__condition list ->
  string ->
  t
