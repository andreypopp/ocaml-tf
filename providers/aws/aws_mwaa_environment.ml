(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration__dag_processing_logs = {
  enabled : bool prop option; [@option]
  log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__dag_processing_logs) -> ()

let yojson_of_logging_configuration__dag_processing_logs =
  (function
   | { enabled = v_enabled; log_level = v_log_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__dag_processing_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__dag_processing_logs

[@@@deriving.end]

type logging_configuration__scheduler_logs = {
  enabled : bool prop option; [@option]
  log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__scheduler_logs) -> ()

let yojson_of_logging_configuration__scheduler_logs =
  (function
   | { enabled = v_enabled; log_level = v_log_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__scheduler_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__scheduler_logs

[@@@deriving.end]

type logging_configuration__task_logs = {
  enabled : bool prop option; [@option]
  log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__task_logs) -> ()

let yojson_of_logging_configuration__task_logs =
  (function
   | { enabled = v_enabled; log_level = v_log_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__task_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__task_logs

[@@@deriving.end]

type logging_configuration__webserver_logs = {
  enabled : bool prop option; [@option]
  log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__webserver_logs) -> ()

let yojson_of_logging_configuration__webserver_logs =
  (function
   | { enabled = v_enabled; log_level = v_log_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__webserver_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__webserver_logs

[@@@deriving.end]

type logging_configuration__worker_logs = {
  enabled : bool prop option; [@option]
  log_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration__worker_logs) -> ()

let yojson_of_logging_configuration__worker_logs =
  (function
   | { enabled = v_enabled; log_level = v_log_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_configuration__worker_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration__worker_logs

[@@@deriving.end]

type logging_configuration = {
  dag_processing_logs :
    logging_configuration__dag_processing_logs list;
  scheduler_logs : logging_configuration__scheduler_logs list;
  task_logs : logging_configuration__task_logs list;
  webserver_logs : logging_configuration__webserver_logs list;
  worker_logs : logging_configuration__worker_logs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_configuration) -> ()

let yojson_of_logging_configuration =
  (function
   | {
       dag_processing_logs = v_dag_processing_logs;
       scheduler_logs = v_scheduler_logs;
       task_logs = v_task_logs;
       webserver_logs = v_webserver_logs;
       worker_logs = v_worker_logs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__worker_logs
             v_worker_logs
         in
         ("worker_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__webserver_logs
             v_webserver_logs
         in
         ("webserver_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_configuration__task_logs
             v_task_logs
         in
         ("task_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__scheduler_logs
             v_scheduler_logs
         in
         ("scheduler_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_configuration__dag_processing_logs
             v_dag_processing_logs
         in
         ("dag_processing_logs", arg) :: bnds
       in
       `Assoc bnds
    : logging_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_configuration

[@@@deriving.end]

type network_configuration = {
  security_group_ids : string prop list;
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type last_updated__error = {
  error_code : string prop;
  error_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : last_updated__error) -> ()

let yojson_of_last_updated__error =
  (function
   | { error_code = v_error_code; error_message = v_error_message }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_message in
         ("error_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_code in
         ("error_code", arg) :: bnds
       in
       `Assoc bnds
    : last_updated__error -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_last_updated__error

[@@@deriving.end]

type last_updated = {
  created_at : string prop;
  error : last_updated__error list;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : last_updated) -> ()

let yojson_of_last_updated =
  (function
   | {
       created_at = v_created_at;
       error = v_error;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_last_updated__error v_error
         in
         ("error", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : last_updated -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_last_updated

[@@@deriving.end]

type aws_mwaa_environment = {
  airflow_configuration_options : (string * string prop) list option;
      [@option]
  airflow_version : string prop option; [@option]
  dag_s3_path : string prop;
  endpoint_management : string prop option; [@option]
  environment_class : string prop option; [@option]
  execution_role_arn : string prop;
  id : string prop option; [@option]
  kms_key : string prop option; [@option]
  max_workers : float prop option; [@option]
  min_workers : float prop option; [@option]
  name : string prop;
  plugins_s3_object_version : string prop option; [@option]
  plugins_s3_path : string prop option; [@option]
  requirements_s3_object_version : string prop option; [@option]
  requirements_s3_path : string prop option; [@option]
  schedulers : float prop option; [@option]
  source_bucket_arn : string prop;
  startup_script_s3_object_version : string prop option; [@option]
  startup_script_s3_path : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  webserver_access_mode : string prop option; [@option]
  weekly_maintenance_window_start : string prop option; [@option]
  logging_configuration : logging_configuration list;
  network_configuration : network_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mwaa_environment) -> ()

let yojson_of_aws_mwaa_environment =
  (function
   | {
       airflow_configuration_options =
         v_airflow_configuration_options;
       airflow_version = v_airflow_version;
       dag_s3_path = v_dag_s3_path;
       endpoint_management = v_endpoint_management;
       environment_class = v_environment_class;
       execution_role_arn = v_execution_role_arn;
       id = v_id;
       kms_key = v_kms_key;
       max_workers = v_max_workers;
       min_workers = v_min_workers;
       name = v_name;
       plugins_s3_object_version = v_plugins_s3_object_version;
       plugins_s3_path = v_plugins_s3_path;
       requirements_s3_object_version =
         v_requirements_s3_object_version;
       requirements_s3_path = v_requirements_s3_path;
       schedulers = v_schedulers;
       source_bucket_arn = v_source_bucket_arn;
       startup_script_s3_object_version =
         v_startup_script_s3_object_version;
       startup_script_s3_path = v_startup_script_s3_path;
       tags = v_tags;
       tags_all = v_tags_all;
       webserver_access_mode = v_webserver_access_mode;
       weekly_maintenance_window_start =
         v_weekly_maintenance_window_start;
       logging_configuration = v_logging_configuration;
       network_configuration = v_network_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_configuration
             v_network_configuration
         in
         ("network_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_configuration
             v_logging_configuration
         in
         ("logging_configuration", arg) :: bnds
       in
       let bnds =
         match v_weekly_maintenance_window_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_maintenance_window_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_webserver_access_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webserver_access_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_startup_script_s3_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "startup_script_s3_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_startup_script_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "startup_script_s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_bucket_arn
         in
         ("source_bucket_arn", arg) :: bnds
       in
       let bnds =
         match v_schedulers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "schedulers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requirements_s3_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "requirements_s3_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requirements_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "requirements_s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_plugins_s3_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plugins_s3_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_plugins_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plugins_s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         match v_environment_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_management with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_management", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dag_s3_path in
         ("dag_s3_path", arg) :: bnds
       in
       let bnds =
         match v_airflow_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "airflow_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_airflow_configuration_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "airflow_configuration_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mwaa_environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mwaa_environment

[@@@deriving.end]

let logging_configuration__dag_processing_logs ?enabled ?log_level ()
    : logging_configuration__dag_processing_logs =
  { enabled; log_level }

let logging_configuration__scheduler_logs ?enabled ?log_level () :
    logging_configuration__scheduler_logs =
  { enabled; log_level }

let logging_configuration__task_logs ?enabled ?log_level () :
    logging_configuration__task_logs =
  { enabled; log_level }

let logging_configuration__webserver_logs ?enabled ?log_level () :
    logging_configuration__webserver_logs =
  { enabled; log_level }

let logging_configuration__worker_logs ?enabled ?log_level () :
    logging_configuration__worker_logs =
  { enabled; log_level }

let logging_configuration ~dag_processing_logs ~scheduler_logs
    ~task_logs ~webserver_logs ~worker_logs () :
    logging_configuration =
  {
    dag_processing_logs;
    scheduler_logs;
    task_logs;
    webserver_logs;
    worker_logs;
  }

let network_configuration ~security_group_ids ~subnet_ids () :
    network_configuration =
  { security_group_ids; subnet_ids }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_mwaa_environment ?airflow_configuration_options
    ?airflow_version ?endpoint_management ?environment_class ?id
    ?kms_key ?max_workers ?min_workers ?plugins_s3_object_version
    ?plugins_s3_path ?requirements_s3_object_version
    ?requirements_s3_path ?schedulers
    ?startup_script_s3_object_version ?startup_script_s3_path ?tags
    ?tags_all ?webserver_access_mode ?weekly_maintenance_window_start
    ?timeouts ~dag_s3_path ~execution_role_arn ~name
    ~source_bucket_arn ~logging_configuration ~network_configuration
    () : aws_mwaa_environment =
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

let make ?airflow_configuration_options ?airflow_version
    ?endpoint_management ?environment_class ?id ?kms_key ?max_workers
    ?min_workers ?plugins_s3_object_version ?plugins_s3_path
    ?requirements_s3_object_version ?requirements_s3_path ?schedulers
    ?startup_script_s3_object_version ?startup_script_s3_path ?tags
    ?tags_all ?webserver_access_mode ?weekly_maintenance_window_start
    ?timeouts ~dag_s3_path ~execution_role_arn ~name
    ~source_bucket_arn ~logging_configuration ~network_configuration
    __id =
  let __type = "aws_mwaa_environment" in
  let __attrs =
    ({
       airflow_configuration_options =
         Prop.computed __type __id "airflow_configuration_options";
       airflow_version = Prop.computed __type __id "airflow_version";
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       dag_s3_path = Prop.computed __type __id "dag_s3_path";
       endpoint_management =
         Prop.computed __type __id "endpoint_management";
       environment_class =
         Prop.computed __type __id "environment_class";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       last_updated = Prop.computed __type __id "last_updated";
       max_workers = Prop.computed __type __id "max_workers";
       min_workers = Prop.computed __type __id "min_workers";
       name = Prop.computed __type __id "name";
       plugins_s3_object_version =
         Prop.computed __type __id "plugins_s3_object_version";
       plugins_s3_path = Prop.computed __type __id "plugins_s3_path";
       requirements_s3_object_version =
         Prop.computed __type __id "requirements_s3_object_version";
       requirements_s3_path =
         Prop.computed __type __id "requirements_s3_path";
       schedulers = Prop.computed __type __id "schedulers";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       source_bucket_arn =
         Prop.computed __type __id "source_bucket_arn";
       startup_script_s3_object_version =
         Prop.computed __type __id "startup_script_s3_object_version";
       startup_script_s3_path =
         Prop.computed __type __id "startup_script_s3_path";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       webserver_access_mode =
         Prop.computed __type __id "webserver_access_mode";
       webserver_url = Prop.computed __type __id "webserver_url";
       weekly_maintenance_window_start =
         Prop.computed __type __id "weekly_maintenance_window_start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mwaa_environment
        (aws_mwaa_environment ?airflow_configuration_options
           ?airflow_version ?endpoint_management ?environment_class
           ?id ?kms_key ?max_workers ?min_workers
           ?plugins_s3_object_version ?plugins_s3_path
           ?requirements_s3_object_version ?requirements_s3_path
           ?schedulers ?startup_script_s3_object_version
           ?startup_script_s3_path ?tags ?tags_all
           ?webserver_access_mode ?weekly_maintenance_window_start
           ?timeouts ~dag_s3_path ~execution_role_arn ~name
           ~source_bucket_arn ~logging_configuration
           ~network_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?airflow_configuration_options
    ?airflow_version ?endpoint_management ?environment_class ?id
    ?kms_key ?max_workers ?min_workers ?plugins_s3_object_version
    ?plugins_s3_path ?requirements_s3_object_version
    ?requirements_s3_path ?schedulers
    ?startup_script_s3_object_version ?startup_script_s3_path ?tags
    ?tags_all ?webserver_access_mode ?weekly_maintenance_window_start
    ?timeouts ~dag_s3_path ~execution_role_arn ~name
    ~source_bucket_arn ~logging_configuration ~network_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?airflow_configuration_options ?airflow_version
      ?endpoint_management ?environment_class ?id ?kms_key
      ?max_workers ?min_workers ?plugins_s3_object_version
      ?plugins_s3_path ?requirements_s3_object_version
      ?requirements_s3_path ?schedulers
      ?startup_script_s3_object_version ?startup_script_s3_path ?tags
      ?tags_all ?webserver_access_mode
      ?weekly_maintenance_window_start ?timeouts ~dag_s3_path
      ~execution_role_arn ~name ~source_bucket_arn
      ~logging_configuration ~network_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
