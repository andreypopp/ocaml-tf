(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_activity_stream

val aws_rds_cluster_activity_stream :
  ?engine_native_audit_fields_included:bool prop ->
  ?id:string prop ->
  kms_key_id:string prop ->
  mode:string prop ->
  resource_arn:string prop ->
  string ->
  unit
