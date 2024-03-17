(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_iam_binding__condition
type google_compute_instance_iam_binding

val google_compute_instance_iam_binding :
  ?id:string ->
  ?project:string ->
  ?zone:string ->
  instance_name:string ->
  members:string list ->
  role:string ->
  condition:google_compute_instance_iam_binding__condition list ->
  string ->
  unit
