(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_export_task__timeouts
type aws_rds_export_task

val aws_rds_export_task :
  ?export_only:string list ->
  ?s3_prefix:string ->
  ?timeouts:aws_rds_export_task__timeouts ->
  export_task_identifier:string ->
  iam_role_arn:string ->
  kms_key_id:string ->
  s3_bucket_name:string ->
  source_arn:string ->
  string ->
  unit
