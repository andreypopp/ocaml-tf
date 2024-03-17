(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_region_backend_service_iam_binding__condition
type google_iap_web_region_backend_service_iam_binding

val google_iap_web_region_backend_service_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  members:string list ->
  role:string ->
  web_region_backend_service:string ->
  condition:
    google_iap_web_region_backend_service_iam_binding__condition list ->
  string ->
  unit
