(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment_iam_binding__condition
type google_apigee_environment_iam_binding

val google_apigee_environment_iam_binding :
  ?id:string ->
  env_id:string ->
  members:string list ->
  org_id:string ->
  role:string ->
  condition:google_apigee_environment_iam_binding__condition list ->
  string ->
  unit
