(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_iam_binding__condition
type google_compute_instance_iam_binding

val google_compute_instance_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  instance_name:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_compute_instance_iam_binding__condition list ->
  string ->
  unit
