(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_connection_iam_member__condition
type google_bigquery_connection_iam_member

val google_bigquery_connection_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  connection_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_bigquery_connection_iam_member__condition list ->
  string ->
  unit
