(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type clone = {
  allocated_ip_range : string prop;
  database_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  point_in_time : string prop;
  preferred_zone : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_preferred_zone
         in
         ("preferred_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_point_in_time in
         ("point_in_time", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_database_names
           in
           let bnd = "database_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocated_ip_range
         in
         ("allocated_ip_range", arg) :: bnds
       in
       `Assoc bnds
    : clone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_clone

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

type replica_configuration = {
  ca_certificate : string prop;
  client_certificate : string prop;
  client_key : string prop;
  connect_retry_interval : float prop;
  dump_file_path : string prop;
  failover_target : bool prop;
  master_heartbeat_period : float prop;
  password : string prop;
  ssl_cipher : string prop;
  username : string prop;
  verify_server_certificate : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_verify_server_certificate
         in
         ("verify_server_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ssl_cipher in
         ("ssl_cipher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_master_heartbeat_period
         in
         ("master_heartbeat_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_failover_target in
         ("failover_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dump_file_path
         in
         ("dump_file_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_connect_retry_interval
         in
         ("connect_retry_interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ca_certificate
         in
         ("ca_certificate", arg) :: bnds
       in
       `Assoc bnds
    : replica_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica_configuration

[@@@deriving.end]

type restore_backup_context = {
  backup_run_id : float prop;
  instance_id : string prop;
  project : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backup_run_id in
         ("backup_run_id", arg) :: bnds
       in
       `Assoc bnds
    : restore_backup_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_backup_context

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

type settings__sql_server_audit_config = {
  bucket : string prop;
  retention_interval : string prop;
  upload_interval : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_upload_interval
         in
         ("upload_interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_retention_interval
         in
         ("retention_interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : settings__sql_server_audit_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__sql_server_audit_config

[@@@deriving.end]

type settings__password_validation_policy = {
  complexity : string prop;
  disallow_username_substring : bool prop;
  enable_password_policy : bool prop;
  min_length : float prop;
  password_change_interval : string prop;
  reuse_interval : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_reuse_interval in
         ("reuse_interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_change_interval
         in
         ("password_change_interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_length in
         ("min_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_password_policy
         in
         ("enable_password_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disallow_username_substring
         in
         ("disallow_username_substring", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_complexity in
         ("complexity", arg) :: bnds
       in
       `Assoc bnds
    : settings__password_validation_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__password_validation_policy

[@@@deriving.end]

type settings__maintenance_window = {
  day : float prop;
  hour : float prop;
  update_track : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_update_track in
         ("update_track", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour in
         ("hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : settings__maintenance_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__maintenance_window

[@@@deriving.end]

type settings__location_preference = {
  follow_gae_application : string prop;
  secondary_zone : string prop;
  zone : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_zone
         in
         ("secondary_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_follow_gae_application
         in
         ("follow_gae_application", arg) :: bnds
       in
       `Assoc bnds
    : settings__location_preference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__location_preference

[@@@deriving.end]

type settings__ip_configuration__psc_config = {
  allowed_consumer_projects : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  psc_enabled : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_psc_enabled in
         ("psc_enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_consumer_projects then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_consumer_projects
           in
           let bnd = "allowed_consumer_projects", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration__psc_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration__psc_config

[@@@deriving.end]

type settings__ip_configuration__authorized_networks = {
  expiration_time : string prop;
  name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_time
         in
         ("expiration_time", arg) :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration__authorized_networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration__authorized_networks

[@@@deriving.end]

type settings__ip_configuration = {
  allocated_ip_range : string prop;
  authorized_networks :
    settings__ip_configuration__authorized_networks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enable_private_path_for_google_cloud_services : bool prop;
  ipv4_enabled : bool prop;
  private_network : string prop;
  psc_config : settings__ip_configuration__psc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  require_ssl : bool prop;
  ssl_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__ip_configuration) -> ()

let yojson_of_settings__ip_configuration =
  (function
   | {
       allocated_ip_range = v_allocated_ip_range;
       authorized_networks = v_authorized_networks;
       enable_private_path_for_google_cloud_services =
         v_enable_private_path_for_google_cloud_services;
       ipv4_enabled = v_ipv4_enabled;
       private_network = v_private_network;
       psc_config = v_psc_config;
       require_ssl = v_require_ssl;
       ssl_mode = v_ssl_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ssl_mode in
         ("ssl_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_require_ssl in
         ("require_ssl", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_psc_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__ip_configuration__psc_config)
               v_psc_config
           in
           let bnd = "psc_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_network
         in
         ("private_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_ipv4_enabled in
         ("ipv4_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_private_path_for_google_cloud_services
         in
         ("enable_private_path_for_google_cloud_services", arg)
         :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorized_networks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__ip_configuration__authorized_networks)
               v_authorized_networks
           in
           let bnd = "authorized_networks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocated_ip_range
         in
         ("allocated_ip_range", arg) :: bnds
       in
       `Assoc bnds
    : settings__ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__ip_configuration

[@@@deriving.end]

type settings__insights_config = {
  query_insights_enabled : bool prop;
  query_plans_per_minute : float prop;
  query_string_length : float prop;
  record_application_tags : bool prop;
  record_client_address : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_record_client_address
         in
         ("record_client_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_record_application_tags
         in
         ("record_application_tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_query_string_length
         in
         ("query_string_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_query_plans_per_minute
         in
         ("query_plans_per_minute", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_query_insights_enabled
         in
         ("query_insights_enabled", arg) :: bnds
       in
       `Assoc bnds
    : settings__insights_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__insights_config

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

type settings__data_cache_config = { data_cache_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__data_cache_config) -> ()

let yojson_of_settings__data_cache_config =
  (function
   | { data_cache_enabled = v_data_cache_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_data_cache_enabled
         in
         ("data_cache_enabled", arg) :: bnds
       in
       `Assoc bnds
    : settings__data_cache_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__data_cache_config

[@@@deriving.end]

type settings__backup_configuration__backup_retention_settings = {
  retained_backups : float prop;
  retention_unit : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_retention_unit
         in
         ("retention_unit", arg) :: bnds
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
  backup_retention_settings :
    settings__backup_configuration__backup_retention_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  binary_log_enabled : bool prop;
  enabled : bool prop;
  location : string prop;
  point_in_time_recovery_enabled : bool prop;
  start_time : string prop;
  transaction_log_retention_days : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__backup_configuration) -> ()

let yojson_of_settings__backup_configuration =
  (function
   | {
       backup_retention_settings = v_backup_retention_settings;
       binary_log_enabled = v_binary_log_enabled;
       enabled = v_enabled;
       location = v_location;
       point_in_time_recovery_enabled =
         v_point_in_time_recovery_enabled;
       start_time = v_start_time;
       transaction_log_retention_days =
         v_transaction_log_retention_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_transaction_log_retention_days
         in
         ("transaction_log_retention_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_point_in_time_recovery_enabled
         in
         ("point_in_time_recovery_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_binary_log_enabled
         in
         ("binary_log_enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup_retention_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__backup_configuration__backup_retention_settings)
               v_backup_retention_settings
           in
           let bnd = "backup_retention_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : settings__backup_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__backup_configuration

[@@@deriving.end]

type settings__advanced_machine_features = {
  threads_per_core : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       `Assoc bnds
    : settings__advanced_machine_features ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__advanced_machine_features

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

type settings = {
  activation_policy : string prop;
  active_directory_config : settings__active_directory_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  advanced_machine_features :
    settings__advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  availability_type : string prop;
  backup_configuration : settings__backup_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  collation : string prop;
  connector_enforcement : string prop;
  data_cache_config : settings__data_cache_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_flags : settings__database_flags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  deletion_protection_enabled : bool prop;
  deny_maintenance_period : settings__deny_maintenance_period list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_autoresize : bool prop;
  disk_autoresize_limit : float prop;
  disk_size : float prop;
  disk_type : string prop;
  edition : string prop;
  insights_config : settings__insights_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_configuration : settings__ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location_preference : settings__location_preference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_window : settings__maintenance_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  password_validation_policy :
    settings__password_validation_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pricing_plan : string prop;
  sql_server_audit_config : settings__sql_server_audit_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tier : string prop;
  time_zone : string prop;
  user_labels : (string * string prop) list;
  version : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       activation_policy = v_activation_policy;
       active_directory_config = v_active_directory_config;
       advanced_machine_features = v_advanced_machine_features;
       availability_type = v_availability_type;
       backup_configuration = v_backup_configuration;
       collation = v_collation;
       connector_enforcement = v_connector_enforcement;
       data_cache_config = v_data_cache_config;
       database_flags = v_database_flags;
       deletion_protection_enabled = v_deletion_protection_enabled;
       deny_maintenance_period = v_deny_maintenance_period;
       disk_autoresize = v_disk_autoresize;
       disk_autoresize_limit = v_disk_autoresize_limit;
       disk_size = v_disk_size;
       disk_type = v_disk_type;
       edition = v_edition;
       insights_config = v_insights_config;
       ip_configuration = v_ip_configuration;
       location_preference = v_location_preference;
       maintenance_window = v_maintenance_window;
       password_validation_policy = v_password_validation_policy;
       pricing_plan = v_pricing_plan;
       sql_server_audit_config = v_sql_server_audit_config;
       tier = v_tier;
       time_zone = v_time_zone;
       user_labels = v_user_labels;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_user_labels
         in
         ("user_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sql_server_audit_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__sql_server_audit_config)
               v_sql_server_audit_config
           in
           let bnd = "sql_server_audit_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pricing_plan in
         ("pricing_plan", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_password_validation_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__password_validation_policy)
               v_password_validation_policy
           in
           let bnd = "password_validation_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_location_preference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__location_preference)
               v_location_preference
           in
           let bnd = "location_preference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_insights_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__insights_config)
               v_insights_config
           in
           let bnd = "insights_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_edition in
         ("edition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size in
         ("disk_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_disk_autoresize_limit
         in
         ("disk_autoresize_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disk_autoresize in
         ("disk_autoresize", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deny_maintenance_period then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__deny_maintenance_period)
               v_deny_maintenance_period
           in
           let bnd = "deny_maintenance_period", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_deletion_protection_enabled
         in
         ("deletion_protection_enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_flags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__database_flags)
               v_database_flags
           in
           let bnd = "database_flags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_cache_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__data_cache_config)
               v_data_cache_config
           in
           let bnd = "data_cache_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connector_enforcement
         in
         ("connector_enforcement", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collation in
         ("collation", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__backup_configuration)
               v_backup_configuration
           in
           let bnd = "backup_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_type
         in
         ("availability_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_settings__active_directory_config)
               v_active_directory_config
           in
           let bnd = "active_directory_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_activation_policy
         in
         ("activation_policy", arg) :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type google_sql_database_instance = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_database_instance) -> ()

let yojson_of_google_sql_database_instance =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_sql_database_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_database_instance

[@@@deriving.end]

let google_sql_database_instance ?id ?project ~name () :
    google_sql_database_instance =
  { id; name; project }

type t = {
  tf_name : string;
  available_maintenance_versions : string list prop;
  clone : clone list prop;
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
  replica_configuration : replica_configuration list prop;
  restore_backup_context : restore_backup_context list prop;
  root_password : string prop;
  self_link : string prop;
  server_ca_cert : server_ca_cert list prop;
  service_account_email_address : string prop;
  settings : settings list prop;
}

let make ?id ?project ~name __id =
  let __type = "google_sql_database_instance" in
  let __attrs =
    ({
       tf_name = __id;
       available_maintenance_versions =
         Prop.computed __type __id "available_maintenance_versions";
       clone = Prop.computed __type __id "clone";
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
       replica_configuration =
         Prop.computed __type __id "replica_configuration";
       restore_backup_context =
         Prop.computed __type __id "restore_backup_context";
       root_password = Prop.computed __type __id "root_password";
       self_link = Prop.computed __type __id "self_link";
       server_ca_cert = Prop.computed __type __id "server_ca_cert";
       service_account_email_address =
         Prop.computed __type __id "service_account_email_address";
       settings = Prop.computed __type __id "settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_database_instance
        (google_sql_database_instance ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
