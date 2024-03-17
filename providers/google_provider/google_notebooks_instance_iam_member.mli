(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance_iam_member__condition
type google_notebooks_instance_iam_member

val google_notebooks_instance_iam_member :
  instance_name:string ->
  member:string ->
  role:string ->
  condition:google_notebooks_instance_iam_member__condition list ->
  string ->
  unit
