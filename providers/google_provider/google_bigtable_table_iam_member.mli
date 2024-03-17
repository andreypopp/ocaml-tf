(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_table_iam_member__condition
type google_bigtable_table_iam_member

val google_bigtable_table_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  table:string prop ->
  condition:google_bigtable_table_iam_member__condition list ->
  string ->
  unit
