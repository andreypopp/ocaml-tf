(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_service_iam_binding__condition
type google_cloud_run_service_iam_binding

val google_cloud_run_service_iam_binding :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  members:string list ->
  role:string ->
  service:string ->
  condition:google_cloud_run_service_iam_binding__condition list ->
  string ->
  unit
