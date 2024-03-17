(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment_iam_member__condition
type google_apigee_environment_iam_member

val google_apigee_environment_iam_member :
  env_id:string ->
  member:string ->
  org_id:string ->
  role:string ->
  condition:google_apigee_environment_iam_member__condition list ->
  string ->
  unit
