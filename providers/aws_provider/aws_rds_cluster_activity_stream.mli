(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_cluster_activity_stream

val aws_rds_cluster_activity_stream :
  ?engine_native_audit_fields_included:bool ->
  ?id:string ->
  kms_key_id:string ->
  mode:string ->
  resource_arn:string ->
  string ->
  unit
