(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image_iam_member__condition
type google_compute_image_iam_member

val google_compute_image_iam_member :
  image:string ->
  member:string ->
  role:string ->
  condition:google_compute_image_iam_member__condition list ->
  string ->
  unit
