(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_table_iam_member__condition
type google_bigtable_table_iam_member

val google_bigtable_table_iam_member :
  ?id:string ->
  ?project:string ->
  instance:string ->
  member:string ->
  role:string ->
  table:string ->
  condition:google_bigtable_table_iam_member__condition list ->
  string ->
  unit
