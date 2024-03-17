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
[@@deriving yojson_of]

type aws_mwaa_environment__last_updated = {
  created_at : string;  (** created_at *)
  error : aws_mwaa_environment__last_updated__error list;
      (** error *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_mwaa_environment

val aws_mwaa_environment :
  ?airflow_configuration_options:(string * string) list ->
  ?kms_key:string ->
  ?plugins_s3_path:string ->
  ?requirements_s3_path:string ->
  ?startup_script_s3_path:string ->
  ?tags:(string * string) list ->
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
