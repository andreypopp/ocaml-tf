(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_service_iam_member__condition
type google_cloud_run_service_iam_member

val google_cloud_run_service_iam_member :
  member:string ->
  role:string ->
  service:string ->
  condition:google_cloud_run_service_iam_member__condition list ->
  string ->
  unit
