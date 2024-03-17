(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk_iam_binding__condition
type google_compute_disk_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  name : string prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

val google_compute_disk_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  members:string prop list ->
  name:string prop ->
  role:string prop ->
  condition:google_compute_disk_iam_binding__condition list ->
  string ->
  t
