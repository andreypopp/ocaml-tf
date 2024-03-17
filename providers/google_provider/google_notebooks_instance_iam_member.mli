(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance_iam_member__condition
type google_notebooks_instance_iam_member

val google_notebooks_instance_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_name:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_notebooks_instance_iam_member__condition list ->
  string ->
  unit
