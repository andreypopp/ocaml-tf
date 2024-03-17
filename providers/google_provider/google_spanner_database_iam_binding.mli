(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_spanner_database_iam_binding__condition
type google_spanner_database_iam_binding

val google_spanner_database_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  database:string prop ->
  instance:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_spanner_database_iam_binding__condition list ->
  string ->
  unit
