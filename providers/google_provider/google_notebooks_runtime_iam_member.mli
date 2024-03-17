(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_runtime_iam_member__condition
type google_notebooks_runtime_iam_member

val google_notebooks_runtime_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  role:string ->
  runtime_name:string ->
  condition:google_notebooks_runtime_iam_member__condition list ->
  string ->
  unit
