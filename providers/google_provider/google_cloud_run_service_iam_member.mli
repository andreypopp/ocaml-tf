(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_service_iam_member__condition
type google_cloud_run_service_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  service : string prop;
}

val google_cloud_run_service_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  service:string prop ->
  condition:google_cloud_run_service_iam_member__condition list ->
  string ->
  t
