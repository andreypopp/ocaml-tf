(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_consumers_iam_member__condition
type google_endpoints_service_consumers_iam_member

val google_endpoints_service_consumers_iam_member :
  ?id:string ->
  consumer_project:string ->
  member:string ->
  role:string ->
  service_name:string ->
  condition:
    google_endpoints_service_consumers_iam_member__condition list ->
  string ->
  unit
