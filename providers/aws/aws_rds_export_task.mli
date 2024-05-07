(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_rds_export_task

val aws_rds_export_task :
  ?export_only:string prop list ->
  ?s3_prefix:string prop ->
  ?timeouts:timeouts ->
  export_task_identifier:string prop ->
  iam_role_arn:string prop ->
  kms_key_id:string prop ->
  s3_bucket_name:string prop ->
  source_arn:string prop ->
  unit ->
  aws_rds_export_task

val yojson_of_aws_rds_export_task : aws_rds_export_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?export_only:string prop list ->
  ?s3_prefix:string prop ->
  ?timeouts:timeouts ->
  export_task_identifier:string prop ->
  iam_role_arn:string prop ->
  kms_key_id:string prop ->
  s3_bucket_name:string prop ->
  source_arn:string prop ->
  string ->
  t

val make :
  ?export_only:string prop list ->
  ?s3_prefix:string prop ->
  ?timeouts:timeouts ->
  export_task_identifier:string prop ->
  iam_role_arn:string prop ->
  kms_key_id:string prop ->
  s3_bucket_name:string prop ->
  source_arn:string prop ->
  string ->
  t Tf_core.resource
