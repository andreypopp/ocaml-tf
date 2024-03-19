(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type target_grant__grantee

val target_grant__grantee :
  ?email_address:string prop ->
  ?id:string prop ->
  ?uri:string prop ->
  type_:string prop ->
  unit ->
  target_grant__grantee

type target_grant

val target_grant :
  permission:string prop ->
  grantee:target_grant__grantee list ->
  unit ->
  target_grant

type target_object_key_format__partitioned_prefix

val target_object_key_format__partitioned_prefix :
  partition_date_source:string prop ->
  unit ->
  target_object_key_format__partitioned_prefix

type target_object_key_format__simple_prefix

val target_object_key_format__simple_prefix :
  unit -> target_object_key_format__simple_prefix

type target_object_key_format

val target_object_key_format :
  partitioned_prefix:
    target_object_key_format__partitioned_prefix list ->
  simple_prefix:target_object_key_format__simple_prefix list ->
  unit ->
  target_object_key_format

type aws_s3_bucket_logging

val aws_s3_bucket_logging :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  target_bucket:string prop ->
  target_prefix:string prop ->
  target_grant:target_grant list ->
  target_object_key_format:target_object_key_format list ->
  unit ->
  aws_s3_bucket_logging

val yojson_of_aws_s3_bucket_logging : aws_s3_bucket_logging -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  target_bucket : string prop;
  target_prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  target_bucket:string prop ->
  target_prefix:string prop ->
  target_grant:target_grant list ->
  target_object_key_format:target_object_key_format list ->
  string ->
  t
