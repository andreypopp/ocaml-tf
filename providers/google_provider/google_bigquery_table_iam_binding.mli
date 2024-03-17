(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_table_iam_binding__condition
type google_bigquery_table_iam_binding

val google_bigquery_table_iam_binding :
  ?id:string ->
  ?project:string ->
  dataset_id:string ->
  members:string list ->
  role:string ->
  table_id:string ->
  condition:google_bigquery_table_iam_binding__condition list ->
  string ->
  unit
