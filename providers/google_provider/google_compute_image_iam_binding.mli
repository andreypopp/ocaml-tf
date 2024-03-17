(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image_iam_binding__condition
type google_compute_image_iam_binding

val google_compute_image_iam_binding :
  image:string ->
  members:string list ->
  role:string ->
  condition:google_compute_image_iam_binding__condition list ->
  string ->
  unit
