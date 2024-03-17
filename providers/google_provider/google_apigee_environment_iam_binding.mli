(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment_iam_binding__condition
type google_apigee_environment_iam_binding

val google_apigee_environment_iam_binding :
  ?id:string prop ->
  env_id:string prop ->
  members:string prop list ->
  org_id:string prop ->
  role:string prop ->
  condition:google_apigee_environment_iam_binding__condition list ->
  string ->
  unit
