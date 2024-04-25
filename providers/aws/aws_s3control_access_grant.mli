(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_grants_location_configuration

val access_grants_location_configuration :
  ?s3_sub_prefix:string prop ->
  unit ->
  access_grants_location_configuration

type grantee

val grantee :
  grantee_identifier:string prop ->
  grantee_type:string prop ->
  unit ->
  grantee

type aws_s3control_access_grant

val aws_s3control_access_grant :
  ?account_id:string prop ->
  ?s3_prefix_type:string prop ->
  ?tags:(string * string prop) list ->
  ?access_grants_location_configuration:
    access_grants_location_configuration list ->
  ?grantee:grantee list ->
  access_grants_location_id:string prop ->
  permission:string prop ->
  unit ->
  aws_s3control_access_grant

val yojson_of_aws_s3control_access_grant :
  aws_s3control_access_grant -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?s3_prefix_type:string prop ->
  ?tags:(string * string prop) list ->
  ?access_grants_location_configuration:
    access_grants_location_configuration list ->
  ?grantee:grantee list ->
  access_grants_location_id:string prop ->
  permission:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?s3_prefix_type:string prop ->
  ?tags:(string * string prop) list ->
  ?access_grants_location_configuration:
    access_grants_location_configuration list ->
  ?grantee:grantee list ->
  access_grants_location_id:string prop ->
  permission:string prop ->
  string ->
  t Tf_core.resource
