(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__apply_server_side_encryption_by_default

val rule__apply_server_side_encryption_by_default :
  ?kms_master_key_id:string prop ->
  sse_algorithm:string prop ->
  unit ->
  rule__apply_server_side_encryption_by_default

type rule

val rule :
  ?bucket_key_enabled:bool prop ->
  ?apply_server_side_encryption_by_default:
    rule__apply_server_side_encryption_by_default list ->
  unit ->
  rule

type aws_s3_bucket_server_side_encryption_configuration

val aws_s3_bucket_server_side_encryption_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  unit ->
  aws_s3_bucket_server_side_encryption_configuration

val yojson_of_aws_s3_bucket_server_side_encryption_configuration :
  aws_s3_bucket_server_side_encryption_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t

val make :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  rule:rule list ->
  string ->
  t Tf_core.resource
