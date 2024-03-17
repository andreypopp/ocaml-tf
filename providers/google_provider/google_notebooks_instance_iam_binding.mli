(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance_iam_binding__condition
type google_notebooks_instance_iam_binding

val google_notebooks_instance_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  instance_name:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_notebooks_instance_iam_binding__condition list ->
  string ->
  unit
