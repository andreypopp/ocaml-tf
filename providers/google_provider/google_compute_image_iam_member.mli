(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image_iam_member__condition
type google_compute_image_iam_member

val google_compute_image_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  image:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_compute_image_iam_member__condition list ->
  string ->
  unit
