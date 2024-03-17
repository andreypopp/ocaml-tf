(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grant__access_grants_location_configuration
type aws_s3control_access_grant__grantee
type aws_s3control_access_grant

val aws_s3control_access_grant :
  ?account_id:string ->
  ?s3_prefix_type:string ->
  ?tags:(string * string) list ->
  access_grants_location_id:string ->
  permission:string ->
  access_grants_location_configuration:
    aws_s3control_access_grant__access_grants_location_configuration
    list ->
  grantee:aws_s3control_access_grant__grantee list ->
  string ->
  unit
