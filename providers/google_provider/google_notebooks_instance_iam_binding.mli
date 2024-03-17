(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance_iam_binding__condition
type google_notebooks_instance_iam_binding

val google_notebooks_instance_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  instance_name:string ->
  members:string list ->
  role:string ->
  condition:google_notebooks_instance_iam_binding__condition list ->
  string ->
  unit
