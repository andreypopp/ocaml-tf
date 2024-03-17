(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image_iam_member__condition
type google_compute_image_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  image : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val google_compute_image_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  image:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_compute_image_iam_member__condition list ->
  string ->
  t
