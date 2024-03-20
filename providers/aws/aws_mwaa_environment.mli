(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type last_updated__error = {
  error_code : string prop;  (** error_code *)
  error_message : string prop;  (** error_message *)
}

type last_updated = {
  created_at : string prop;  (** created_at *)
  error : last_updated__error list;  (** error *)
  status : string prop;  (** status *)
}

type logging_configuration__dag_processing_logs

val logging_configuration__dag_processing_logs :
  ?enabled:bool prop ->
  ?log_level:string prop ->
  unit ->
  logging_configuration__dag_processing_logs

type logging_configuration__scheduler_logs

val logging_configuration__scheduler_logs :
  ?enabled:bool prop ->
  ?log_level:string prop ->
  unit ->
  logging_configuration__scheduler_logs

type logging_configuration__task_logs

val logging_configuration__task_logs :
  ?enabled:bool prop ->
  ?log_level:string prop ->
  unit ->
  logging_configuration__task_logs

type logging_configuration__webserver_logs

val logging_configuration__webserver_logs :
  ?enabled:bool prop ->
  ?log_level:string prop ->
  unit ->
  logging_configuration__webserver_logs

type logging_configuration__worker_logs

val logging_configuration__worker_logs :
  ?enabled:bool prop ->
  ?log_level:string prop ->
  unit ->
  logging_configuration__worker_logs

type logging_configuration

val logging_configuration :
  dag_processing_logs:logging_configuration__dag_processing_logs list ->
  scheduler_logs:logging_configuration__scheduler_logs list ->
  task_logs:logging_configuration__task_logs list ->
  webserver_logs:logging_configuration__webserver_logs list ->
  worker_logs:logging_configuration__worker_logs list ->
  unit ->
  logging_configuration

type network_configuration

val network_configuration :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  network_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  dag_s3_path:string prop ->
  execution_role_arn:string prop ->
  name:string prop ->
  source_bucket_arn:string prop ->
  logging_configuration:logging_configuration list ->
  network_configuration:network_configuration list ->
  unit ->
  aws_mwaa_environment

val yojson_of_aws_mwaa_environment : aws_mwaa_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  airflow_configuration_options : (string * string) list prop;
  airflow_version : string prop;
  arn : string prop;
  created_at : string prop;
  dag_s3_path : string prop;
  endpoint_management : string prop;
  environment_class : string prop;
  execution_role_arn : string prop;
  id : string prop;
  kms_key : string prop;
  last_updated : last_updated list prop;
  max_workers : float prop;
  min_workers : float prop;
  name : string prop;
  plugins_s3_object_version : string prop;
  plugins_s3_path : string prop;
  requirements_s3_object_version : string prop;
  requirements_s3_path : string prop;
  schedulers : float prop;
  service_role_arn : string prop;
  source_bucket_arn : string prop;
  startup_script_s3_object_version : string prop;
  startup_script_s3_path : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  webserver_access_mode : string prop;
  webserver_url : string prop;
  weekly_maintenance_window_start : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  dag_s3_path:string prop ->
  execution_role_arn:string prop ->
  name:string prop ->
  source_bucket_arn:string prop ->
  logging_configuration:logging_configuration list ->
  network_configuration:network_configuration list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  dag_s3_path:string prop ->
  execution_role_arn:string prop ->
  name:string prop ->
  source_bucket_arn:string prop ->
  logging_configuration:logging_configuration list ->
  network_configuration:network_configuration list ->
  string ->
  t Tf_core.resource
