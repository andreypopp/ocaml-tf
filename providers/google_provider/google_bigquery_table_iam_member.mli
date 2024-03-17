(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_table_iam_member__condition
type google_bigquery_table_iam_member

val google_bigquery_table_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  dataset_id:string prop ->
  member:string prop ->
  role:string prop ->
  table_id:string prop ->
  condition:google_bigquery_table_iam_member__condition list ->
  string ->
  unit
