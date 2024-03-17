(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_member__condition
type google_project_iam_member

val google_project_iam_member :
  member:string ->
  project:string ->
  role:string ->
  condition:google_project_iam_member__condition list ->
  string ->
  unit
