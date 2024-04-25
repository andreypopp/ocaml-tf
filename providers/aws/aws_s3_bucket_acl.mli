(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_control_policy__grant__grantee

val access_control_policy__grant__grantee :
  ?email_address:string prop ->
  ?id:string prop ->
  ?uri:string prop ->
  type_:string prop ->
  unit ->
  access_control_policy__grant__grantee

type access_control_policy__grant

val access_control_policy__grant :
  ?grantee:access_control_policy__grant__grantee list ->
  permission:string prop ->
  unit ->
  access_control_policy__grant

type access_control_policy__owner

val access_control_policy__owner :
  ?display_name:string prop ->
  id:string prop ->
  unit ->
  access_control_policy__owner

type access_control_policy

val access_control_policy :
  grant:access_control_policy__grant list ->
  owner:access_control_policy__owner list ->
  unit ->
  access_control_policy

type aws_s3_bucket_acl

val aws_s3_bucket_acl :
  ?acl:string prop ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?access_control_policy:access_control_policy list ->
  bucket:string prop ->
  unit ->
  aws_s3_bucket_acl

val yojson_of_aws_s3_bucket_acl : aws_s3_bucket_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  acl : string prop;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?acl:string prop ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?access_control_policy:access_control_policy list ->
  bucket:string prop ->
  string ->
  t

val make :
  ?acl:string prop ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?access_control_policy:access_control_policy list ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
