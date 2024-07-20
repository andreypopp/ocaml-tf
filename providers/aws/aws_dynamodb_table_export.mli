(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dynamodb_table_export

val aws_dynamodb_table_export :
  ?export_format:string prop ->
  ?export_time:string prop ->
  ?id:string prop ->
  ?s3_bucket_owner:string prop ->
  ?s3_prefix:string prop ->
  ?s3_sse_algorithm:string prop ->
  ?s3_sse_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  s3_bucket:string prop ->
  table_arn:string prop ->
  unit ->
  aws_dynamodb_table_export

val yojson_of_aws_dynamodb_table_export :
  aws_dynamodb_table_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  billed_size_in_bytes : float prop;
  end_time : string prop;
  export_format : string prop;
  export_status : string prop;
  export_time : string prop;
  id : string prop;
  item_count : float prop;
  manifest_files_s3_key : string prop;
  s3_bucket : string prop;
  s3_bucket_owner : string prop;
  s3_prefix : string prop;
  s3_sse_algorithm : string prop;
  s3_sse_kms_key_id : string prop;
  start_time : string prop;
  table_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?export_format:string prop ->
  ?export_time:string prop ->
  ?id:string prop ->
  ?s3_bucket_owner:string prop ->
  ?s3_prefix:string prop ->
  ?s3_sse_algorithm:string prop ->
  ?s3_sse_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  s3_bucket:string prop ->
  table_arn:string prop ->
  string ->
  t

val make :
  ?export_format:string prop ->
  ?export_time:string prop ->
  ?id:string prop ->
  ?s3_bucket_owner:string prop ->
  ?s3_prefix:string prop ->
  ?s3_sse_algorithm:string prop ->
  ?s3_sse_kms_key_id:string prop ->
  ?timeouts:timeouts ->
  s3_bucket:string prop ->
  table_arn:string prop ->
  string ->
  t Tf_core.resource
