(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type disk_consistency_group_policy = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_consistency_group_policy) -> ()

let yojson_of_disk_consistency_group_policy =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : disk_consistency_group_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_consistency_group_policy

[@@@deriving.end]

type group_placement_policy = {
  availability_domain_count : float prop option; [@option]
  collocation : string prop option; [@option]
  vm_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group_placement_policy) -> ()

let yojson_of_group_placement_policy =
  (function
   | {
       availability_domain_count = v_availability_domain_count;
       collocation = v_collocation;
       vm_count = v_vm_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vm_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_domain_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "availability_domain_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : group_placement_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group_placement_policy

[@@@deriving.end]

type instance_schedule_policy__vm_start_schedule = {
  schedule : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_schedule_policy__vm_start_schedule) -> ()

let yojson_of_instance_schedule_policy__vm_start_schedule =
  (function
   | { schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       `Assoc bnds
    : instance_schedule_policy__vm_start_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_schedule_policy__vm_start_schedule

[@@@deriving.end]

type instance_schedule_policy__vm_stop_schedule = {
  schedule : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_schedule_policy__vm_stop_schedule) -> ()

let yojson_of_instance_schedule_policy__vm_stop_schedule =
  (function
   | { schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       `Assoc bnds
    : instance_schedule_policy__vm_stop_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_schedule_policy__vm_stop_schedule

[@@@deriving.end]

type instance_schedule_policy = {
  expiration_time : string prop option; [@option]
  start_time : string prop option; [@option]
  time_zone : string prop;
  vm_start_schedule :
    instance_schedule_policy__vm_start_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vm_stop_schedule : instance_schedule_policy__vm_stop_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_schedule_policy) -> ()

let yojson_of_instance_schedule_policy =
  (function
   | {
       expiration_time = v_expiration_time;
       start_time = v_start_time;
       time_zone = v_time_zone;
       vm_start_schedule = v_vm_start_schedule;
       vm_stop_schedule = v_vm_stop_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vm_stop_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_schedule_policy__vm_stop_schedule)
               v_vm_stop_schedule
           in
           let bnd = "vm_stop_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vm_start_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_schedule_policy__vm_start_schedule)
               v_vm_start_schedule
           in
           let bnd = "vm_start_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
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
         match v_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_schedule_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_schedule_policy

[@@@deriving.end]

type snapshot_schedule_policy__retention_policy = {
  max_retention_days : float prop;
  on_source_disk_delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_schedule_policy__retention_policy) -> ()

let yojson_of_snapshot_schedule_policy__retention_policy =
  (function
   | {
       max_retention_days = v_max_retention_days;
       on_source_disk_delete = v_on_source_disk_delete;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_on_source_disk_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_source_disk_delete", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_retention_days
         in
         ("max_retention_days", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__retention_policy

[@@@deriving.end]

type snapshot_schedule_policy__schedule__daily_schedule = {
  days_in_cycle : float prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : snapshot_schedule_policy__schedule__daily_schedule) -> ()

let yojson_of_snapshot_schedule_policy__schedule__daily_schedule =
  (function
   | { days_in_cycle = v_days_in_cycle; start_time = v_start_time }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days_in_cycle in
         ("days_in_cycle", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__schedule__daily_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__schedule__daily_schedule

[@@@deriving.end]

type snapshot_schedule_policy__schedule__hourly_schedule = {
  hours_in_cycle : float prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : snapshot_schedule_policy__schedule__hourly_schedule) -> ()

let yojson_of_snapshot_schedule_policy__schedule__hourly_schedule =
  (function
   | { hours_in_cycle = v_hours_in_cycle; start_time = v_start_time }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours_in_cycle in
         ("hours_in_cycle", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__schedule__hourly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__schedule__hourly_schedule

[@@@deriving.end]

type snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks = {
  day : string prop;
  start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks) ->
  ()

let yojson_of_snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    =
  (function
   | { day = v_day; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks

[@@@deriving.end]

type snapshot_schedule_policy__schedule__weekly_schedule = {
  day_of_weeks :
    snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : snapshot_schedule_policy__schedule__weekly_schedule) -> ()

let yojson_of_snapshot_schedule_policy__schedule__weekly_schedule =
  (function
   | { day_of_weeks = v_day_of_weeks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_day_of_weeks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks)
               v_day_of_weeks
           in
           let bnd = "day_of_weeks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__schedule__weekly_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__schedule__weekly_schedule

[@@@deriving.end]

type snapshot_schedule_policy__schedule = {
  daily_schedule :
    snapshot_schedule_policy__schedule__daily_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hourly_schedule :
    snapshot_schedule_policy__schedule__hourly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weekly_schedule :
    snapshot_schedule_policy__schedule__weekly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_schedule_policy__schedule) -> ()

let yojson_of_snapshot_schedule_policy__schedule =
  (function
   | {
       daily_schedule = v_daily_schedule;
       hourly_schedule = v_hourly_schedule;
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
                yojson_of_snapshot_schedule_policy__schedule__weekly_schedule)
               v_weekly_schedule
           in
           let bnd = "weekly_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hourly_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_schedule_policy__schedule__hourly_schedule)
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
                yojson_of_snapshot_schedule_policy__schedule__daily_schedule)
               v_daily_schedule
           in
           let bnd = "daily_schedule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__schedule

[@@@deriving.end]

type snapshot_schedule_policy__snapshot_properties = {
  chain_name : string prop option; [@option]
  guest_flush : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  storage_locations : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_schedule_policy__snapshot_properties) -> ()

let yojson_of_snapshot_schedule_policy__snapshot_properties =
  (function
   | {
       chain_name = v_chain_name;
       guest_flush = v_guest_flush;
       labels = v_labels;
       storage_locations = v_storage_locations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "storage_locations", arg in
             bnd :: bnds
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
         match v_guest_flush with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "guest_flush", arg in
             bnd :: bnds
       in
       let bnds =
         match v_chain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__snapshot_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__snapshot_properties

[@@@deriving.end]

type snapshot_schedule_policy = {
  retention_policy : snapshot_schedule_policy__retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule : snapshot_schedule_policy__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot_properties :
    snapshot_schedule_policy__snapshot_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_schedule_policy) -> ()

let yojson_of_snapshot_schedule_policy =
  (function
   | {
       retention_policy = v_retention_policy;
       schedule = v_schedule;
       snapshot_properties = v_snapshot_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot_properties then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_schedule_policy__snapshot_properties)
               v_snapshot_properties
           in
           let bnd = "snapshot_properties", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_schedule_policy__schedule)
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_snapshot_schedule_policy__retention_policy)
               v_retention_policy
           in
           let bnd = "retention_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy

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

type google_compute_resource_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  disk_consistency_group_policy : disk_consistency_group_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  group_placement_policy : group_placement_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_schedule_policy : instance_schedule_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot_schedule_policy : snapshot_schedule_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_resource_policy) -> ()

let yojson_of_google_compute_resource_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       disk_consistency_group_policy =
         v_disk_consistency_group_policy;
       group_placement_policy = v_group_placement_policy;
       instance_schedule_policy = v_instance_schedule_policy;
       snapshot_schedule_policy = v_snapshot_schedule_policy;
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
         if Stdlib.( = ) [] v_snapshot_schedule_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_snapshot_schedule_policy)
               v_snapshot_schedule_policy
           in
           let bnd = "snapshot_schedule_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_schedule_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_schedule_policy)
               v_instance_schedule_policy
           in
           let bnd = "instance_schedule_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_group_placement_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_group_placement_policy)
               v_group_placement_policy
           in
           let bnd = "group_placement_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_consistency_group_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk_consistency_group_policy)
               v_disk_consistency_group_policy
           in
           let bnd = "disk_consistency_group_policy", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_resource_policy

[@@@deriving.end]

let disk_consistency_group_policy ~enabled () :
    disk_consistency_group_policy =
  { enabled }

let group_placement_policy ?availability_domain_count ?collocation
    ?vm_count () : group_placement_policy =
  { availability_domain_count; collocation; vm_count }

let instance_schedule_policy__vm_start_schedule ~schedule () :
    instance_schedule_policy__vm_start_schedule =
  { schedule }

let instance_schedule_policy__vm_stop_schedule ~schedule () :
    instance_schedule_policy__vm_stop_schedule =
  { schedule }

let instance_schedule_policy ?expiration_time ?start_time
    ?(vm_start_schedule = []) ?(vm_stop_schedule = []) ~time_zone ()
    : instance_schedule_policy =
  {
    expiration_time;
    start_time;
    time_zone;
    vm_start_schedule;
    vm_stop_schedule;
  }

let snapshot_schedule_policy__retention_policy ?on_source_disk_delete
    ~max_retention_days () :
    snapshot_schedule_policy__retention_policy =
  { max_retention_days; on_source_disk_delete }

let snapshot_schedule_policy__schedule__daily_schedule ~days_in_cycle
    ~start_time () :
    snapshot_schedule_policy__schedule__daily_schedule =
  { days_in_cycle; start_time }

let snapshot_schedule_policy__schedule__hourly_schedule
    ~hours_in_cycle ~start_time () :
    snapshot_schedule_policy__schedule__hourly_schedule =
  { hours_in_cycle; start_time }

let snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    ~day ~start_time () :
    snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    =
  { day; start_time }

let snapshot_schedule_policy__schedule__weekly_schedule ~day_of_weeks
    () : snapshot_schedule_policy__schedule__weekly_schedule =
  { day_of_weeks }

let snapshot_schedule_policy__schedule ?(daily_schedule = [])
    ?(hourly_schedule = []) ?(weekly_schedule = []) () :
    snapshot_schedule_policy__schedule =
  { daily_schedule; hourly_schedule; weekly_schedule }

let snapshot_schedule_policy__snapshot_properties ?chain_name
    ?guest_flush ?labels ?storage_locations () :
    snapshot_schedule_policy__snapshot_properties =
  { chain_name; guest_flush; labels; storage_locations }

let snapshot_schedule_policy ?(retention_policy = [])
    ?(snapshot_properties = []) ~schedule () :
    snapshot_schedule_policy =
  { retention_policy; schedule; snapshot_properties }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_resource_policy ?description ?id ?project ?region
    ?(disk_consistency_group_policy = [])
    ?(group_placement_policy = []) ?(instance_schedule_policy = [])
    ?(snapshot_schedule_policy = []) ?timeouts ~name () :
    google_compute_resource_policy =
  {
    description;
    id;
    name;
    project;
    region;
    disk_consistency_group_policy;
    group_placement_policy;
    instance_schedule_policy;
    snapshot_schedule_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?region
    ?(disk_consistency_group_policy = [])
    ?(group_placement_policy = []) ?(instance_schedule_policy = [])
    ?(snapshot_schedule_policy = []) ?timeouts ~name __id =
  let __type = "google_compute_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_resource_policy
        (google_compute_resource_policy ?description ?id ?project
           ?region ~disk_consistency_group_policy
           ~group_placement_policy ~instance_schedule_policy
           ~snapshot_schedule_policy ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region
    ?(disk_consistency_group_policy = [])
    ?(group_placement_policy = []) ?(instance_schedule_policy = [])
    ?(snapshot_schedule_policy = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region
      ~disk_consistency_group_policy ~group_placement_policy
      ~instance_schedule_policy ~snapshot_schedule_policy ?timeouts
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
