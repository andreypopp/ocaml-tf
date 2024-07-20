(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_config__encryption_key = {
  gcp_kms_encryption_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_config__encryption_key) -> ()

let yojson_of_backup_config__encryption_key =
  (function
   | { gcp_kms_encryption_key = v_gcp_kms_encryption_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gcp_kms_encryption_key
         in
         ("gcp_kms_encryption_key", arg) :: bnds
       in
       `Assoc bnds
    : backup_config__encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_config__encryption_key

[@@@deriving.end]

type backup_config__selected_applications__namespaced_names = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backup_config__selected_applications__namespaced_names) ->
  ()

let yojson_of_backup_config__selected_applications__namespaced_names
    =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : backup_config__selected_applications__namespaced_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup_config__selected_applications__namespaced_names

[@@@deriving.end]

type backup_config__selected_applications = {
  namespaced_names :
    backup_config__selected_applications__namespaced_names list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_config__selected_applications) -> ()

let yojson_of_backup_config__selected_applications =
  (function
   | { namespaced_names = v_namespaced_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_namespaced_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_config__selected_applications__namespaced_names)
               v_namespaced_names
           in
           let bnd = "namespaced_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backup_config__selected_applications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_config__selected_applications

[@@@deriving.end]

type backup_config__selected_namespaces = {
  namespaces : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_config__selected_namespaces) -> ()

let yojson_of_backup_config__selected_namespaces =
  (function
   | { namespaces = v_namespaces } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backup_config__selected_namespaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_config__selected_namespaces

[@@@deriving.end]

type backup_config = {
  all_namespaces : bool prop option; [@option]
  include_secrets : bool prop option; [@option]
  include_volume_data : bool prop option; [@option]
  permissive_mode : bool prop option; [@option]
  encryption_key : backup_config__encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  selected_applications : backup_config__selected_applications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  selected_namespaces : backup_config__selected_namespaces list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_config) -> ()

let yojson_of_backup_config =
  (function
   | {
       all_namespaces = v_all_namespaces;
       include_secrets = v_include_secrets;
       include_volume_data = v_include_volume_data;
       permissive_mode = v_permissive_mode;
       encryption_key = v_encryption_key;
       selected_applications = v_selected_applications;
       selected_namespaces = v_selected_namespaces;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_selected_namespaces then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_config__selected_namespaces)
               v_selected_namespaces
           in
           let bnd = "selected_namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_selected_applications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_config__selected_applications)
               v_selected_applications
           in
           let bnd = "selected_applications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup_config__encryption_key)
               v_encryption_key
           in
           let bnd = "encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         match v_permissive_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "permissive_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_volume_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_volume_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_secrets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_secrets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_config

[@@@deriving.end]

type backup_schedule__rpo_config__exclusion_windows__days_of_week = {
  days_of_week : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backup_schedule__rpo_config__exclusion_windows__days_of_week) ->
  ()

let yojson_of_backup_schedule__rpo_config__exclusion_windows__days_of_week
    =
  (function
   | { days_of_week = v_days_of_week } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : backup_schedule__rpo_config__exclusion_windows__days_of_week ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup_schedule__rpo_config__exclusion_windows__days_of_week

[@@@deriving.end]

type backup_schedule__rpo_config__exclusion_windows__single_occurrence_date = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backup_schedule__rpo_config__exclusion_windows__single_occurrence_date) ->
  ()

let yojson_of_backup_schedule__rpo_config__exclusion_windows__single_occurrence_date
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
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
    : backup_schedule__rpo_config__exclusion_windows__single_occurrence_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup_schedule__rpo_config__exclusion_windows__single_occurrence_date

[@@@deriving.end]

type backup_schedule__rpo_config__exclusion_windows__start_time = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backup_schedule__rpo_config__exclusion_windows__start_time) ->
  ()

let yojson_of_backup_schedule__rpo_config__exclusion_windows__start_time
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
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_schedule__rpo_config__exclusion_windows__start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backup_schedule__rpo_config__exclusion_windows__start_time

[@@@deriving.end]

type backup_schedule__rpo_config__exclusion_windows = {
  daily : bool prop option; [@option]
  duration : string prop;
  days_of_week :
    backup_schedule__rpo_config__exclusion_windows__days_of_week list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  single_occurrence_date :
    backup_schedule__rpo_config__exclusion_windows__single_occurrence_date
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  start_time :
    backup_schedule__rpo_config__exclusion_windows__start_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backup_schedule__rpo_config__exclusion_windows) -> ()

let yojson_of_backup_schedule__rpo_config__exclusion_windows =
  (function
   | {
       daily = v_daily;
       duration = v_duration;
       days_of_week = v_days_of_week;
       single_occurrence_date = v_single_occurrence_date;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_start_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_schedule__rpo_config__exclusion_windows__start_time)
               v_start_time
           in
           let bnd = "start_time", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_single_occurrence_date then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_schedule__rpo_config__exclusion_windows__single_occurrence_date)
               v_single_occurrence_date
           in
           let bnd = "single_occurrence_date", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_days_of_week then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_schedule__rpo_config__exclusion_windows__days_of_week)
               v_days_of_week
           in
           let bnd = "days_of_week", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         match v_daily with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "daily", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_schedule__rpo_config__exclusion_windows ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_schedule__rpo_config__exclusion_windows

[@@@deriving.end]

type backup_schedule__rpo_config = {
  target_rpo_minutes : float prop;
  exclusion_windows :
    backup_schedule__rpo_config__exclusion_windows list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_schedule__rpo_config) -> ()

let yojson_of_backup_schedule__rpo_config =
  (function
   | {
       target_rpo_minutes = v_target_rpo_minutes;
       exclusion_windows = v_exclusion_windows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion_windows then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backup_schedule__rpo_config__exclusion_windows)
               v_exclusion_windows
           in
           let bnd = "exclusion_windows", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_rpo_minutes
         in
         ("target_rpo_minutes", arg) :: bnds
       in
       `Assoc bnds
    : backup_schedule__rpo_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_schedule__rpo_config

[@@@deriving.end]

type backup_schedule = {
  cron_schedule : string prop option; [@option]
  paused : bool prop option; [@option]
  rpo_config : backup_schedule__rpo_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_schedule) -> ()

let yojson_of_backup_schedule =
  (function
   | {
       cron_schedule = v_cron_schedule;
       paused = v_paused;
       rpo_config = v_rpo_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rpo_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup_schedule__rpo_config)
               v_rpo_config
           in
           let bnd = "rpo_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_paused with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "paused", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cron_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cron_schedule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_schedule

[@@@deriving.end]

type retention_policy = {
  backup_delete_lock_days : float prop option; [@option]
  backup_retain_days : float prop option; [@option]
  locked : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | {
       backup_delete_lock_days = v_backup_delete_lock_days;
       backup_retain_days = v_backup_retain_days;
       locked = v_locked;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "locked", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_retain_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_retain_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_delete_lock_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_delete_lock_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

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

type google_gke_backup_backup_plan = {
  cluster : string prop;
  deactivated : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  backup_config : backup_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backup_schedule : backup_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention_policy : retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_backup_backup_plan) -> ()

let yojson_of_google_gke_backup_backup_plan =
  (function
   | {
       cluster = v_cluster;
       deactivated = v_deactivated;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       backup_config = v_backup_config;
       backup_schedule = v_backup_schedule;
       retention_policy = v_retention_policy;
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
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backup_schedule)
               v_backup_schedule
           in
           let bnd = "backup_schedule", arg in
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deactivated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deactivated", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : google_gke_backup_backup_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_backup_backup_plan

[@@@deriving.end]

let backup_config__encryption_key ~gcp_kms_encryption_key () :
    backup_config__encryption_key =
  { gcp_kms_encryption_key }

let backup_config__selected_applications__namespaced_names ~name
    ~namespace () :
    backup_config__selected_applications__namespaced_names =
  { name; namespace }

let backup_config__selected_applications ~namespaced_names () :
    backup_config__selected_applications =
  { namespaced_names }

let backup_config__selected_namespaces ~namespaces () :
    backup_config__selected_namespaces =
  { namespaces }

let backup_config ?all_namespaces ?include_secrets
    ?include_volume_data ?permissive_mode ?(encryption_key = [])
    ?(selected_applications = []) ?(selected_namespaces = []) () :
    backup_config =
  {
    all_namespaces;
    include_secrets;
    include_volume_data;
    permissive_mode;
    encryption_key;
    selected_applications;
    selected_namespaces;
  }

let backup_schedule__rpo_config__exclusion_windows__days_of_week
    ?days_of_week () :
    backup_schedule__rpo_config__exclusion_windows__days_of_week =
  { days_of_week }

let backup_schedule__rpo_config__exclusion_windows__single_occurrence_date
    ?day ?month ?year () :
    backup_schedule__rpo_config__exclusion_windows__single_occurrence_date
    =
  { day; month; year }

let backup_schedule__rpo_config__exclusion_windows__start_time ?hours
    ?minutes ?nanos ?seconds () :
    backup_schedule__rpo_config__exclusion_windows__start_time =
  { hours; minutes; nanos; seconds }

let backup_schedule__rpo_config__exclusion_windows ?daily
    ?(days_of_week = []) ?(single_occurrence_date = []) ~duration
    ~start_time () : backup_schedule__rpo_config__exclusion_windows =
  {
    daily;
    duration;
    days_of_week;
    single_occurrence_date;
    start_time;
  }

let backup_schedule__rpo_config ?(exclusion_windows = [])
    ~target_rpo_minutes () : backup_schedule__rpo_config =
  { target_rpo_minutes; exclusion_windows }

let backup_schedule ?cron_schedule ?paused ?(rpo_config = []) () :
    backup_schedule =
  { cron_schedule; paused; rpo_config }

let retention_policy ?backup_delete_lock_days ?backup_retain_days
    ?locked () : retention_policy =
  { backup_delete_lock_days; backup_retain_days; locked }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_backup_backup_plan ?deactivated ?description ?id
    ?labels ?project ?(backup_config = []) ?(backup_schedule = [])
    ?(retention_policy = []) ?timeouts ~cluster ~location ~name () :
    google_gke_backup_backup_plan =
  {
    cluster;
    deactivated;
    description;
    id;
    labels;
    location;
    name;
    project;
    backup_config;
    backup_schedule;
    retention_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster : string prop;
  deactivated : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  protected_pod_count : float prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

let make ?deactivated ?description ?id ?labels ?project
    ?(backup_config = []) ?(backup_schedule = [])
    ?(retention_policy = []) ?timeouts ~cluster ~location ~name __id
    =
  let __type = "google_gke_backup_backup_plan" in
  let __attrs =
    ({
       tf_name = __id;
       cluster = Prop.computed __type __id "cluster";
       deactivated = Prop.computed __type __id "deactivated";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       protected_pod_count =
         Prop.computed __type __id "protected_pod_count";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
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
      yojson_of_google_gke_backup_backup_plan
        (google_gke_backup_backup_plan ?deactivated ?description ?id
           ?labels ?project ~backup_config ~backup_schedule
           ~retention_policy ?timeouts ~cluster ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?deactivated ?description ?id ?labels
    ?project ?(backup_config = []) ?(backup_schedule = [])
    ?(retention_policy = []) ?timeouts ~cluster ~location ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?deactivated ?description ?id ?labels ?project
      ~backup_config ~backup_schedule ~retention_policy ?timeouts
      ~cluster ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
