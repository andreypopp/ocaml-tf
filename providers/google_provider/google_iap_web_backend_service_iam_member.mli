(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_backend_service_iam_member__condition
type google_iap_web_backend_service_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  web_backend_service : string prop;
}

val google_iap_web_backend_service_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  web_backend_service:string prop ->
  condition:google_iap_web_backend_service_iam_member__condition list ->
  string ->
  t
