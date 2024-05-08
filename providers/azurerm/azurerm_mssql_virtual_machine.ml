(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assessment__schedule = {
  day_of_week : string prop;
  monthly_occurrence : float prop option; [@option]
  start_time : string prop;
  weekly_interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assessment__schedule) -> ()

let yojson_of_assessment__schedule =
  (function
   | {
       day_of_week = v_day_of_week;
       monthly_occurrence = v_monthly_occurrence;
       start_time = v_start_time;
       weekly_interval = v_weekly_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weekly_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weekly_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         match v_monthly_occurrence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "monthly_occurrence", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : assessment__schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assessment__schedule

[@@@deriving.end]

type assessment = {
  enabled : bool prop option; [@option]
  run_immediately : bool prop option; [@option]
  schedule : assessment__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assessment) -> ()

let yojson_of_assessment =
  (function
   | {
       enabled = v_enabled;
       run_immediately = v_run_immediately;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_assessment__schedule)
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_run_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_immediately", arg in
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
    : assessment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assessment

[@@@deriving.end]

type auto_backup__manual_schedule = {
  days_of_week : string prop list option; [@option]
  full_backup_frequency : string prop;
  full_backup_start_hour : float prop;
  full_backup_window_in_hours : float prop;
  log_backup_frequency_in_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_backup__manual_schedule) -> ()

let yojson_of_auto_backup__manual_schedule =
  (function
   | {
       days_of_week = v_days_of_week;
       full_backup_frequency = v_full_backup_frequency;
       full_backup_start_hour = v_full_backup_start_hour;
       full_backup_window_in_hours = v_full_backup_window_in_hours;
       log_backup_frequency_in_minutes =
         v_log_backup_frequency_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_log_backup_frequency_in_minutes
         in
         ("log_backup_frequency_in_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_full_backup_window_in_hours
         in
         ("full_backup_window_in_hours", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_full_backup_start_hour
         in
         ("full_backup_start_hour", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_full_backup_frequency
         in
         ("full_backup_frequency", arg) :: bnds
       in
       let bnds =
         match v_days_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "days_of_week", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_backup__manual_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_backup__manual_schedule

[@@@deriving.end]

type auto_backup = {
  encryption_enabled : bool prop option; [@option]
  encryption_password : string prop option; [@option]
  retention_period_in_days : float prop;
  storage_account_access_key : string prop;
  storage_blob_endpoint : string prop;
  system_databases_backup_enabled : bool prop option; [@option]
  manual_schedule : auto_backup__manual_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_backup) -> ()

let yojson_of_auto_backup =
  (function
   | {
       encryption_enabled = v_encryption_enabled;
       encryption_password = v_encryption_password;
       retention_period_in_days = v_retention_period_in_days;
       storage_account_access_key = v_storage_account_access_key;
       storage_blob_endpoint = v_storage_blob_endpoint;
       system_databases_backup_enabled =
         v_system_databases_backup_enabled;
       manual_schedule = v_manual_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_manual_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_backup__manual_schedule)
               v_manual_schedule
           in
           let bnd = "manual_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_system_databases_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "system_databases_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_blob_endpoint
         in
         ("storage_blob_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_account_access_key
         in
         ("storage_account_access_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_period_in_days
         in
         ("retention_period_in_days", arg) :: bnds
       in
       let bnds =
         match v_encryption_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_backup

[@@@deriving.end]

type auto_patching = {
  day_of_week : string prop;
  maintenance_window_duration_in_minutes : float prop;
  maintenance_window_starting_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_patching) -> ()

let yojson_of_auto_patching =
  (function
   | {
       day_of_week = v_day_of_week;
       maintenance_window_duration_in_minutes =
         v_maintenance_window_duration_in_minutes;
       maintenance_window_starting_hour =
         v_maintenance_window_starting_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maintenance_window_starting_hour
         in
         ("maintenance_window_starting_hour", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maintenance_window_duration_in_minutes
         in
         ("maintenance_window_duration_in_minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : auto_patching -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_patching

[@@@deriving.end]

type key_vault_credential = {
  key_vault_url : string prop;
  name : string prop;
  service_principal_name : string prop;
  service_principal_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_credential) -> ()

let yojson_of_key_vault_credential =
  (function
   | {
       key_vault_url = v_key_vault_url;
       name = v_name;
       service_principal_name = v_service_principal_name;
       service_principal_secret = v_service_principal_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_principal_secret
         in
         ("service_principal_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_principal_name
         in
         ("service_principal_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_url in
         ("key_vault_url", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_credential

[@@@deriving.end]

type sql_instance = {
  adhoc_workloads_optimization_enabled : bool prop option; [@option]
  collation : string prop option; [@option]
  instant_file_initialization_enabled : bool prop option; [@option]
  lock_pages_in_memory_enabled : bool prop option; [@option]
  max_dop : float prop option; [@option]
  max_server_memory_mb : float prop option; [@option]
  min_server_memory_mb : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sql_instance) -> ()

let yojson_of_sql_instance =
  (function
   | {
       adhoc_workloads_optimization_enabled =
         v_adhoc_workloads_optimization_enabled;
       collation = v_collation;
       instant_file_initialization_enabled =
         v_instant_file_initialization_enabled;
       lock_pages_in_memory_enabled = v_lock_pages_in_memory_enabled;
       max_dop = v_max_dop;
       max_server_memory_mb = v_max_server_memory_mb;
       min_server_memory_mb = v_min_server_memory_mb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_server_memory_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_server_memory_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_server_memory_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_server_memory_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_dop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_dop", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lock_pages_in_memory_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lock_pages_in_memory_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instant_file_initialization_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "instant_file_initialization_enabled", arg in
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
         match v_adhoc_workloads_optimization_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "adhoc_workloads_optimization_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sql_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sql_instance

[@@@deriving.end]

type storage_configuration__data_settings = {
  default_file_path : string prop;
  luns : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__data_settings) -> ()

let yojson_of_storage_configuration__data_settings =
  (function
   | { default_file_path = v_default_file_path; luns = v_luns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_luns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float)) v_luns
           in
           let bnd = "luns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_file_path
         in
         ("default_file_path", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__data_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__data_settings

[@@@deriving.end]

type storage_configuration__log_settings = {
  default_file_path : string prop;
  luns : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__log_settings) -> ()

let yojson_of_storage_configuration__log_settings =
  (function
   | { default_file_path = v_default_file_path; luns = v_luns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_luns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float)) v_luns
           in
           let bnd = "luns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_file_path
         in
         ("default_file_path", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__log_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__log_settings

[@@@deriving.end]

type storage_configuration__temp_db_settings = {
  data_file_count : float prop option; [@option]
  data_file_growth_in_mb : float prop option; [@option]
  data_file_size_mb : float prop option; [@option]
  default_file_path : string prop;
  log_file_growth_mb : float prop option; [@option]
  log_file_size_mb : float prop option; [@option]
  luns : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__temp_db_settings) -> ()

let yojson_of_storage_configuration__temp_db_settings =
  (function
   | {
       data_file_count = v_data_file_count;
       data_file_growth_in_mb = v_data_file_growth_in_mb;
       data_file_size_mb = v_data_file_size_mb;
       default_file_path = v_default_file_path;
       log_file_growth_mb = v_log_file_growth_mb;
       log_file_size_mb = v_log_file_size_mb;
       luns = v_luns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_luns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float)) v_luns
           in
           let bnd = "luns", arg in
           bnd :: bnds
       in
       let bnds =
         match v_log_file_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_file_size_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_file_growth_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_file_growth_mb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_file_path
         in
         ("default_file_path", arg) :: bnds
       in
       let bnds =
         match v_data_file_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_file_size_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_file_growth_in_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_file_growth_in_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_file_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_file_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_configuration__temp_db_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__temp_db_settings

[@@@deriving.end]

type storage_configuration = {
  disk_type : string prop;
  storage_workload_type : string prop;
  system_db_on_data_disk_enabled : bool prop option; [@option]
  data_settings : storage_configuration__data_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_settings : storage_configuration__log_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  temp_db_settings : storage_configuration__temp_db_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration) -> ()

let yojson_of_storage_configuration =
  (function
   | {
       disk_type = v_disk_type;
       storage_workload_type = v_storage_workload_type;
       system_db_on_data_disk_enabled =
         v_system_db_on_data_disk_enabled;
       data_settings = v_data_settings;
       log_settings = v_log_settings;
       temp_db_settings = v_temp_db_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_temp_db_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__temp_db_settings)
               v_temp_db_settings
           in
           let bnd = "temp_db_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__log_settings)
               v_log_settings
           in
           let bnd = "log_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__data_settings)
               v_data_settings
           in
           let bnd = "data_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_system_db_on_data_disk_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "system_db_on_data_disk_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_workload_type
         in
         ("storage_workload_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type wsfc_domain_credential = {
  cluster_bootstrap_account_password : string prop;
  cluster_operator_account_password : string prop;
  sql_service_account_password : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : wsfc_domain_credential) -> ()

let yojson_of_wsfc_domain_credential =
  (function
   | {
       cluster_bootstrap_account_password =
         v_cluster_bootstrap_account_password;
       cluster_operator_account_password =
         v_cluster_operator_account_password;
       sql_service_account_password = v_sql_service_account_password;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_sql_service_account_password
         in
         ("sql_service_account_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_operator_account_password
         in
         ("cluster_operator_account_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_bootstrap_account_password
         in
         ("cluster_bootstrap_account_password", arg) :: bnds
       in
       `Assoc bnds
    : wsfc_domain_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_wsfc_domain_credential

[@@@deriving.end]

type azurerm_mssql_virtual_machine = {
  id : string prop option; [@option]
  r_services_enabled : bool prop option; [@option]
  sql_connectivity_port : float prop option; [@option]
  sql_connectivity_type : string prop option; [@option]
  sql_connectivity_update_password : string prop option; [@option]
  sql_connectivity_update_username : string prop option; [@option]
  sql_license_type : string prop option; [@option]
  sql_virtual_machine_group_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  virtual_machine_id : string prop;
  assessment : assessment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_backup : auto_backup list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_patching : auto_patching list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_vault_credential : key_vault_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sql_instance : sql_instance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_configuration : storage_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  wsfc_domain_credential : wsfc_domain_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_virtual_machine) -> ()

let yojson_of_azurerm_mssql_virtual_machine =
  (function
   | {
       id = v_id;
       r_services_enabled = v_r_services_enabled;
       sql_connectivity_port = v_sql_connectivity_port;
       sql_connectivity_type = v_sql_connectivity_type;
       sql_connectivity_update_password =
         v_sql_connectivity_update_password;
       sql_connectivity_update_username =
         v_sql_connectivity_update_username;
       sql_license_type = v_sql_license_type;
       sql_virtual_machine_group_id = v_sql_virtual_machine_group_id;
       tags = v_tags;
       virtual_machine_id = v_virtual_machine_id;
       assessment = v_assessment;
       auto_backup = v_auto_backup;
       auto_patching = v_auto_patching;
       key_vault_credential = v_key_vault_credential;
       sql_instance = v_sql_instance;
       storage_configuration = v_storage_configuration;
       timeouts = v_timeouts;
       wsfc_domain_credential = v_wsfc_domain_credential;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_wsfc_domain_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_wsfc_domain_credential)
               v_wsfc_domain_credential
           in
           let bnd = "wsfc_domain_credential", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_configuration)
               v_storage_configuration
           in
           let bnd = "storage_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sql_instance then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sql_instance) v_sql_instance
           in
           let bnd = "sql_instance", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_vault_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_key_vault_credential)
               v_key_vault_credential
           in
           let bnd = "key_vault_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_patching then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_patching) v_auto_patching
           in
           let bnd = "auto_patching", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_backup then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_backup) v_auto_backup
           in
           let bnd = "auto_backup", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_assessment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_assessment) v_assessment
           in
           let bnd = "assessment", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_id
         in
         ("virtual_machine_id", arg) :: bnds
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
         match v_sql_virtual_machine_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_virtual_machine_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_license_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_connectivity_update_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_connectivity_update_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_connectivity_update_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_connectivity_update_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_connectivity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_connectivity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_connectivity_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sql_connectivity_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_r_services_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "r_services_enabled", arg in
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
       `Assoc bnds
    : azurerm_mssql_virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_virtual_machine

[@@@deriving.end]

let assessment__schedule ?monthly_occurrence ?weekly_interval
    ~day_of_week ~start_time () : assessment__schedule =
  { day_of_week; monthly_occurrence; start_time; weekly_interval }

let assessment ?enabled ?run_immediately ?(schedule = []) () :
    assessment =
  { enabled; run_immediately; schedule }

let auto_backup__manual_schedule ?days_of_week ~full_backup_frequency
    ~full_backup_start_hour ~full_backup_window_in_hours
    ~log_backup_frequency_in_minutes () :
    auto_backup__manual_schedule =
  {
    days_of_week;
    full_backup_frequency;
    full_backup_start_hour;
    full_backup_window_in_hours;
    log_backup_frequency_in_minutes;
  }

let auto_backup ?encryption_enabled ?encryption_password
    ?system_databases_backup_enabled ?(manual_schedule = [])
    ~retention_period_in_days ~storage_account_access_key
    ~storage_blob_endpoint () : auto_backup =
  {
    encryption_enabled;
    encryption_password;
    retention_period_in_days;
    storage_account_access_key;
    storage_blob_endpoint;
    system_databases_backup_enabled;
    manual_schedule;
  }

let auto_patching ~day_of_week
    ~maintenance_window_duration_in_minutes
    ~maintenance_window_starting_hour () : auto_patching =
  {
    day_of_week;
    maintenance_window_duration_in_minutes;
    maintenance_window_starting_hour;
  }

let key_vault_credential ~key_vault_url ~name ~service_principal_name
    ~service_principal_secret () : key_vault_credential =
  {
    key_vault_url;
    name;
    service_principal_name;
    service_principal_secret;
  }

let sql_instance ?adhoc_workloads_optimization_enabled ?collation
    ?instant_file_initialization_enabled
    ?lock_pages_in_memory_enabled ?max_dop ?max_server_memory_mb
    ?min_server_memory_mb () : sql_instance =
  {
    adhoc_workloads_optimization_enabled;
    collation;
    instant_file_initialization_enabled;
    lock_pages_in_memory_enabled;
    max_dop;
    max_server_memory_mb;
    min_server_memory_mb;
  }

let storage_configuration__data_settings ~default_file_path ~luns ()
    : storage_configuration__data_settings =
  { default_file_path; luns }

let storage_configuration__log_settings ~default_file_path ~luns () :
    storage_configuration__log_settings =
  { default_file_path; luns }

let storage_configuration__temp_db_settings ?data_file_count
    ?data_file_growth_in_mb ?data_file_size_mb ?log_file_growth_mb
    ?log_file_size_mb ~default_file_path ~luns () :
    storage_configuration__temp_db_settings =
  {
    data_file_count;
    data_file_growth_in_mb;
    data_file_size_mb;
    default_file_path;
    log_file_growth_mb;
    log_file_size_mb;
    luns;
  }

let storage_configuration ?system_db_on_data_disk_enabled
    ?(data_settings = []) ?(log_settings = [])
    ?(temp_db_settings = []) ~disk_type ~storage_workload_type () :
    storage_configuration =
  {
    disk_type;
    storage_workload_type;
    system_db_on_data_disk_enabled;
    data_settings;
    log_settings;
    temp_db_settings;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let wsfc_domain_credential ~cluster_bootstrap_account_password
    ~cluster_operator_account_password ~sql_service_account_password
    () : wsfc_domain_credential =
  {
    cluster_bootstrap_account_password;
    cluster_operator_account_password;
    sql_service_account_password;
  }

let azurerm_mssql_virtual_machine ?id ?r_services_enabled
    ?sql_connectivity_port ?sql_connectivity_type
    ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?(assessment = [])
    ?(auto_backup = []) ?(auto_patching = [])
    ?(key_vault_credential = []) ?(sql_instance = [])
    ?(storage_configuration = []) ?timeouts
    ?(wsfc_domain_credential = []) ~virtual_machine_id () :
    azurerm_mssql_virtual_machine =
  {
    id;
    r_services_enabled;
    sql_connectivity_port;
    sql_connectivity_type;
    sql_connectivity_update_password;
    sql_connectivity_update_username;
    sql_license_type;
    sql_virtual_machine_group_id;
    tags;
    virtual_machine_id;
    assessment;
    auto_backup;
    auto_patching;
    key_vault_credential;
    sql_instance;
    storage_configuration;
    timeouts;
    wsfc_domain_credential;
  }

type t = {
  tf_name : string;
  id : string prop;
  r_services_enabled : bool prop;
  sql_connectivity_port : float prop;
  sql_connectivity_type : string prop;
  sql_connectivity_update_password : string prop;
  sql_connectivity_update_username : string prop;
  sql_license_type : string prop;
  sql_virtual_machine_group_id : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

let make ?id ?r_services_enabled ?sql_connectivity_port
    ?sql_connectivity_type ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?(assessment = [])
    ?(auto_backup = []) ?(auto_patching = [])
    ?(key_vault_credential = []) ?(sql_instance = [])
    ?(storage_configuration = []) ?timeouts
    ?(wsfc_domain_credential = []) ~virtual_machine_id __id =
  let __type = "azurerm_mssql_virtual_machine" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       r_services_enabled =
         Prop.computed __type __id "r_services_enabled";
       sql_connectivity_port =
         Prop.computed __type __id "sql_connectivity_port";
       sql_connectivity_type =
         Prop.computed __type __id "sql_connectivity_type";
       sql_connectivity_update_password =
         Prop.computed __type __id "sql_connectivity_update_password";
       sql_connectivity_update_username =
         Prop.computed __type __id "sql_connectivity_update_username";
       sql_license_type =
         Prop.computed __type __id "sql_license_type";
       sql_virtual_machine_group_id =
         Prop.computed __type __id "sql_virtual_machine_group_id";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_virtual_machine
        (azurerm_mssql_virtual_machine ?id ?r_services_enabled
           ?sql_connectivity_port ?sql_connectivity_type
           ?sql_connectivity_update_password
           ?sql_connectivity_update_username ?sql_license_type
           ?sql_virtual_machine_group_id ?tags ~assessment
           ~auto_backup ~auto_patching ~key_vault_credential
           ~sql_instance ~storage_configuration ?timeouts
           ~wsfc_domain_credential ~virtual_machine_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?r_services_enabled
    ?sql_connectivity_port ?sql_connectivity_type
    ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?(assessment = [])
    ?(auto_backup = []) ?(auto_patching = [])
    ?(key_vault_credential = []) ?(sql_instance = [])
    ?(storage_configuration = []) ?timeouts
    ?(wsfc_domain_credential = []) ~virtual_machine_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?r_services_enabled ?sql_connectivity_port
      ?sql_connectivity_type ?sql_connectivity_update_password
      ?sql_connectivity_update_username ?sql_license_type
      ?sql_virtual_machine_group_id ?tags ~assessment ~auto_backup
      ~auto_patching ~key_vault_credential ~sql_instance
      ~storage_configuration ?timeouts ~wsfc_domain_credential
      ~virtual_machine_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
