(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_iam_binding__condition
type google_project_iam_binding

val google_project_iam_binding :
  ?id:string prop ->
  members:string prop list ->
  project:string prop ->
  role:string prop ->
  condition:google_project_iam_binding__condition list ->
  string ->
  unit
