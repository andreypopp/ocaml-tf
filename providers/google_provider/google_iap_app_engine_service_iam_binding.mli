(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_app_engine_service_iam_binding__condition
type google_iap_app_engine_service_iam_binding

val google_iap_app_engine_service_iam_binding :
  ?id:string ->
  ?project:string ->
  app_id:string ->
  members:string list ->
  role:string ->
  service:string ->
  condition:google_iap_app_engine_service_iam_binding__condition list ->
  string ->
  unit
