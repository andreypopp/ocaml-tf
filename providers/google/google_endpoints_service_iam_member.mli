(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_iam_member__condition
type google_endpoints_service_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_name : string prop;
}

val google_endpoints_service_iam_member :
  ?id:string prop ->
  member:string prop ->
  role:string prop ->
  service_name:string prop ->
  condition:google_endpoints_service_iam_member__condition list ->
  string ->
  t
