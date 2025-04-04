(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_config = {
  backup_policies : string prop list option; [@option]
  backup_vault : string prop option; [@option]
  scheduled_backup_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_config) -> ()

let yojson_of_backup_config =
  (function
   | {
       backup_policies = v_backup_policies;
       backup_vault = v_backup_vault;
       scheduled_backup_enabled = v_scheduled_backup_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scheduled_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scheduled_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_vault with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_vault", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backup_policies", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_config

[@@@deriving.end]

type export_policy__rules = {
  access_type : string prop option; [@option]
  allowed_clients : string prop option; [@option]
  has_root_access : string prop option; [@option]
  kerberos5_read_only : bool prop option; [@option]
  kerberos5_read_write : bool prop option; [@option]
  kerberos5i_read_only : bool prop option; [@option]
  kerberos5i_read_write : bool prop option; [@option]
  kerberos5p_read_only : bool prop option; [@option]
  kerberos5p_read_write : bool prop option; [@option]
  nfsv3 : bool prop option; [@option]
  nfsv4 : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_policy__rules) -> ()

let yojson_of_export_policy__rules =
  (function
   | {
       access_type = v_access_type;
       allowed_clients = v_allowed_clients;
       has_root_access = v_has_root_access;
       kerberos5_read_only = v_kerberos5_read_only;
       kerberos5_read_write = v_kerberos5_read_write;
       kerberos5i_read_only = v_kerberos5i_read_only;
       kerberos5i_read_write = v_kerberos5i_read_write;
       kerberos5p_read_only = v_kerberos5p_read_only;
       kerberos5p_read_write = v_kerberos5p_read_write;
       nfsv3 = v_nfsv3;
       nfsv4 = v_nfsv4;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_nfsv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nfsv4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nfsv3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nfsv3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5p_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5p_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5p_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5p_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5i_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5i_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5i_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5i_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos5_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos5_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_has_root_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "has_root_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_clients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_clients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : export_policy__rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_policy__rules

[@@@deriving.end]

type export_policy = {
  rules : export_policy__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_policy) -> ()

let yojson_of_export_policy =
  (function
   | { rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export_policy__rules) v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : export_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_policy

[@@@deriving.end]

type restore_parameters = {
  source_backup : string prop option; [@option]
  source_snapshot : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_parameters) -> ()

let yojson_of_restore_parameters =
  (function
   | {
       source_backup = v_source_backup;
       source_snapshot = v_source_snapshot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_backup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_backup", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_parameters

[@@@deriving.end]

type snapshot_policy__daily_schedule = {
  hour : float prop option; [@option]
  minute : float prop option; [@option]
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_policy__daily_schedule) -> ()

let yojson_of_snapshot_policy__daily_schedule =
  (function
   | {
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         match v_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minute", arg in
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
       `Assoc bnds
    : snapshot_policy__daily_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_policy__daily_schedule

[@@@deriving.end]

type snapshot_policy__hourly_schedule = {
  minute : float prop option; [@option]
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_policy__hourly_schedule) -> ()

let yojson_of_snapshot_policy__hourly_schedule =
  (function
   | { minute = v_minute; snapshots_to_keep = v_snapshots_to_keep }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         match v_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minute", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_policy__hourly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_policy__hourly_schedule

[@@@deriving.end]

type snapshot_policy__monthly_schedule = {
  days_of_month : string prop option; [@option]
  hour : float prop option; [@option]
  minute : float prop option; [@option]
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_policy__monthly_schedule) -> ()

let yojson_of_snapshot_policy__monthly_schedule =
  (function
   | {
       days_of_month = v_days_of_month;
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         match v_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minute", arg in
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
         match v_days_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "days_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_policy__monthly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_policy__monthly_schedule

[@@@deriving.end]

type snapshot_policy__weekly_schedule = {
  day : string prop option; [@option]
  hour : float prop option; [@option]
  minute : float prop option; [@option]
  snapshots_to_keep : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_policy__weekly_schedule) -> ()

let yojson_of_snapshot_policy__weekly_schedule =
  (function
   | {
       day = v_day;
       hour = v_hour;
       minute = v_minute;
       snapshots_to_keep = v_snapshots_to_keep;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_snapshots_to_keep
         in
         ("snapshots_to_keep", arg) :: bnds
       in
       let bnds =
         match v_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minute", arg in
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_policy__weekly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_policy__weekly_schedule

[@@@deriving.end]

type snapshot_policy = {
  enabled : bool prop option; [@option]
  daily_schedule : snapshot_policy__daily_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hourly_schedule : snapshot_policy__hourly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monthly_schedule : snapshot_policy__monthly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weekly_schedule : snapshot_policy__weekly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_policy) -> ()

let yojson_of_snapshot_policy =
  (function
   | {
       enabled = v_enabled;
       daily_schedule = v_daily_schedule;
       hourly_schedule = v_hourly_schedule;
       monthly_schedule = v_monthly_schedule;
       weekly_schedule = v_weekly_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weekly_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_policy__weekly_schedule)
               v_weekly_schedule
           in
           let bnd = "weekly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_policy__monthly_schedule)
               v_monthly_schedule
           in
           let bnd = "monthly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hourly_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_policy__hourly_schedule)
               v_hourly_schedule
           in
           let bnd = "hourly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_daily_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_policy__daily_schedule)
               v_daily_schedule
           in
           let bnd = "daily_schedule", arg in
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
    : snapshot_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_policy

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

type mount_options = {
  export : string prop;
  export_full : string prop;
  instructions : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount_options) -> ()

let yojson_of_mount_options =
  (function
   | {
       export = v_export;
       export_full = v_export_full;
       instructions = v_instructions;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instructions in
         ("instructions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_export_full in
         ("export_full", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_export in
         ("export", arg) :: bnds
       in
       `Assoc bnds
    : mount_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount_options

[@@@deriving.end]

type google_netapp_volume = {
  capacity_gib : string prop;
  deletion_policy : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  kerberos_enabled : bool prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restricted_actions : string prop list option; [@option]
  security_style : string prop option; [@option]
  share_name : string prop;
  smb_settings : string prop list option; [@option]
  snapshot_directory : bool prop option; [@option]
  storage_pool : string prop;
  unix_permissions : string prop option; [@option]
  backup_config : backup_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  export_policy : export_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restore_parameters : restore_parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot_policy : snapshot_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_volume) -> ()

let yojson_of_google_netapp_volume =
  (function
   | {
       capacity_gib = v_capacity_gib;
       deletion_policy = v_deletion_policy;
       description = v_description;
       id = v_id;
       kerberos_enabled = v_kerberos_enabled;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       protocols = v_protocols;
       restricted_actions = v_restricted_actions;
       security_style = v_security_style;
       share_name = v_share_name;
       smb_settings = v_smb_settings;
       snapshot_directory = v_snapshot_directory;
       storage_pool = v_storage_pool;
       unix_permissions = v_unix_permissions;
       backup_config = v_backup_config;
       export_policy = v_export_policy;
       restore_parameters = v_restore_parameters;
       snapshot_policy = v_snapshot_policy;
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
         if Stdlib.( = ) [] v_snapshot_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_snapshot_policy)
               v_snapshot_policy
           in
           let bnd = "snapshot_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_restore_parameters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restore_parameters)
               v_restore_parameters
           in
           let bnd = "restore_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_export_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export_policy) v_export_policy
           in
           let bnd = "export_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup_config) v_backup_config
           in
           let bnd = "backup_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unix_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unix_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_pool in
         ("storage_pool", arg) :: bnds
       in
       let bnds =
         match v_snapshot_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "snapshot_directory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smb_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "smb_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         match v_security_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_style", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restricted_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "restricted_actions", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_protocols
           in
           let bnd = "protocols", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kerberos_enabled", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_capacity_gib in
         ("capacity_gib", arg) :: bnds
       in
       `Assoc bnds
    : google_netapp_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_volume

[@@@deriving.end]

let backup_config ?backup_policies ?backup_vault
    ?scheduled_backup_enabled () : backup_config =
  { backup_policies; backup_vault; scheduled_backup_enabled }

let export_policy__rules ?access_type ?allowed_clients
    ?has_root_access ?kerberos5_read_only ?kerberos5_read_write
    ?kerberos5i_read_only ?kerberos5i_read_write
    ?kerberos5p_read_only ?kerberos5p_read_write ?nfsv3 ?nfsv4 () :
    export_policy__rules =
  {
    access_type;
    allowed_clients;
    has_root_access;
    kerberos5_read_only;
    kerberos5_read_write;
    kerberos5i_read_only;
    kerberos5i_read_write;
    kerberos5p_read_only;
    kerberos5p_read_write;
    nfsv3;
    nfsv4;
  }

let export_policy ~rules () : export_policy = { rules }

let restore_parameters ?source_backup ?source_snapshot () :
    restore_parameters =
  { source_backup; source_snapshot }

let snapshot_policy__daily_schedule ?hour ?minute ~snapshots_to_keep
    () : snapshot_policy__daily_schedule =
  { hour; minute; snapshots_to_keep }

let snapshot_policy__hourly_schedule ?minute ~snapshots_to_keep () :
    snapshot_policy__hourly_schedule =
  { minute; snapshots_to_keep }

let snapshot_policy__monthly_schedule ?days_of_month ?hour ?minute
    ~snapshots_to_keep () : snapshot_policy__monthly_schedule =
  { days_of_month; hour; minute; snapshots_to_keep }

let snapshot_policy__weekly_schedule ?day ?hour ?minute
    ~snapshots_to_keep () : snapshot_policy__weekly_schedule =
  { day; hour; minute; snapshots_to_keep }

let snapshot_policy ?enabled ?(daily_schedule = [])
    ?(hourly_schedule = []) ?(monthly_schedule = [])
    ?(weekly_schedule = []) () : snapshot_policy =
  {
    enabled;
    daily_schedule;
    hourly_schedule;
    monthly_schedule;
    weekly_schedule;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_volume ?deletion_policy ?description ?id
    ?kerberos_enabled ?labels ?project ?restricted_actions
    ?security_style ?smb_settings ?snapshot_directory
    ?unix_permissions ?(backup_config = []) ?(export_policy = [])
    ?(restore_parameters = []) ?(snapshot_policy = []) ?timeouts
    ~capacity_gib ~location ~name ~protocols ~share_name
    ~storage_pool () : google_netapp_volume =
  {
    capacity_gib;
    deletion_policy;
    description;
    id;
    kerberos_enabled;
    labels;
    location;
    name;
    project;
    protocols;
    restricted_actions;
    security_style;
    share_name;
    smb_settings;
    snapshot_directory;
    storage_pool;
    unix_permissions;
    backup_config;
    export_policy;
    restore_parameters;
    snapshot_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  active_directory : string prop;
  capacity_gib : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_type : string prop;
  has_replication : bool prop;
  id : string prop;
  kerberos_enabled : bool prop;
  kms_config : string prop;
  labels : string Tf_core.assoc prop;
  ldap_enabled : bool prop;
  location : string prop;
  mount_options : mount_options list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  protocols : string list prop;
  psa_range : string prop;
  restricted_actions : string list prop;
  security_style : string prop;
  service_level : string prop;
  share_name : string prop;
  smb_settings : string list prop;
  snapshot_directory : bool prop;
  state : string prop;
  state_details : string prop;
  storage_pool : string prop;
  terraform_labels : string Tf_core.assoc prop;
  unix_permissions : string prop;
  used_gib : string prop;
}

let make ?deletion_policy ?description ?id ?kerberos_enabled ?labels
    ?project ?restricted_actions ?security_style ?smb_settings
    ?snapshot_directory ?unix_permissions ?(backup_config = [])
    ?(export_policy = []) ?(restore_parameters = [])
    ?(snapshot_policy = []) ?timeouts ~capacity_gib ~location ~name
    ~protocols ~share_name ~storage_pool __id =
  let __type = "google_netapp_volume" in
  let __attrs =
    ({
       tf_name = __id;
       active_directory =
         Prop.computed __type __id "active_directory";
       capacity_gib = Prop.computed __type __id "capacity_gib";
       create_time = Prop.computed __type __id "create_time";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_type = Prop.computed __type __id "encryption_type";
       has_replication = Prop.computed __type __id "has_replication";
       id = Prop.computed __type __id "id";
       kerberos_enabled =
         Prop.computed __type __id "kerberos_enabled";
       kms_config = Prop.computed __type __id "kms_config";
       labels = Prop.computed __type __id "labels";
       ldap_enabled = Prop.computed __type __id "ldap_enabled";
       location = Prop.computed __type __id "location";
       mount_options = Prop.computed __type __id "mount_options";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       protocols = Prop.computed __type __id "protocols";
       psa_range = Prop.computed __type __id "psa_range";
       restricted_actions =
         Prop.computed __type __id "restricted_actions";
       security_style = Prop.computed __type __id "security_style";
       service_level = Prop.computed __type __id "service_level";
       share_name = Prop.computed __type __id "share_name";
       smb_settings = Prop.computed __type __id "smb_settings";
       snapshot_directory =
         Prop.computed __type __id "snapshot_directory";
       state = Prop.computed __type __id "state";
       state_details = Prop.computed __type __id "state_details";
       storage_pool = Prop.computed __type __id "storage_pool";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       unix_permissions =
         Prop.computed __type __id "unix_permissions";
       used_gib = Prop.computed __type __id "used_gib";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_volume
        (google_netapp_volume ?deletion_policy ?description ?id
           ?kerberos_enabled ?labels ?project ?restricted_actions
           ?security_style ?smb_settings ?snapshot_directory
           ?unix_permissions ~backup_config ~export_policy
           ~restore_parameters ~snapshot_policy ?timeouts
           ~capacity_gib ~location ~name ~protocols ~share_name
           ~storage_pool ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?description ?id
    ?kerberos_enabled ?labels ?project ?restricted_actions
    ?security_style ?smb_settings ?snapshot_directory
    ?unix_permissions ?(backup_config = []) ?(export_policy = [])
    ?(restore_parameters = []) ?(snapshot_policy = []) ?timeouts
    ~capacity_gib ~location ~name ~protocols ~share_name
    ~storage_pool __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?description ?id ?kerberos_enabled ?labels
      ?project ?restricted_actions ?security_style ?smb_settings
      ?snapshot_directory ?unix_permissions ~backup_config
      ~export_policy ~restore_parameters ~snapshot_policy ?timeouts
      ~capacity_gib ~location ~name ~protocols ~share_name
      ~storage_pool __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
