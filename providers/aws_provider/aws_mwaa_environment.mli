(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mwaa_environment__logging_configuration__dag_processing_logs
type aws_mwaa_environment__logging_configuration__scheduler_logs
type aws_mwaa_environment__logging_configuration__task_logs
type aws_mwaa_environment__logging_configuration__webserver_logs
type aws_mwaa_environment__logging_configuration__worker_logs
type aws_mwaa_environment__logging_configuration
type aws_mwaa_environment__network_configuration
type aws_mwaa_environment__timeouts

type aws_mwaa_environment__last_updated__error = {
  error_code : string prop;  (** error_code *)
  error_message : string prop;  (** error_message *)
}

type aws_mwaa_environment__last_updated = {
  created_at : string prop;  (** created_at *)
  error : aws_mwaa_environment__last_updated__error list;
      (** error *)
  status : string prop;  (** status *)
}

type aws_mwaa_environment

val aws_mwaa_environment :
  ?airflow_configuration_options:(string * string prop) list ->
  ?airflow_version:string prop ->
  ?endpoint_management:string prop ->
  ?environment_class:string prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?max_workers:float prop ->
  ?min_workers:float prop ->
  ?plugins_s3_object_version:string prop ->
  ?plugins_s3_path:string prop ->
  ?requirements_s3_object_version:string prop ->
  ?requirements_s3_path:string prop ->
  ?schedulers:float prop ->
  ?startup_script_s3_object_version:string prop ->
  ?startup_script_s3_path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?webserver_access_mode:string prop ->
  ?weekly_maintenance_window_start:string prop ->
  ?timeouts:aws_mwaa_environment__timeouts ->
  dag_s3_path:string prop ->
  execution_role_arn:string prop ->
  name:string prop ->
  source_bucket_arn:string prop ->
  logging_configuration:
    aws_mwaa_environment__logging_configuration list ->
  network_configuration:
    aws_mwaa_environment__network_configuration list ->
  string ->
  unit
