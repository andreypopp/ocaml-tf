(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type automated_backup_policy__encryption_config = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automated_backup_policy__encryption_config) -> ()

let yojson_of_automated_backup_policy__encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automated_backup_policy__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automated_backup_policy__encryption_config

[@@@deriving.end]

type automated_backup_policy__quantity_based_retention = {
  count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : automated_backup_policy__quantity_based_retention) -> ()

let yojson_of_automated_backup_policy__quantity_based_retention =
  (function
   | { count = v_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : automated_backup_policy__quantity_based_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automated_backup_policy__quantity_based_retention

[@@@deriving.end]

type automated_backup_policy__time_based_retention = {
  retention_period : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automated_backup_policy__time_based_retention) -> ()

let yojson_of_automated_backup_policy__time_based_retention =
  (function
   | { retention_period = v_retention_period } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automated_backup_policy__time_based_retention ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automated_backup_policy__time_based_retention

[@@@deriving.end]

type automated_backup_policy__weekly_schedule__start_times = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : automated_backup_policy__weekly_schedule__start_times) ->
  ()

let yojson_of_automated_backup_policy__weekly_schedule__start_times =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automated_backup_policy__weekly_schedule__start_times ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_automated_backup_policy__weekly_schedule__start_times

[@@@deriving.end]

type automated_backup_policy__weekly_schedule = {
  days_of_week : string prop list option; [@option]
  start_times :
    automated_backup_policy__weekly_schedule__start_times list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automated_backup_policy__weekly_schedule) -> ()

let yojson_of_automated_backup_policy__weekly_schedule =
  (function
   | { days_of_week = v_days_of_week; start_times = v_start_times }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_start_times then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_automated_backup_policy__weekly_schedule__start_times)
               v_start_times
           in
           let bnd = "start_times", arg in
           bnd :: bnds
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
    : automated_backup_policy__weekly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automated_backup_policy__weekly_schedule

[@@@deriving.end]

type automated_backup_policy = {
  backup_window : string prop option; [@option]
  enabled : bool prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  encryption_config :
    automated_backup_policy__encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  quantity_based_retention :
    automated_backup_policy__quantity_based_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  time_based_retention :
    automated_backup_policy__time_based_retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weekly_schedule : automated_backup_policy__weekly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automated_backup_policy) -> ()

let yojson_of_automated_backup_policy =
  (function
   | {
       backup_window = v_backup_window;
       enabled = v_enabled;
       labels = v_labels;
       location = v_location;
       encryption_config = v_encryption_config;
       quantity_based_retention = v_quantity_based_retention;
       time_based_retention = v_time_based_retention;
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
                yojson_of_automated_backup_policy__weekly_schedule)
               v_weekly_schedule
           in
           let bnd = "weekly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_time_based_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_automated_backup_policy__time_based_retention)
               v_time_based_retention
           in
           let bnd = "time_based_retention", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_quantity_based_retention then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_automated_backup_policy__quantity_based_retention)
               v_quantity_based_retention
           in
           let bnd = "quantity_based_retention", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_automated_backup_policy__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_window", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : automated_backup_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automated_backup_policy

[@@@deriving.end]

type continuous_backup_config__encryption_config = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : continuous_backup_config__encryption_config) -> ()

let yojson_of_continuous_backup_config__encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : continuous_backup_config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_continuous_backup_config__encryption_config

[@@@deriving.end]

type continuous_backup_config = {
  enabled : bool prop option; [@option]
  recovery_window_days : float prop option; [@option]
  encryption_config :
    continuous_backup_config__encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : continuous_backup_config) -> ()

let yojson_of_continuous_backup_config =
  (function
   | {
       enabled = v_enabled;
       recovery_window_days = v_recovery_window_days;
       encryption_config = v_encryption_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_continuous_backup_config__encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_recovery_window_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "recovery_window_days", arg in
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
    : continuous_backup_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_continuous_backup_config

[@@@deriving.end]

type encryption_config = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

[@@@deriving.end]

type initial_user = {
  password : string prop;
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_user) -> ()

let yojson_of_initial_user =
  (function
   | { password = v_password; user = v_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : initial_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_user

[@@@deriving.end]

type maintenance_update_policy__maintenance_windows__start_time = {
  hours : float prop;
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : maintenance_update_policy__maintenance_windows__start_time) ->
  ()

let yojson_of_maintenance_update_policy__maintenance_windows__start_time
    =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_update_policy__maintenance_windows__start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_maintenance_update_policy__maintenance_windows__start_time

[@@@deriving.end]

type maintenance_update_policy__maintenance_windows = {
  day : string prop;
  start_time :
    maintenance_update_policy__maintenance_windows__start_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : maintenance_update_policy__maintenance_windows) -> ()

let yojson_of_maintenance_update_policy__maintenance_windows =
  (function
   | { day = v_day; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_start_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_update_policy__maintenance_windows__start_time)
               v_start_time
           in
           let bnd = "start_time", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_update_policy__maintenance_windows ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_update_policy__maintenance_windows

[@@@deriving.end]

type maintenance_update_policy = {
  maintenance_windows :
    maintenance_update_policy__maintenance_windows list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_update_policy) -> ()

let yojson_of_maintenance_update_policy =
  (function
   | { maintenance_windows = v_maintenance_windows } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_windows then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_update_policy__maintenance_windows)
               v_maintenance_windows
           in
           let bnd = "maintenance_windows", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : maintenance_update_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_update_policy

[@@@deriving.end]

type network_config = {
  allocated_ip_range : string prop option; [@option]
  network : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       allocated_ip_range = v_allocated_ip_range;
       network = v_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
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
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type psc_config = { psc_enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_config) -> ()

let yojson_of_psc_config =
  (function
   | { psc_enabled = v_psc_enabled } ->
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
       `Assoc bnds
    : psc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_config

[@@@deriving.end]

type restore_backup_source = { backup_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_backup_source) -> ()

let yojson_of_restore_backup_source =
  (function
   | { backup_name = v_backup_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_backup_name in
         ("backup_name", arg) :: bnds
       in
       `Assoc bnds
    : restore_backup_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_backup_source

[@@@deriving.end]

type restore_continuous_backup_source = {
  cluster : string prop;
  point_in_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_continuous_backup_source) -> ()

let yojson_of_restore_continuous_backup_source =
  (function
   | { cluster = v_cluster; point_in_time = v_point_in_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_point_in_time in
         ("point_in_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : restore_continuous_backup_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_continuous_backup_source

[@@@deriving.end]

type secondary_config = { primary_cluster_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_config) -> ()

let yojson_of_secondary_config =
  (function
   | { primary_cluster_name = v_primary_cluster_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_cluster_name
         in
         ("primary_cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : secondary_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_config

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

type backup_source = { backup_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_source) -> ()

let yojson_of_backup_source =
  (function
   | { backup_name = v_backup_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_backup_name in
         ("backup_name", arg) :: bnds
       in
       `Assoc bnds
    : backup_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_source

[@@@deriving.end]

type continuous_backup_info__encryption_info = {
  encryption_type : string prop;
  kms_key_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : continuous_backup_info__encryption_info) -> ()

let yojson_of_continuous_backup_info__encryption_info =
  (function
   | {
       encryption_type = v_encryption_type;
       kms_key_versions = v_kms_key_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kms_key_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_kms_key_versions
           in
           let bnd = "kms_key_versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : continuous_backup_info__encryption_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_continuous_backup_info__encryption_info

[@@@deriving.end]

type continuous_backup_info = {
  earliest_restorable_time : string prop;
  enabled_time : string prop;
  encryption_info : continuous_backup_info__encryption_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : continuous_backup_info) -> ()

let yojson_of_continuous_backup_info =
  (function
   | {
       earliest_restorable_time = v_earliest_restorable_time;
       enabled_time = v_enabled_time;
       encryption_info = v_encryption_info;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_info then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_continuous_backup_info__encryption_info)
               v_encryption_info
           in
           let bnd = "encryption_info", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_enabled_time in
         ("enabled_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_earliest_restorable_time
         in
         ("earliest_restorable_time", arg) :: bnds
       in
       `Assoc bnds
    : continuous_backup_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_continuous_backup_info

[@@@deriving.end]

type encryption_info = {
  encryption_type : string prop;
  kms_key_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_info) -> ()

let yojson_of_encryption_info =
  (function
   | {
       encryption_type = v_encryption_type;
       kms_key_versions = v_kms_key_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_kms_key_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_kms_key_versions
           in
           let bnd = "kms_key_versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : encryption_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_info

[@@@deriving.end]

type migration_source = {
  host_port : string prop;
  reference_id : string prop;
  source_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : migration_source) -> ()

let yojson_of_migration_source =
  (function
   | {
       host_port = v_host_port;
       reference_id = v_reference_id;
       source_type = v_source_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_type in
         ("source_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reference_id in
         ("reference_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_port in
         ("host_port", arg) :: bnds
       in
       `Assoc bnds
    : migration_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_migration_source

[@@@deriving.end]

type google_alloydb_cluster = {
  annotations : string prop Tf_core.assoc option; [@option]
  cluster_id : string prop;
  cluster_type : string prop option; [@option]
  database_version : string prop option; [@option]
  deletion_policy : string prop option; [@option]
  display_name : string prop option; [@option]
  etag : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  network : string prop option; [@option]
  project : string prop option; [@option]
  automated_backup_policy : automated_backup_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  continuous_backup_config : continuous_backup_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_config : encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  initial_user : initial_user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_update_policy : maintenance_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  psc_config : psc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restore_backup_source : restore_backup_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  restore_continuous_backup_source :
    restore_continuous_backup_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secondary_config : secondary_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_alloydb_cluster) -> ()

let yojson_of_google_alloydb_cluster =
  (function
   | {
       annotations = v_annotations;
       cluster_id = v_cluster_id;
       cluster_type = v_cluster_type;
       database_version = v_database_version;
       deletion_policy = v_deletion_policy;
       display_name = v_display_name;
       etag = v_etag;
       id = v_id;
       labels = v_labels;
       location = v_location;
       network = v_network;
       project = v_project;
       automated_backup_policy = v_automated_backup_policy;
       continuous_backup_config = v_continuous_backup_config;
       encryption_config = v_encryption_config;
       initial_user = v_initial_user;
       maintenance_update_policy = v_maintenance_update_policy;
       network_config = v_network_config;
       psc_config = v_psc_config;
       restore_backup_source = v_restore_backup_source;
       restore_continuous_backup_source =
         v_restore_continuous_backup_source;
       secondary_config = v_secondary_config;
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
         if Stdlib.( = ) [] v_secondary_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secondary_config)
               v_secondary_config
           in
           let bnd = "secondary_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_restore_continuous_backup_source then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_continuous_backup_source)
               v_restore_continuous_backup_source
           in
           let bnd = "restore_continuous_backup_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_restore_backup_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restore_backup_source)
               v_restore_backup_source
           in
           let bnd = "restore_backup_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_psc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_psc_config) v_psc_config
           in
           let bnd = "psc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_update_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_update_policy)
               v_maintenance_update_policy
           in
           let bnd = "maintenance_update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_initial_user then bnds
         else
           let arg =
             (yojson_of_list yojson_of_initial_user) v_initial_user
           in
           let bnd = "initial_user", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_continuous_backup_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_continuous_backup_config)
               v_continuous_backup_config
           in
           let bnd = "continuous_backup_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automated_backup_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automated_backup_policy)
               v_automated_backup_policy
           in
           let bnd = "automated_backup_policy", arg in
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
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
         match v_database_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_alloydb_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_alloydb_cluster

[@@@deriving.end]

let automated_backup_policy__encryption_config ?kms_key_name () :
    automated_backup_policy__encryption_config =
  { kms_key_name }

let automated_backup_policy__quantity_based_retention ?count () :
    automated_backup_policy__quantity_based_retention =
  { count }

let automated_backup_policy__time_based_retention ?retention_period
    () : automated_backup_policy__time_based_retention =
  { retention_period }

let automated_backup_policy__weekly_schedule__start_times ?hours
    ?minutes ?nanos ?seconds () :
    automated_backup_policy__weekly_schedule__start_times =
  { hours; minutes; nanos; seconds }

let automated_backup_policy__weekly_schedule ?days_of_week
    ~start_times () : automated_backup_policy__weekly_schedule =
  { days_of_week; start_times }

let automated_backup_policy ?backup_window ?enabled ?labels ?location
    ?(encryption_config = []) ?(quantity_based_retention = [])
    ?(time_based_retention = []) ?(weekly_schedule = []) () :
    automated_backup_policy =
  {
    backup_window;
    enabled;
    labels;
    location;
    encryption_config;
    quantity_based_retention;
    time_based_retention;
    weekly_schedule;
  }

let continuous_backup_config__encryption_config ?kms_key_name () :
    continuous_backup_config__encryption_config =
  { kms_key_name }

let continuous_backup_config ?enabled ?recovery_window_days
    ?(encryption_config = []) () : continuous_backup_config =
  { enabled; recovery_window_days; encryption_config }

let encryption_config ?kms_key_name () : encryption_config =
  { kms_key_name }

let initial_user ?user ~password () : initial_user =
  { password; user }

let maintenance_update_policy__maintenance_windows__start_time
    ?minutes ?nanos ?seconds ~hours () :
    maintenance_update_policy__maintenance_windows__start_time =
  { hours; minutes; nanos; seconds }

let maintenance_update_policy__maintenance_windows ~day ~start_time
    () : maintenance_update_policy__maintenance_windows =
  { day; start_time }

let maintenance_update_policy ?(maintenance_windows = []) () :
    maintenance_update_policy =
  { maintenance_windows }

let network_config ?allocated_ip_range ?network () : network_config =
  { allocated_ip_range; network }

let psc_config ?psc_enabled () : psc_config = { psc_enabled }

let restore_backup_source ~backup_name () : restore_backup_source =
  { backup_name }

let restore_continuous_backup_source ~cluster ~point_in_time () :
    restore_continuous_backup_source =
  { cluster; point_in_time }

let secondary_config ~primary_cluster_name () : secondary_config =
  { primary_cluster_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_alloydb_cluster ?annotations ?cluster_type
    ?database_version ?deletion_policy ?display_name ?etag ?id
    ?labels ?network ?project ?(automated_backup_policy = [])
    ?(continuous_backup_config = []) ?(encryption_config = [])
    ?(initial_user = []) ?(maintenance_update_policy = [])
    ?(network_config = []) ?(psc_config = [])
    ?(restore_backup_source = [])
    ?(restore_continuous_backup_source = []) ?(secondary_config = [])
    ?timeouts ~cluster_id ~location () : google_alloydb_cluster =
  {
    annotations;
    cluster_id;
    cluster_type;
    database_version;
    deletion_policy;
    display_name;
    etag;
    id;
    labels;
    location;
    network;
    project;
    automated_backup_policy;
    continuous_backup_config;
    encryption_config;
    initial_user;
    maintenance_update_policy;
    network_config;
    psc_config;
    restore_backup_source;
    restore_continuous_backup_source;
    secondary_config;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  backup_source : backup_source list prop;
  cluster_id : string prop;
  cluster_type : string prop;
  continuous_backup_info : continuous_backup_info list prop;
  database_version : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  migration_source : migration_source list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
}

let make ?annotations ?cluster_type ?database_version
    ?deletion_policy ?display_name ?etag ?id ?labels ?network
    ?project ?(automated_backup_policy = [])
    ?(continuous_backup_config = []) ?(encryption_config = [])
    ?(initial_user = []) ?(maintenance_update_policy = [])
    ?(network_config = []) ?(psc_config = [])
    ?(restore_backup_source = [])
    ?(restore_continuous_backup_source = []) ?(secondary_config = [])
    ?timeouts ~cluster_id ~location __id =
  let __type = "google_alloydb_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       backup_source = Prop.computed __type __id "backup_source";
       cluster_id = Prop.computed __type __id "cluster_id";
       cluster_type = Prop.computed __type __id "cluster_type";
       continuous_backup_info =
         Prop.computed __type __id "continuous_backup_info";
       database_version =
         Prop.computed __type __id "database_version";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_info = Prop.computed __type __id "encryption_info";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       migration_source =
         Prop.computed __type __id "migration_source";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_alloydb_cluster
        (google_alloydb_cluster ?annotations ?cluster_type
           ?database_version ?deletion_policy ?display_name ?etag ?id
           ?labels ?network ?project ~automated_backup_policy
           ~continuous_backup_config ~encryption_config ~initial_user
           ~maintenance_update_policy ~network_config ~psc_config
           ~restore_backup_source ~restore_continuous_backup_source
           ~secondary_config ?timeouts ~cluster_id ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?cluster_type ?database_version
    ?deletion_policy ?display_name ?etag ?id ?labels ?network
    ?project ?(automated_backup_policy = [])
    ?(continuous_backup_config = []) ?(encryption_config = [])
    ?(initial_user = []) ?(maintenance_update_policy = [])
    ?(network_config = []) ?(psc_config = [])
    ?(restore_backup_source = [])
    ?(restore_continuous_backup_source = []) ?(secondary_config = [])
    ?timeouts ~cluster_id ~location __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?cluster_type ?database_version
      ?deletion_policy ?display_name ?etag ?id ?labels ?network
      ?project ~automated_backup_policy ~continuous_backup_config
      ~encryption_config ~initial_user ~maintenance_update_policy
      ~network_config ~psc_config ~restore_backup_source
      ~restore_continuous_backup_source ~secondary_config ?timeouts
      ~cluster_id ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
