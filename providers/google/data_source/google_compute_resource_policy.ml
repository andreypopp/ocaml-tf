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
  availability_domain_count : float prop;
  collocation : string prop;
  vm_count : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_vm_count in
         ("vm_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collocation in
         ("collocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_availability_domain_count
         in
         ("availability_domain_count", arg) :: bnds
       in
       `Assoc bnds
    : group_placement_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group_placement_policy

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

type instance_schedule_policy = {
  expiration_time : string prop;
  start_time : string prop;
  time_zone : string prop;
  vm_start_schedule :
    instance_schedule_policy__vm_start_schedule list;
      [@default []] [@yojson_drop_default ( = )]
  vm_stop_schedule : instance_schedule_policy__vm_stop_schedule list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_vm_stop_schedule then bnds
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
         if [] = v_vm_start_schedule then bnds
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
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_time
         in
         ("expiration_time", arg) :: bnds
       in
       `Assoc bnds
    : instance_schedule_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_schedule_policy

[@@@deriving.end]

type snapshot_schedule_policy__snapshot_properties = {
  chain_name : string prop;
  guest_flush : bool prop;
  labels : (string * string prop) list;
  storage_locations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_storage_locations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_storage_locations
           in
           let bnd = "storage_locations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_guest_flush in
         ("guest_flush", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_chain_name in
         ("chain_name", arg) :: bnds
       in
       `Assoc bnds
    : snapshot_schedule_policy__snapshot_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_schedule_policy__snapshot_properties

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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_day_of_weeks then bnds
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

type snapshot_schedule_policy__schedule = {
  daily_schedule :
    snapshot_schedule_policy__schedule__daily_schedule list;
      [@default []] [@yojson_drop_default ( = )]
  hourly_schedule :
    snapshot_schedule_policy__schedule__hourly_schedule list;
      [@default []] [@yojson_drop_default ( = )]
  weekly_schedule :
    snapshot_schedule_policy__schedule__weekly_schedule list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_weekly_schedule then bnds
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
         if [] = v_hourly_schedule then bnds
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
         if [] = v_daily_schedule then bnds
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

type snapshot_schedule_policy__retention_policy = {
  max_retention_days : float prop;
  on_source_disk_delete : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_on_source_disk_delete
         in
         ("on_source_disk_delete", arg) :: bnds
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

type snapshot_schedule_policy = {
  retention_policy : snapshot_schedule_policy__retention_policy list;
      [@default []] [@yojson_drop_default ( = )]
  schedule : snapshot_schedule_policy__schedule list;
      [@default []] [@yojson_drop_default ( = )]
  snapshot_properties :
    snapshot_schedule_policy__snapshot_properties list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_snapshot_properties then bnds
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
         if [] = v_schedule then bnds
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
         if [] = v_retention_policy then bnds
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

type google_compute_resource_policy = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_resource_policy) -> ()

let yojson_of_google_compute_resource_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_compute_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_resource_policy

[@@@deriving.end]

let google_compute_resource_policy ?id ?project ?region ~name () :
    google_compute_resource_policy =
  { id; name; project; region }

type t = {
  tf_name : string;
  description : string prop;
  disk_consistency_group_policy :
    disk_consistency_group_policy list prop;
  group_placement_policy : group_placement_policy list prop;
  id : string prop;
  instance_schedule_policy : instance_schedule_policy list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  snapshot_schedule_policy : snapshot_schedule_policy list prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       disk_consistency_group_policy =
         Prop.computed __type __id "disk_consistency_group_policy";
       group_placement_policy =
         Prop.computed __type __id "group_placement_policy";
       id = Prop.computed __type __id "id";
       instance_schedule_policy =
         Prop.computed __type __id "instance_schedule_policy";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       snapshot_schedule_policy =
         Prop.computed __type __id "snapshot_schedule_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_resource_policy
        (google_compute_resource_policy ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
