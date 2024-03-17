(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_table_iam_member__condition
type google_bigquery_table_iam_member

val google_bigquery_table_iam_member :
  dataset_id:string ->
  member:string ->
  role:string ->
  table_id:string ->
  condition:google_bigquery_table_iam_member__condition list ->
  string ->
  unit
