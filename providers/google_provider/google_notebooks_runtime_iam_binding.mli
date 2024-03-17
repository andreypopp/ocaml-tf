(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_runtime_iam_binding__condition
type google_notebooks_runtime_iam_binding

val google_notebooks_runtime_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  members:string list ->
  role:string ->
  runtime_name:string ->
  condition:google_notebooks_runtime_iam_binding__condition list ->
  string ->
  unit
