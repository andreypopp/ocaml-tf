(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk_iam_member__condition
type google_compute_disk_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

val google_compute_disk_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  condition:google_compute_disk_iam_member__condition list ->
  string ->
  t
