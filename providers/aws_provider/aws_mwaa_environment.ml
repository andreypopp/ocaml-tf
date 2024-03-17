(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mwaa_environment__logging_configuration__dag_processing_logs = {
  cloud_watch_log_group_arn : string;
      (** cloud_watch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_level : string option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__dag_processing_logs *)

type aws_mwaa_environment__logging_configuration__scheduler_logs = {
  cloud_watch_log_group_arn : string;
      (** cloud_watch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_level : string option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__scheduler_logs *)

type aws_mwaa_environment__logging_configuration__task_logs = {
  cloud_watch_log_group_arn : string;
      (** cloud_watch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_level : string option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__task_logs *)

type aws_mwaa_environment__logging_configuration__webserver_logs = {
  cloud_watch_log_group_arn : string;
      (** cloud_watch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_level : string option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__webserver_logs *)

type aws_mwaa_environment__logging_configuration__worker_logs = {
  cloud_watch_log_group_arn : string;
      (** cloud_watch_log_group_arn *)
  enabled : bool option; [@option]  (** enabled *)
  log_level : string option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__worker_logs *)

type aws_mwaa_environment__logging_configuration = {
  dag_processing_logs :
    aws_mwaa_environment__logging_configuration__dag_processing_logs
    list;
  scheduler_logs :
    aws_mwaa_environment__logging_configuration__scheduler_logs list;
  task_logs :
    aws_mwaa_environment__logging_configuration__task_logs list;
  webserver_logs :
    aws_mwaa_environment__logging_configuration__webserver_logs list;
  worker_logs :
    aws_mwaa_environment__logging_configuration__worker_logs list;
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration *)

type aws_mwaa_environment__network_configuration = {
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__network_configuration *)

type aws_mwaa_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__timeouts *)

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

type aws_mwaa_environment = {
  airflow_configuration_options : (string * string) list option;
      [@option]
      (** airflow_configuration_options *)
  airflow_version : string option; [@option]  (** airflow_version *)
  dag_s3_path : string;  (** dag_s3_path *)
  endpoint_management : string option; [@option]
      (** endpoint_management *)
  environment_class : string option; [@option]
      (** environment_class *)
  execution_role_arn : string;  (** execution_role_arn *)
  id : string option; [@option]  (** id *)
  kms_key : string option; [@option]  (** kms_key *)
  max_workers : float option; [@option]  (** max_workers *)
  min_workers : float option; [@option]  (** min_workers *)
  name : string;  (** name *)
  plugins_s3_object_version : string option; [@option]
      (** plugins_s3_object_version *)
  plugins_s3_path : string option; [@option]  (** plugins_s3_path *)
  requirements_s3_object_version : string option; [@option]
      (** requirements_s3_object_version *)
  requirements_s3_path : string option; [@option]
      (** requirements_s3_path *)
  schedulers : float option; [@option]  (** schedulers *)
  source_bucket_arn : string;  (** source_bucket_arn *)
  startup_script_s3_object_version : string option; [@option]
      (** startup_script_s3_object_version *)
  startup_script_s3_path : string option; [@option]
      (** startup_script_s3_path *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  webserver_access_mode : string option; [@option]
      (** webserver_access_mode *)
  weekly_maintenance_window_start : string option; [@option]
      (** weekly_maintenance_window_start *)
  logging_configuration :
    aws_mwaa_environment__logging_configuration list;
  network_configuration :
    aws_mwaa_environment__network_configuration list;
  timeouts : aws_mwaa_environment__timeouts option;
}
[@@deriving yojson_of]
(** aws_mwaa_environment *)

let aws_mwaa_environment ?airflow_configuration_options
    ?airflow_version ?endpoint_management ?environment_class ?id
    ?kms_key ?max_workers ?min_workers ?plugins_s3_object_version
    ?plugins_s3_path ?requirements_s3_object_version
    ?requirements_s3_path ?schedulers
    ?startup_script_s3_object_version ?startup_script_s3_path ?tags
    ?tags_all ?webserver_access_mode ?weekly_maintenance_window_start
    ?timeouts ~dag_s3_path ~execution_role_arn ~name
    ~source_bucket_arn ~logging_configuration ~network_configuration
    __resource_id =
  let __resource_type = "aws_mwaa_environment" in
  let __resource =
    {
      airflow_configuration_options;
      airflow_version;
      dag_s3_path;
      endpoint_management;
      environment_class;
      execution_role_arn;
      id;
      kms_key;
      max_workers;
      min_workers;
      name;
      plugins_s3_object_version;
      plugins_s3_path;
      requirements_s3_object_version;
      requirements_s3_path;
      schedulers;
      source_bucket_arn;
      startup_script_s3_object_version;
      startup_script_s3_path;
      tags;
      tags_all;
      webserver_access_mode;
      weekly_maintenance_window_start;
      logging_configuration;
      network_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mwaa_environment __resource);
  ()
