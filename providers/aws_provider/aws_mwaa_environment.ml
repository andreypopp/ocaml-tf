(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mwaa_environment__logging_configuration__dag_processing_logs = {
  cloud_watch_log_group_arn : string prop;
      (** cloud_watch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_level : string prop option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__dag_processing_logs *)

type aws_mwaa_environment__logging_configuration__scheduler_logs = {
  cloud_watch_log_group_arn : string prop;
      (** cloud_watch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_level : string prop option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__scheduler_logs *)

type aws_mwaa_environment__logging_configuration__task_logs = {
  cloud_watch_log_group_arn : string prop;
      (** cloud_watch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_level : string prop option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__task_logs *)

type aws_mwaa_environment__logging_configuration__webserver_logs = {
  cloud_watch_log_group_arn : string prop;
      (** cloud_watch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_level : string prop option; [@option]  (** log_level *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__logging_configuration__webserver_logs *)

type aws_mwaa_environment__logging_configuration__worker_logs = {
  cloud_watch_log_group_arn : string prop;
      (** cloud_watch_log_group_arn *)
  enabled : bool prop option; [@option]  (** enabled *)
  log_level : string prop option; [@option]  (** log_level *)
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
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__network_configuration *)

type aws_mwaa_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mwaa_environment__timeouts *)

type aws_mwaa_environment__last_updated__error = {
  error_code : string prop;  (** error_code *)
  error_message : string prop;  (** error_message *)
}
[@@deriving yojson_of]

type aws_mwaa_environment__last_updated = {
  created_at : string prop;  (** created_at *)
  error : aws_mwaa_environment__last_updated__error list;
      (** error *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_mwaa_environment = {
  airflow_configuration_options : (string * string prop) list option;
      [@option]
      (** airflow_configuration_options *)
  airflow_version : string prop option; [@option]
      (** airflow_version *)
  dag_s3_path : string prop;  (** dag_s3_path *)
  endpoint_management : string prop option; [@option]
      (** endpoint_management *)
  environment_class : string prop option; [@option]
      (** environment_class *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop option; [@option]  (** kms_key *)
  max_workers : float prop option; [@option]  (** max_workers *)
  min_workers : float prop option; [@option]  (** min_workers *)
  name : string prop;  (** name *)
  plugins_s3_object_version : string prop option; [@option]
      (** plugins_s3_object_version *)
  plugins_s3_path : string prop option; [@option]
      (** plugins_s3_path *)
  requirements_s3_object_version : string prop option; [@option]
      (** requirements_s3_object_version *)
  requirements_s3_path : string prop option; [@option]
      (** requirements_s3_path *)
  schedulers : float prop option; [@option]  (** schedulers *)
  source_bucket_arn : string prop;  (** source_bucket_arn *)
  startup_script_s3_object_version : string prop option; [@option]
      (** startup_script_s3_object_version *)
  startup_script_s3_path : string prop option; [@option]
      (** startup_script_s3_path *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  webserver_access_mode : string prop option; [@option]
      (** webserver_access_mode *)
  weekly_maintenance_window_start : string prop option; [@option]
      (** weekly_maintenance_window_start *)
  logging_configuration :
    aws_mwaa_environment__logging_configuration list;
  network_configuration :
    aws_mwaa_environment__network_configuration list;
  timeouts : aws_mwaa_environment__timeouts option;
}
[@@deriving yojson_of]
(** aws_mwaa_environment *)

type t = {
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
  last_updated : aws_mwaa_environment__last_updated list prop;
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
    ({
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
      : aws_mwaa_environment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mwaa_environment __resource);
  let __resource_attributes =
    ({
       airflow_configuration_options =
         Prop.computed __resource_type __resource_id
           "airflow_configuration_options";
       airflow_version =
         Prop.computed __resource_type __resource_id
           "airflow_version";
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       dag_s3_path =
         Prop.computed __resource_type __resource_id "dag_s3_path";
       endpoint_management =
         Prop.computed __resource_type __resource_id
           "endpoint_management";
       environment_class =
         Prop.computed __resource_type __resource_id
           "environment_class";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key =
         Prop.computed __resource_type __resource_id "kms_key";
       last_updated =
         Prop.computed __resource_type __resource_id "last_updated";
       max_workers =
         Prop.computed __resource_type __resource_id "max_workers";
       min_workers =
         Prop.computed __resource_type __resource_id "min_workers";
       name = Prop.computed __resource_type __resource_id "name";
       plugins_s3_object_version =
         Prop.computed __resource_type __resource_id
           "plugins_s3_object_version";
       plugins_s3_path =
         Prop.computed __resource_type __resource_id
           "plugins_s3_path";
       requirements_s3_object_version =
         Prop.computed __resource_type __resource_id
           "requirements_s3_object_version";
       requirements_s3_path =
         Prop.computed __resource_type __resource_id
           "requirements_s3_path";
       schedulers =
         Prop.computed __resource_type __resource_id "schedulers";
       service_role_arn =
         Prop.computed __resource_type __resource_id
           "service_role_arn";
       source_bucket_arn =
         Prop.computed __resource_type __resource_id
           "source_bucket_arn";
       startup_script_s3_object_version =
         Prop.computed __resource_type __resource_id
           "startup_script_s3_object_version";
       startup_script_s3_path =
         Prop.computed __resource_type __resource_id
           "startup_script_s3_path";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       webserver_access_mode =
         Prop.computed __resource_type __resource_id
           "webserver_access_mode";
       webserver_url =
         Prop.computed __resource_type __resource_id "webserver_url";
       weekly_maintenance_window_start =
         Prop.computed __resource_type __resource_id
           "weekly_maintenance_window_start";
     }
      : t)
  in
  __resource_attributes
