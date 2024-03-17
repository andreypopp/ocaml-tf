(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_region_backend_service_iam_binding__condition
type google_iap_web_region_backend_service_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
  web_region_backend_service : string prop;
}

val google_iap_web_region_backend_service_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  members:string prop list ->
  role:string prop ->
  web_region_backend_service:string prop ->
  condition:
    google_iap_web_region_backend_service_iam_binding__condition list ->
  string ->
  t
