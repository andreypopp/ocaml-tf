(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_cluster_activity_stream

val aws_rds_cluster_activity_stream :
  ?engine_native_audit_fields_included:bool prop ->
  ?id:string prop ->
  kms_key_id:string prop ->
  mode:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_rds_cluster_activity_stream

val yojson_of_aws_rds_cluster_activity_stream :
  aws_rds_cluster_activity_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  engine_native_audit_fields_included : bool prop;
  id : string prop;
  kinesis_stream_name : string prop;
  kms_key_id : string prop;
  mode : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine_native_audit_fields_included:bool prop ->
  ?id:string prop ->
  kms_key_id:string prop ->
  mode:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?engine_native_audit_fields_included:bool prop ->
  ?id:string prop ->
  kms_key_id:string prop ->
  mode:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
