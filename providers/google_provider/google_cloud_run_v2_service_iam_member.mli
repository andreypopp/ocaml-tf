(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_run_v2_service_iam_member__condition
type google_cloud_run_v2_service_iam_member

val google_cloud_run_v2_service_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  name:string ->
  role:string ->
  condition:google_cloud_run_v2_service_iam_member__condition list ->
  string ->
  unit
