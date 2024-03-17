(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_dataset_iam_member__condition
type google_bigquery_dataset_iam_member

val google_bigquery_dataset_iam_member :
  ?id:string ->
  ?project:string ->
  dataset_id:string ->
  member:string ->
  role:string ->
  condition:google_bigquery_dataset_iam_member__condition list ->
  string ->
  unit
