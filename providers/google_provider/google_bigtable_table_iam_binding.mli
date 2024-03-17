(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigtable_table_iam_binding__condition
type google_bigtable_table_iam_binding

val google_bigtable_table_iam_binding :
  ?id:string ->
  ?project:string ->
  instance:string ->
  members:string list ->
  role:string ->
  table:string ->
  condition:google_bigtable_table_iam_binding__condition list ->
  string ->
  unit
