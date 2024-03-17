(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grant__access_grants_location_configuration
type aws_s3control_access_grant__grantee
type aws_s3control_access_grant

type t = private {
  access_grant_arn : string prop;
  access_grant_id : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  grant_scope : string prop;
  id : string prop;
  permission : string prop;
  s3_prefix_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_s3control_access_grant :
  ?account_id:string prop ->
  ?s3_prefix_type:string prop ->
  ?tags:(string * string prop) list ->
  access_grants_location_id:string prop ->
  permission:string prop ->
  access_grants_location_configuration:
    aws_s3control_access_grant__access_grants_location_configuration
    list ->
  grantee:aws_s3control_access_grant__grantee list ->
  string ->
  t
