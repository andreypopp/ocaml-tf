(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_iam_member__condition
type google_compute_instance_iam_member

val google_compute_instance_iam_member :
  ?id:string ->
  ?project:string ->
  ?zone:string ->
  instance_name:string ->
  member:string ->
  role:string ->
  condition:google_compute_instance_iam_member__condition list ->
  string ->
  unit
