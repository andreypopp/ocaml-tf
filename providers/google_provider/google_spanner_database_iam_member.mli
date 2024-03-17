(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database_iam_member__condition
type google_spanner_database_iam_member

val google_spanner_database_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  database:string prop ->
  instance:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_spanner_database_iam_member__condition list ->
  string ->
  unit
