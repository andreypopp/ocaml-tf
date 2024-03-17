(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_iam_binding__condition
type google_endpoints_service_iam_binding

val google_endpoints_service_iam_binding :
  ?id:string ->
  members:string list ->
  role:string ->
  service_name:string ->
  condition:google_endpoints_service_iam_binding__condition list ->
  string ->
  unit
