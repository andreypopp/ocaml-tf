(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_export_task__timeouts
type aws_rds_export_task

type t = private {
  export_only : string list prop;
  export_task_identifier : string prop;
  failure_cause : string prop;
  iam_role_arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  percent_progress : float prop;
  s3_bucket_name : string prop;
  s3_prefix : string prop;
  snapshot_time : string prop;
  source_arn : string prop;
  source_type : string prop;
  status : string prop;
  task_end_time : string prop;
  task_start_time : string prop;
  warning_message : string prop;
}

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
  t
