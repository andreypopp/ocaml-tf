(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
  zone : string prop;
}

val google_compute_disk_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  name:string prop ->
  policy_data:string prop ->
  string ->
  t
