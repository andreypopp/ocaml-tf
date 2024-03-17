(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_member__condition
type google_project_iam_member

val google_project_iam_member :
  ?id:string prop ->
  member:string prop ->
  project:string prop ->
  role:string prop ->
  condition:google_project_iam_member__condition list ->
  string ->
  unit
