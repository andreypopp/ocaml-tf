(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_endpoints_service_consumers_iam_binding__condition
type google_endpoints_service_consumers_iam_binding

val google_endpoints_service_consumers_iam_binding :
  ?id:string prop ->
  consumer_project:string prop ->
  members:string prop list ->
  role:string prop ->
  service_name:string prop ->
  condition:
    google_endpoints_service_consumers_iam_binding__condition list ->
  string ->
  unit
