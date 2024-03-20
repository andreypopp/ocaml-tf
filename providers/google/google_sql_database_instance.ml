(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type clone = {
  allocated_ip_range : string prop option; [@option]
  database_names : string prop list option; [@option]
  point_in_time : string prop option; [@option]
  preferred_zone : string prop option; [@option]
  source_instance_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : clone) -> ()

let yojson_of_clone =
  (function
   | {
       allocated_ip_range = v_allocated_ip_range;
       database_names = v_database_names;
       point_in_time = v_point_in_time;
       preferred_zone = v_preferred_zone;
       source_instance_name = v_source_instance_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_instance_name
         in
         ("source_instance_name", arg) :: bnds
       in
       let bnds =
         match v_preferred_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "point_in_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "database_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocated_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocated_ip_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : clone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_clone

[@@@deriving.end]

type replica_configuration = {
  ca_certificate : string prop option; [@option]
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
  connect_retry_interval : float prop option; [@option]
  dump_file_path : string prop option; [@option]
  failover_target : bool prop option; [@option]
  master_heartbeat_period : float prop option; [@option]
  password : string prop option; [@option]
  ssl_cipher : string prop option; [@option]
  username : string prop option; [@option]
  verify_server_certificate : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica_configuration) -> ()

let yojson_of_replica_configuration =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       connect_retry_interval = v_connect_retry_interval;
       dump_file_path = v_dump_file_path;
       failover_target = v_failover_target;
       master_heartbeat_period = v_master_heartbeat_period;
       password = v_password;
       ssl_cipher = v_ssl_cipher;
       username = v_username;
       verify_server_certificate = v_verify_server_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verify_server_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify_server_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_cipher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_cipher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_heartbeat_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "master_heartbeat_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failover_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failover_target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dump_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dump_file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_retry_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connect_retry_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replica_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica_configuration

[@@@deriving.end]

type restore_backup_context = {
  backup_run_id : float prop;
  instance_id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_backup_context) -> ()

let yojson_of_restore_backup_context =
  (function
   | {
       backup_run_id = v_backup_run_id;
       instance_id = v_instance_id;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backup_run_id in
         ("backup_run_id", arg) :: bnds
       in
       `Assoc bnds
    : restore_backup_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_backup_context

[@@@deriving.end]

type settings__active_directory_config = { domain : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__active_directory_config) -> ()

let yojson_of_settings__active_directory_config =
  (function
   | { domain = v_domain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : settings__active_directory_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__active_directory_config

[@@@deriving.end]

type settings__advanced_machine_features = {
  threads_per_core : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__advanced_machine_features) -> ()

let yojson_of_settings__advanced_machine_features =
  (function
   | { threads_per_core = v_threads_per_core } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_threads_per_core with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threads_per_core", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__advanced_machine_features ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__advanced_machine_features

[@@@deriving.end]

type settings__backup_configuration__backup_retention_settings = {
  retained_backups : float prop;
  retention_unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : settings__backup_configuration__backup_retention_settings) ->
  ()

let yojson_of_settings__backup_configuration__backup_retention_settings
    =
  (function
   | {
       retained_backups = v_retained_backups;
       retention_unit = v_retention_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retained_backups
         in
         ("retained_backups", arg) :: bnds
       in
       `Assoc bnds
    : settings__backup_configuration__backup_retention_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_settings__backup_configuration__backup_retention_settings

[@@@deriving.end]

type settings__backup_configuration = {
  binary_log_enabled : bool prop option; [@option]
  enabled : bool prop option; [@option]
  location : string prop option; [@option]
  point_in_time_recovery_enabled : bool prop option; [@option]
  start_time : string prop option; [@option]
  transaction_log_retention_days : float prop option; [@option]
  backup_retention_settings :
    settings__backup_configuration__backup_retention_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__backup_configuration) -> ()

let yojson_of_settings__backup_configuration =
  (function
   | {
       binary_log_enabled = v_binary_log_enabled;
       enabled = v_enabled;
       location = v_location;
       point_in_time_recovery_enabled =
         v_point_in_time_recovery_enabled;
       start_time = v_start_time;
       transaction_log_retention_days =
         v_transaction_log_retention_days;
       backup_retention_settings = v_backup_retention_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_settings__backup_configuration__backup_retention_settings
             v_backup_retention_settings
         in
         ("backup_retention_settings", arg) :: bnds
       in
       let bnds =
         match v_transaction_log_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transaction_log_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time_recovery_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "point_in_time_recovery_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
       let bnds =
         match v_binary_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "binary_log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__backup_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__backup_configuration

[@@@deriving.end]

type settings__data_cache_config = {
  data_cache_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__data_cache_config) -> ()

let yojson_of_settings__data_cache_config =
  (function
   | { data_cache_enabled = v_data_cache_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_data_cache_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_cache_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__data_cache_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__data_cache_config

[@@@deriving.end]

type settings__database_flags = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__database_flags) -> ()

let yojson_of_settings__database_flags =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : settings__database_flags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__database_flags

[@@@deriving.end]

type settings__deny_maintenance_period = {
  end_date : string prop;
  start_date : string prop;
  time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__deny_maintenance_period) -> ()

let yojson_of_settings__deny_maintenance_period =
  (function
   | {
       end_date = v_end_date;
       start_date = v_start_date;
       time = v_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time in
         ("time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_date in
         ("start_date", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_date in
         ("end_date", arg) :: bnds
       in
       `Assoc bnds
    : settings__deny_maintenance_period ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__deny_maintenance_period

[@@@deriving.end]

type settings__insights_config = {
  query_insights_enabled : bool prop option; [@option]
  query_plans_per_minute : float prop option; [@option]
  query_string_length : float prop option; [@option]
  record_application_tags : bool prop option; [@option]
  record_client_address : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__insights_config) -> ()

let yojson_of_settings__insights_config =
  (function
   | {
       query_insights_enabled = v_query_insights_enabled;
       query_plans_per_minute = v_query_plans_per_minute;
       query_string_length = v_query_string_length;
       record_application_tags = v_record_application_tags;
       record_client_address = v_record_client_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_record_client_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "record_client_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_application_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "record_application_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_string_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_plans_per_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "query_plans_per_minute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_insights_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "query_insights_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__insights_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__insights_config

[@@@deriving.end]

type settings__ip_configuration__authorized_networks = {
  expiration_time : string prop option; [@option]
  name : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : settings__ip_configuration__authorized_networks) -> ()

let yojson_of_settings__ip_configuration__authorized_networks =
  (function
   | {
       expiration_time = v_expiration_time;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration__authorized_networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration__authorized_networks

[@@@deriving.end]

type settings__ip_configuration__psc_config = {
  allowed_consumer_projects : string prop list option; [@option]
  psc_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__ip_configuration__psc_config) -> ()

let yojson_of_settings__ip_configuration__psc_config =
  (function
   | {
       allowed_consumer_projects = v_allowed_consumer_projects;
       psc_enabled = v_psc_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_psc_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "psc_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_consumer_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_consumer_projects", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration__psc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration__psc_config

[@@@deriving.end]

type settings__ip_configuration = {
  allocated_ip_range : string prop option; [@option]
  enable_private_path_for_google_cloud_services : bool prop option;
      [@option]
  ipv4_enabled : bool prop option; [@option]
  private_network : string prop option; [@option]
  require_ssl : bool prop option; [@option]
  ssl_mode : string prop option; [@option]
  authorized_networks :
    settings__ip_configuration__authorized_networks list;
  psc_config : settings__ip_configuration__psc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__ip_configuration) -> ()

let yojson_of_settings__ip_configuration =
  (function
   | {
       allocated_ip_range = v_allocated_ip_range;
       enable_private_path_for_google_cloud_services =
         v_enable_private_path_for_google_cloud_services;
       ipv4_enabled = v_ipv4_enabled;
       private_network = v_private_network;
       require_ssl = v_require_ssl;
       ssl_mode = v_ssl_mode;
       authorized_networks = v_authorized_networks;
       psc_config = v_psc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_settings__ip_configuration__psc_config
             v_psc_config
         in
         ("psc_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_settings__ip_configuration__authorized_networks
             v_authorized_networks
         in
         ("authorized_networks", arg) :: bnds
       in
       let bnds =
         match v_ssl_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv4_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_private_path_for_google_cloud_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_private_path_for_google_cloud_services", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_allocated_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocated_ip_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration

[@@@deriving.end]

type settings__location_preference = {
  follow_gae_application : string prop option; [@option]
  secondary_zone : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__location_preference) -> ()

let yojson_of_settings__location_preference =
  (function
   | {
       follow_gae_application = v_follow_gae_application;
       secondary_zone = v_secondary_zone;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_follow_gae_application with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "follow_gae_application", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__location_preference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__location_preference

[@@@deriving.end]

type settings__maintenance_window = {
  day : float prop option; [@option]
  hour : float prop option; [@option]
  update_track : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__maintenance_window) -> ()

let yojson_of_settings__maintenance_window =
  (function
   | { day = v_day; hour = v_hour; update_track = v_update_track } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update_track with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_track", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hour", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__maintenance_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__maintenance_window

[@@@deriving.end]

type settings__password_validation_policy = {
  complexity : string prop option; [@option]
  disallow_username_substring : bool prop option; [@option]
  enable_password_policy : bool prop;
  min_length : float prop option; [@option]
  password_change_interval : string prop option; [@option]
  reuse_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__password_validation_policy) -> ()

let yojson_of_settings__password_validation_policy =
  (function
   | {
       complexity = v_complexity;
       disallow_username_substring = v_disallow_username_substring;
       enable_password_policy = v_enable_password_policy;
       min_length = v_min_length;
       password_change_interval = v_password_change_interval;
       reuse_interval = v_reuse_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reuse_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reuse_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_change_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_change_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_length", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_password_policy
         in
         ("enable_password_policy", arg) :: bnds
       in
       let bnds =
         match v_disallow_username_substring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disallow_username_substring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_complexity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "complexity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__password_validation_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__password_validation_policy

[@@@deriving.end]

type settings__sql_server_audit_config = {
  bucket : string prop option; [@option]
  retention_interval : string prop option; [@option]
  upload_interval : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__sql_server_audit_config) -> ()

let yojson_of_settings__sql_server_audit_config =
  (function
   | {
       bucket = v_bucket;
       retention_interval = v_retention_interval;
       upload_interval = v_upload_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_upload_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upload_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__sql_server_audit_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__sql_server_audit_config

[@@@deriving.end]

type settings = {
  activation_policy : string prop option; [@option]
  availability_type : string prop option; [@option]
  collation : string prop option; [@option]
  connector_enforcement : string prop option; [@option]
  deletion_protection_enabled : bool prop option; [@option]
  disk_autoresize : bool prop option; [@option]
  disk_autoresize_limit : float prop option; [@option]
  disk_size : float prop option; [@option]
  disk_type : string prop option; [@option]
  edition : string prop option; [@option]
  pricing_plan : string prop option; [@option]
  tier : string prop;
  time_zone : string prop option; [@option]
  user_labels : (string * string prop) list option; [@option]
  active_directory_config : settings__active_directory_config list;
  advanced_machine_features :
    settings__advanced_machine_features list;
  backup_configuration : settings__backup_configuration list;
  data_cache_config : settings__data_cache_config list;
  database_flags : settings__database_flags list;
  deny_maintenance_period : settings__deny_maintenance_period list;
  insights_config : settings__insights_config list;
  ip_configuration : settings__ip_configuration list;
  location_preference : settings__location_preference list;
  maintenance_window : settings__maintenance_window list;
  password_validation_policy :
    settings__password_validation_policy list;
  sql_server_audit_config : settings__sql_server_audit_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       activation_policy = v_activation_policy;
       availability_type = v_availability_type;
       collation = v_collation;
       connector_enforcement = v_connector_enforcement;
       deletion_protection_enabled = v_deletion_protection_enabled;
       disk_autoresize = v_disk_autoresize;
       disk_autoresize_limit = v_disk_autoresize_limit;
       disk_size = v_disk_size;
       disk_type = v_disk_type;
       edition = v_edition;
       pricing_plan = v_pricing_plan;
       tier = v_tier;
       time_zone = v_time_zone;
       user_labels = v_user_labels;
       active_directory_config = v_active_directory_config;
       advanced_machine_features = v_advanced_machine_features;
       backup_configuration = v_backup_configuration;
       data_cache_config = v_data_cache_config;
       database_flags = v_database_flags;
       deny_maintenance_period = v_deny_maintenance_period;
       insights_config = v_insights_config;
       ip_configuration = v_ip_configuration;
       location_preference = v_location_preference;
       maintenance_window = v_maintenance_window;
       password_validation_policy = v_password_validation_policy;
       sql_server_audit_config = v_sql_server_audit_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__sql_server_audit_config
             v_sql_server_audit_config
         in
         ("sql_server_audit_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_settings__password_validation_policy
             v_password_validation_policy
         in
         ("password_validation_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__maintenance_window
             v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__location_preference
             v_location_preference
         in
         ("location_preference", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__insights_config
             v_insights_config
         in
         ("insights_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__deny_maintenance_period
             v_deny_maintenance_period
         in
         ("deny_maintenance_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__database_flags
             v_database_flags
         in
         ("database_flags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__data_cache_config
             v_data_cache_config
         in
         ("data_cache_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__backup_configuration
             v_backup_configuration
         in
         ("backup_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_settings__advanced_machine_features
             v_advanced_machine_features
         in
         ("advanced_machine_features", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__active_directory_config
             v_active_directory_config
         in
         ("active_directory_config", arg) :: bnds
       in
       let bnds =
         match v_user_labels with
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
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         match v_pricing_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing_plan", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_autoresize_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_autoresize_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_autoresize with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disk_autoresize", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connector_enforcement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connector_enforcement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_activation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "activation_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

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

type ip_address = {
  ip_address : string prop;
  time_to_retire : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_address) -> ()

let yojson_of_ip_address =
  (function
   | {
       ip_address = v_ip_address;
       time_to_retire = v_time_to_retire;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_time_to_retire
         in
         ("time_to_retire", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : ip_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_address

[@@@deriving.end]

type server_ca_cert = {
  cert : string prop;
  common_name : string prop;
  create_time : string prop;
  expiration_time : string prop;
  sha1_fingerprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_ca_cert) -> ()

let yojson_of_server_ca_cert =
  (function
   | {
       cert = v_cert;
       common_name = v_common_name;
       create_time = v_create_time;
       expiration_time = v_expiration_time;
       sha1_fingerprint = v_sha1_fingerprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sha1_fingerprint
         in
         ("sha1_fingerprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_time
         in
         ("expiration_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cert in
         ("cert", arg) :: bnds
       in
       `Assoc bnds
    : server_ca_cert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_ca_cert

[@@@deriving.end]

type google_sql_database_instance = {
  database_version : string prop;
  deletion_protection : bool prop option; [@option]
  encryption_key_name : string prop option; [@option]
  id : string prop option; [@option]
  instance_type : string prop option; [@option]
  maintenance_version : string prop option; [@option]
  master_instance_name : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  root_password : string prop option; [@option]
  clone : clone list;
  replica_configuration : replica_configuration list;
  restore_backup_context : restore_backup_context list;
  settings : settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_database_instance) -> ()

let yojson_of_google_sql_database_instance =
  (function
   | {
       database_version = v_database_version;
       deletion_protection = v_deletion_protection;
       encryption_key_name = v_encryption_key_name;
       id = v_id;
       instance_type = v_instance_type;
       maintenance_version = v_maintenance_version;
       master_instance_name = v_master_instance_name;
       name = v_name;
       project = v_project;
       region = v_region;
       root_password = v_root_password;
       clone = v_clone;
       replica_configuration = v_replica_configuration;
       restore_backup_context = v_restore_backup_context;
       settings = v_settings;
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
         let arg = yojson_of_list yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_restore_backup_context
             v_restore_backup_context
         in
         ("restore_backup_context", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_replica_configuration
             v_replica_configuration
         in
         ("replica_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_clone v_clone in
         ("clone", arg) :: bnds
       in
       let bnds =
         match v_root_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master_instance_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master_instance_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
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
         match v_encryption_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_database_version
         in
         ("database_version", arg) :: bnds
       in
       `Assoc bnds
    : google_sql_database_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_database_instance

[@@@deriving.end]

let clone ?allocated_ip_range ?database_names ?point_in_time
    ?preferred_zone ~source_instance_name () : clone =
  {
    allocated_ip_range;
    database_names;
    point_in_time;
    preferred_zone;
    source_instance_name;
  }

let replica_configuration ?ca_certificate ?client_certificate
    ?client_key ?connect_retry_interval ?dump_file_path
    ?failover_target ?master_heartbeat_period ?password ?ssl_cipher
    ?username ?verify_server_certificate () : replica_configuration =
  {
    ca_certificate;
    client_certificate;
    client_key;
    connect_retry_interval;
    dump_file_path;
    failover_target;
    master_heartbeat_period;
    password;
    ssl_cipher;
    username;
    verify_server_certificate;
  }

let restore_backup_context ?instance_id ?project ~backup_run_id () :
    restore_backup_context =
  { backup_run_id; instance_id; project }

let settings__active_directory_config ~domain () :
    settings__active_directory_config =
  { domain }

let settings__advanced_machine_features ?threads_per_core () :
    settings__advanced_machine_features =
  { threads_per_core }

let settings__backup_configuration__backup_retention_settings
    ?retention_unit ~retained_backups () :
    settings__backup_configuration__backup_retention_settings =
  { retained_backups; retention_unit }

let settings__backup_configuration ?binary_log_enabled ?enabled
    ?location ?point_in_time_recovery_enabled ?start_time
    ?transaction_log_retention_days ~backup_retention_settings () :
    settings__backup_configuration =
  {
    binary_log_enabled;
    enabled;
    location;
    point_in_time_recovery_enabled;
    start_time;
    transaction_log_retention_days;
    backup_retention_settings;
  }

let settings__data_cache_config ?data_cache_enabled () :
    settings__data_cache_config =
  { data_cache_enabled }

let settings__database_flags ~name ~value () :
    settings__database_flags =
  { name; value }

let settings__deny_maintenance_period ~end_date ~start_date ~time ()
    : settings__deny_maintenance_period =
  { end_date; start_date; time }

let settings__insights_config ?query_insights_enabled
    ?query_plans_per_minute ?query_string_length
    ?record_application_tags ?record_client_address () :
    settings__insights_config =
  {
    query_insights_enabled;
    query_plans_per_minute;
    query_string_length;
    record_application_tags;
    record_client_address;
  }

let settings__ip_configuration__authorized_networks ?expiration_time
    ?name ~value () : settings__ip_configuration__authorized_networks
    =
  { expiration_time; name; value }

let settings__ip_configuration__psc_config ?allowed_consumer_projects
    ?psc_enabled () : settings__ip_configuration__psc_config =
  { allowed_consumer_projects; psc_enabled }

let settings__ip_configuration ?allocated_ip_range
    ?enable_private_path_for_google_cloud_services ?ipv4_enabled
    ?private_network ?require_ssl ?ssl_mode ~authorized_networks
    ~psc_config () : settings__ip_configuration =
  {
    allocated_ip_range;
    enable_private_path_for_google_cloud_services;
    ipv4_enabled;
    private_network;
    require_ssl;
    ssl_mode;
    authorized_networks;
    psc_config;
  }

let settings__location_preference ?follow_gae_application
    ?secondary_zone ?zone () : settings__location_preference =
  { follow_gae_application; secondary_zone; zone }

let settings__maintenance_window ?day ?hour ?update_track () :
    settings__maintenance_window =
  { day; hour; update_track }

let settings__password_validation_policy ?complexity
    ?disallow_username_substring ?min_length
    ?password_change_interval ?reuse_interval ~enable_password_policy
    () : settings__password_validation_policy =
  {
    complexity;
    disallow_username_substring;
    enable_password_policy;
    min_length;
    password_change_interval;
    reuse_interval;
  }

let settings__sql_server_audit_config ?bucket ?retention_interval
    ?upload_interval () : settings__sql_server_audit_config =
  { bucket; retention_interval; upload_interval }

let settings ?activation_policy ?availability_type ?collation
    ?connector_enforcement ?deletion_protection_enabled
    ?disk_autoresize ?disk_autoresize_limit ?disk_size ?disk_type
    ?edition ?pricing_plan ?time_zone ?user_labels ~tier
    ~active_directory_config ~advanced_machine_features
    ~backup_configuration ~data_cache_config ~database_flags
    ~deny_maintenance_period ~insights_config ~ip_configuration
    ~location_preference ~maintenance_window
    ~password_validation_policy ~sql_server_audit_config () :
    settings =
  {
    activation_policy;
    availability_type;
    collation;
    connector_enforcement;
    deletion_protection_enabled;
    disk_autoresize;
    disk_autoresize_limit;
    disk_size;
    disk_type;
    edition;
    pricing_plan;
    tier;
    time_zone;
    user_labels;
    active_directory_config;
    advanced_machine_features;
    backup_configuration;
    data_cache_config;
    database_flags;
    deny_maintenance_period;
    insights_config;
    ip_configuration;
    location_preference;
    maintenance_window;
    password_validation_policy;
    sql_server_audit_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_sql_database_instance ?deletion_protection
    ?encryption_key_name ?id ?instance_type ?maintenance_version
    ?master_instance_name ?name ?project ?region ?root_password
    ?timeouts ~database_version ~clone ~replica_configuration
    ~restore_backup_context ~settings () :
    google_sql_database_instance =
  {
    database_version;
    deletion_protection;
    encryption_key_name;
    id;
    instance_type;
    maintenance_version;
    master_instance_name;
    name;
    project;
    region;
    root_password;
    clone;
    replica_configuration;
    restore_backup_context;
    settings;
    timeouts;
  }

type t = {
  available_maintenance_versions : string list prop;
  connection_name : string prop;
  database_version : string prop;
  deletion_protection : bool prop;
  dns_name : string prop;
  encryption_key_name : string prop;
  first_ip_address : string prop;
  id : string prop;
  instance_type : string prop;
  ip_address : ip_address list prop;
  maintenance_version : string prop;
  master_instance_name : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  psc_service_attachment_link : string prop;
  public_ip_address : string prop;
  region : string prop;
  root_password : string prop;
  self_link : string prop;
  server_ca_cert : server_ca_cert list prop;
  service_account_email_address : string prop;
}

let make ?deletion_protection ?encryption_key_name ?id ?instance_type
    ?maintenance_version ?master_instance_name ?name ?project ?region
    ?root_password ?timeouts ~database_version ~clone
    ~replica_configuration ~restore_backup_context ~settings __id =
  let __type = "google_sql_database_instance" in
  let __attrs =
    ({
       available_maintenance_versions =
         Prop.computed __type __id "available_maintenance_versions";
       connection_name = Prop.computed __type __id "connection_name";
       database_version =
         Prop.computed __type __id "database_version";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       dns_name = Prop.computed __type __id "dns_name";
       encryption_key_name =
         Prop.computed __type __id "encryption_key_name";
       first_ip_address =
         Prop.computed __type __id "first_ip_address";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       ip_address = Prop.computed __type __id "ip_address";
       maintenance_version =
         Prop.computed __type __id "maintenance_version";
       master_instance_name =
         Prop.computed __type __id "master_instance_name";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       project = Prop.computed __type __id "project";
       psc_service_attachment_link =
         Prop.computed __type __id "psc_service_attachment_link";
       public_ip_address =
         Prop.computed __type __id "public_ip_address";
       region = Prop.computed __type __id "region";
       root_password = Prop.computed __type __id "root_password";
       self_link = Prop.computed __type __id "self_link";
       server_ca_cert = Prop.computed __type __id "server_ca_cert";
       service_account_email_address =
         Prop.computed __type __id "service_account_email_address";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_database_instance
        (google_sql_database_instance ?deletion_protection
           ?encryption_key_name ?id ?instance_type
           ?maintenance_version ?master_instance_name ?name ?project
           ?region ?root_password ?timeouts ~database_version ~clone
           ~replica_configuration ~restore_backup_context ~settings
           ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?encryption_key_name ?id
    ?instance_type ?maintenance_version ?master_instance_name ?name
    ?project ?region ?root_password ?timeouts ~database_version
    ~clone ~replica_configuration ~restore_backup_context ~settings
    __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?encryption_key_name ?id ?instance_type
      ?maintenance_version ?master_instance_name ?name ?project
      ?region ?root_password ?timeouts ~database_version ~clone
      ~replica_configuration ~restore_backup_context ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
