(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grants_location

val aws_s3control_access_grants_location :
  ?account_id:string ->
  ?tags:(string * string) list ->
  iam_role_arn:string ->
  location_scope:string ->
  string ->
  unit
