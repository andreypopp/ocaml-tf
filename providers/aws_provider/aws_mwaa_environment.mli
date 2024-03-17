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
  error_code : string;  (** error_code *)
  error_message : string;  (** error_message *)
}

type aws_mwaa_environment__last_updated = {
  created_at : string;  (** created_at *)
  error : aws_mwaa_environment__last_updated__error list;
      (** error *)
  status : string;  (** status *)
}

type aws_mwaa_environment

val aws_mwaa_environment :
  ?airflow_configuration_options:(string * string) list ->
  ?airflow_version:string ->
  ?endpoint_management:string ->
  ?environment_class:string ->
  ?id:string ->
  ?kms_key:string ->
  ?max_workers:float ->
  ?min_workers:float ->
  ?plugins_s3_object_version:string ->
  ?plugins_s3_path:string ->
  ?requirements_s3_object_version:string ->
  ?requirements_s3_path:string ->
  ?schedulers:float ->
  ?startup_script_s3_object_version:string ->
  ?startup_script_s3_path:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?webserver_access_mode:string ->
  ?weekly_maintenance_window_start:string ->
  ?timeouts:aws_mwaa_environment__timeouts ->
  dag_s3_path:string ->
  execution_role_arn:string ->
  name:string ->
  source_bucket_arn:string ->
  logging_configuration:
    aws_mwaa_environment__logging_configuration list ->
  network_configuration:
    aws_mwaa_environment__network_configuration list ->
  string ->
  unit
