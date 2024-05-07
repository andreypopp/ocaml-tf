(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type antimalware__exclusions = {
  extensions : string prop option; [@option]
  paths : string prop option; [@option]
  processes : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : antimalware__exclusions) -> ()

let yojson_of_antimalware__exclusions =
  (function
   | {
       extensions = v_extensions;
       paths = v_paths;
       processes = v_processes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_processes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "processes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extensions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : antimalware__exclusions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_antimalware__exclusions

[@@@deriving.end]

type antimalware = {
  real_time_protection_enabled : bool prop option; [@option]
  scheduled_scan_day : float prop option; [@option]
  scheduled_scan_enabled : bool prop option; [@option]
  scheduled_scan_time_in_minutes : float prop option; [@option]
  scheduled_scan_type : string prop option; [@option]
  exclusions : antimalware__exclusions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : antimalware) -> ()

let yojson_of_antimalware =
  (function
   | {
       real_time_protection_enabled = v_real_time_protection_enabled;
       scheduled_scan_day = v_scheduled_scan_day;
       scheduled_scan_enabled = v_scheduled_scan_enabled;
       scheduled_scan_time_in_minutes =
         v_scheduled_scan_time_in_minutes;
       scheduled_scan_type = v_scheduled_scan_type;
       exclusions = v_exclusions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_antimalware__exclusions
             v_exclusions
         in
         ("exclusions", arg) :: bnds
       in
       let bnds =
         match v_scheduled_scan_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduled_scan_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduled_scan_time_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scheduled_scan_time_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduled_scan_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scheduled_scan_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scheduled_scan_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scheduled_scan_day", arg in
             bnd :: bnds
       in
       let bnds =
         match v_real_time_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "real_time_protection_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : antimalware -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_antimalware

[@@@deriving.end]

type azure_security_baseline = {
  assignment_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_security_baseline) -> ()

let yojson_of_azure_security_baseline =
  (function
   | { assignment_type = v_assignment_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_assignment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "assignment_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azure_security_baseline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_security_baseline

[@@@deriving.end]

type backup__retention_policy__daily_schedule__retention_duration = {
  count : float prop option; [@option]
  duration_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backup__retention_policy__daily_schedule__retention_duration) ->
  ()

let yojson_of_backup__retention_policy__daily_schedule__retention_duration
    =
  (function
   | { count = v_count; duration_type = v_duration_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_duration_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__retention_policy__daily_schedule__retention_duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup__retention_policy__daily_schedule__retention_duration

[@@@deriving.end]

type backup__retention_policy__daily_schedule = {
  retention_times : string prop list option; [@option]
  retention_duration :
    backup__retention_policy__daily_schedule__retention_duration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__retention_policy__daily_schedule) -> ()

let yojson_of_backup__retention_policy__daily_schedule =
  (function
   | {
       retention_times = v_retention_times;
       retention_duration = v_retention_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backup__retention_policy__daily_schedule__retention_duration
             v_retention_duration
         in
         ("retention_duration", arg) :: bnds
       in
       let bnds =
         match v_retention_times with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retention_times", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__retention_policy__daily_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__retention_policy__daily_schedule

[@@@deriving.end]

type backup__retention_policy__weekly_schedule__retention_duration = {
  count : float prop option; [@option]
  duration_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backup__retention_policy__weekly_schedule__retention_duration) ->
  ()

let yojson_of_backup__retention_policy__weekly_schedule__retention_duration
    =
  (function
   | { count = v_count; duration_type = v_duration_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_duration_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__retention_policy__weekly_schedule__retention_duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup__retention_policy__weekly_schedule__retention_duration

[@@@deriving.end]

type backup__retention_policy__weekly_schedule = {
  retention_times : string prop list option; [@option]
  retention_duration :
    backup__retention_policy__weekly_schedule__retention_duration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__retention_policy__weekly_schedule) -> ()

let yojson_of_backup__retention_policy__weekly_schedule =
  (function
   | {
       retention_times = v_retention_times;
       retention_duration = v_retention_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backup__retention_policy__weekly_schedule__retention_duration
             v_retention_duration
         in
         ("retention_duration", arg) :: bnds
       in
       let bnds =
         match v_retention_times with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retention_times", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__retention_policy__weekly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__retention_policy__weekly_schedule

[@@@deriving.end]

type backup__retention_policy = {
  retention_policy_type : string prop option; [@option]
  daily_schedule : backup__retention_policy__daily_schedule list;
  weekly_schedule : backup__retention_policy__weekly_schedule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__retention_policy) -> ()

let yojson_of_backup__retention_policy =
  (function
   | {
       retention_policy_type = v_retention_policy_type;
       daily_schedule = v_daily_schedule;
       weekly_schedule = v_weekly_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backup__retention_policy__weekly_schedule
             v_weekly_schedule
         in
         ("weekly_schedule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_backup__retention_policy__daily_schedule
             v_daily_schedule
         in
         ("daily_schedule", arg) :: bnds
       in
       let bnds =
         match v_retention_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_policy_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__retention_policy

[@@@deriving.end]

type backup__schedule_policy = {
  schedule_policy_type : string prop option; [@option]
  schedule_run_days : string prop list option; [@option]
  schedule_run_frequency : string prop option; [@option]
  schedule_run_times : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup__schedule_policy) -> ()

let yojson_of_backup__schedule_policy =
  (function
   | {
       schedule_policy_type = v_schedule_policy_type;
       schedule_run_days = v_schedule_run_days;
       schedule_run_frequency = v_schedule_run_frequency;
       schedule_run_times = v_schedule_run_times;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schedule_run_times with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "schedule_run_times", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_run_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_run_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_run_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "schedule_run_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule_policy_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup__schedule_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup__schedule_policy

[@@@deriving.end]

type backup = {
  instant_rp_retention_range_in_days : float prop option; [@option]
  policy_name : string prop option; [@option]
  time_zone : string prop option; [@option]
  retention_policy : backup__retention_policy list;
  schedule_policy : backup__schedule_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup) -> ()

let yojson_of_backup =
  (function
   | {
       instant_rp_retention_range_in_days =
         v_instant_rp_retention_range_in_days;
       policy_name = v_policy_name;
       time_zone = v_time_zone;
       retention_policy = v_retention_policy;
       schedule_policy = v_schedule_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_backup__schedule_policy
             v_schedule_policy
         in
         ("schedule_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_backup__retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
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
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instant_rp_retention_range_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instant_rp_retention_range_in_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup

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

type azurerm_automanage_configuration = {
  automation_account_enabled : bool prop option; [@option]
  boot_diagnostics_enabled : bool prop option; [@option]
  defender_for_cloud_enabled : bool prop option; [@option]
  guest_configuration_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  log_analytics_enabled : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  status_change_alert_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  antimalware : antimalware list;
  azure_security_baseline : azure_security_baseline list;
  backup : backup list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automanage_configuration) -> ()

let yojson_of_azurerm_automanage_configuration =
  (function
   | {
       automation_account_enabled = v_automation_account_enabled;
       boot_diagnostics_enabled = v_boot_diagnostics_enabled;
       defender_for_cloud_enabled = v_defender_for_cloud_enabled;
       guest_configuration_enabled = v_guest_configuration_enabled;
       id = v_id;
       location = v_location;
       log_analytics_enabled = v_log_analytics_enabled;
       name = v_name;
       resource_group_name = v_resource_group_name;
       status_change_alert_enabled = v_status_change_alert_enabled;
       tags = v_tags;
       antimalware = v_antimalware;
       azure_security_baseline = v_azure_security_baseline;
       backup = v_backup;
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
         let arg = yojson_of_list yojson_of_backup v_backup in
         ("backup", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_security_baseline
             v_azure_security_baseline
         in
         ("azure_security_baseline", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_antimalware v_antimalware
         in
         ("antimalware", arg) :: bnds
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
         match v_status_change_alert_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "status_change_alert_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_analytics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_analytics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_guest_configuration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "guest_configuration_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_defender_for_cloud_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "defender_for_cloud_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_diagnostics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boot_diagnostics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automation_account_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automation_account_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_automanage_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automanage_configuration

[@@@deriving.end]

let antimalware__exclusions ?extensions ?paths ?processes () :
    antimalware__exclusions =
  { extensions; paths; processes }

let antimalware ?real_time_protection_enabled ?scheduled_scan_day
    ?scheduled_scan_enabled ?scheduled_scan_time_in_minutes
    ?scheduled_scan_type ?(exclusions = []) () : antimalware =
  {
    real_time_protection_enabled;
    scheduled_scan_day;
    scheduled_scan_enabled;
    scheduled_scan_time_in_minutes;
    scheduled_scan_type;
    exclusions;
  }

let azure_security_baseline ?assignment_type () :
    azure_security_baseline =
  { assignment_type }

let backup__retention_policy__daily_schedule__retention_duration
    ?count ?duration_type () :
    backup__retention_policy__daily_schedule__retention_duration =
  { count; duration_type }

let backup__retention_policy__daily_schedule ?retention_times
    ?(retention_duration = []) () :
    backup__retention_policy__daily_schedule =
  { retention_times; retention_duration }

let backup__retention_policy__weekly_schedule__retention_duration
    ?count ?duration_type () :
    backup__retention_policy__weekly_schedule__retention_duration =
  { count; duration_type }

let backup__retention_policy__weekly_schedule ?retention_times
    ?(retention_duration = []) () :
    backup__retention_policy__weekly_schedule =
  { retention_times; retention_duration }

let backup__retention_policy ?retention_policy_type
    ?(daily_schedule = []) ?(weekly_schedule = []) () :
    backup__retention_policy =
  { retention_policy_type; daily_schedule; weekly_schedule }

let backup__schedule_policy ?schedule_policy_type ?schedule_run_days
    ?schedule_run_frequency ?schedule_run_times () :
    backup__schedule_policy =
  {
    schedule_policy_type;
    schedule_run_days;
    schedule_run_frequency;
    schedule_run_times;
  }

let backup ?instant_rp_retention_range_in_days ?policy_name
    ?time_zone ?(retention_policy = []) ?(schedule_policy = []) () :
    backup =
  {
    instant_rp_retention_range_in_days;
    policy_name;
    time_zone;
    retention_policy;
    schedule_policy;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automanage_configuration ?automation_account_enabled
    ?boot_diagnostics_enabled ?defender_for_cloud_enabled
    ?guest_configuration_enabled ?id ?log_analytics_enabled
    ?status_change_alert_enabled ?tags ?(antimalware = [])
    ?(azure_security_baseline = []) ?(backup = []) ?timeouts
    ~location ~name ~resource_group_name () :
    azurerm_automanage_configuration =
  {
    automation_account_enabled;
    boot_diagnostics_enabled;
    defender_for_cloud_enabled;
    guest_configuration_enabled;
    id;
    location;
    log_analytics_enabled;
    name;
    resource_group_name;
    status_change_alert_enabled;
    tags;
    antimalware;
    azure_security_baseline;
    backup;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_enabled : bool prop;
  boot_diagnostics_enabled : bool prop;
  defender_for_cloud_enabled : bool prop;
  guest_configuration_enabled : bool prop;
  id : string prop;
  location : string prop;
  log_analytics_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  status_change_alert_enabled : bool prop;
  tags : (string * string) list prop;
}

let make ?automation_account_enabled ?boot_diagnostics_enabled
    ?defender_for_cloud_enabled ?guest_configuration_enabled ?id
    ?log_analytics_enabled ?status_change_alert_enabled ?tags
    ?(antimalware = []) ?(azure_security_baseline = [])
    ?(backup = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let __type = "azurerm_automanage_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_enabled =
         Prop.computed __type __id "automation_account_enabled";
       boot_diagnostics_enabled =
         Prop.computed __type __id "boot_diagnostics_enabled";
       defender_for_cloud_enabled =
         Prop.computed __type __id "defender_for_cloud_enabled";
       guest_configuration_enabled =
         Prop.computed __type __id "guest_configuration_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       log_analytics_enabled =
         Prop.computed __type __id "log_analytics_enabled";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       status_change_alert_enabled =
         Prop.computed __type __id "status_change_alert_enabled";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automanage_configuration
        (azurerm_automanage_configuration ?automation_account_enabled
           ?boot_diagnostics_enabled ?defender_for_cloud_enabled
           ?guest_configuration_enabled ?id ?log_analytics_enabled
           ?status_change_alert_enabled ?tags ~antimalware
           ~azure_security_baseline ~backup ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?automation_account_enabled
    ?boot_diagnostics_enabled ?defender_for_cloud_enabled
    ?guest_configuration_enabled ?id ?log_analytics_enabled
    ?status_change_alert_enabled ?tags ?(antimalware = [])
    ?(azure_security_baseline = []) ?(backup = []) ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?automation_account_enabled ?boot_diagnostics_enabled
      ?defender_for_cloud_enabled ?guest_configuration_enabled ?id
      ?log_analytics_enabled ?status_change_alert_enabled ?tags
      ~antimalware ~azure_security_baseline ~backup ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
