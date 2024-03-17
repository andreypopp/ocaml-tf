(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image_iam_binding__condition
type google_compute_image_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  image : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

val google_compute_image_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  image:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_compute_image_iam_binding__condition list ->
  string ->
  t
