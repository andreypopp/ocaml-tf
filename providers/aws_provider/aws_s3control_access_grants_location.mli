(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grants_location

val aws_s3control_access_grants_location :
  ?account_id:string prop ->
  ?tags:(string * string prop) list ->
  iam_role_arn:string prop ->
  location_scope:string prop ->
  string ->
  unit
