(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_export_task__timeouts
type aws_rds_export_task

val aws_rds_export_task :
  ?export_only:string prop list ->
  ?s3_prefix:string prop ->
  ?timeouts:aws_rds_export_task__timeouts ->
  export_task_identifier:string prop ->
  iam_role_arn:string prop ->
  kms_key_id:string prop ->
  s3_bucket_name:string prop ->
  source_arn:string prop ->
  string ->
  unit
