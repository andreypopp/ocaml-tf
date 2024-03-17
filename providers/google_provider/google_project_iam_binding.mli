(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_binding__condition
type google_project_iam_binding

val google_project_iam_binding :
  members:string list ->
  project:string ->
  role:string ->
  condition:google_project_iam_binding__condition list ->
  string ->
  unit
