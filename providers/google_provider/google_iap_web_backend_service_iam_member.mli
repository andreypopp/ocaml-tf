(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_web_backend_service_iam_member__condition
type google_iap_web_backend_service_iam_member

val google_iap_web_backend_service_iam_member :
  ?id:string ->
  ?project:string ->
  member:string ->
  role:string ->
  web_backend_service:string ->
  condition:google_iap_web_backend_service_iam_member__condition list ->
  string ->
  unit
