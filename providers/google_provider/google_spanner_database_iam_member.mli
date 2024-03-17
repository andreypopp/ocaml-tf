(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database_iam_member__condition
type google_spanner_database_iam_member

val google_spanner_database_iam_member :
  ?id:string ->
  ?project:string ->
  database:string ->
  instance:string ->
  member:string ->
  role:string ->
  condition:google_spanner_database_iam_member__condition list ->
  string ->
  unit
