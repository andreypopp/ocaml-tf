(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_region_backend_service_iam_member__condition
type google_iap_web_region_backend_service_iam_member

val google_iap_web_region_backend_service_iam_member :
  member:string ->
  role:string ->
  web_region_backend_service:string ->
  condition:
    google_iap_web_region_backend_service_iam_member__condition list ->
  string ->
  unit
