(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type disk_consistency_group_policy = {
  enabled : bool prop;
      (** Enable disk consistency on the resource policy. *)
}
[@@deriving yojson_of]
(** Replication consistency group for asynchronous disk replication. *)

type group_placement_policy = {
  availability_domain_count : float prop option; [@option]
      (** The number of availability domains instances will be spread across. If two instances are in different
availability domain, they will not be put in the same low latency network *)
  collocation : string prop option; [@option]
      (** Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.
Specify 'COLLOCATED' to enable collocation. Can only be specified with 'vm_count'. If compute instances are created
with a COLLOCATED policy, then exactly 'vm_count' instances must be created at the same time with the resource policy
attached. Possible values: [COLLOCATED] *)
  vm_count : float prop option; [@option]
      (** Number of VMs in this placement group. Google does not recommend that you use this field
unless you use a compact policy and you want your policy to work only if it contains this
exact number of VMs. *)
}
[@@deriving yojson_of]
(** Resource policy for instances used for placement configuration. *)

type instance_schedule_policy__vm_start_schedule = {
  schedule : string prop;
      (** Specifies the frequency for the operation, using the unix-cron format. *)
}
[@@deriving yojson_of]
(** Specifies the schedule for starting instances. *)

type instance_schedule_policy__vm_stop_schedule = {
  schedule : string prop;
      (** Specifies the frequency for the operation, using the unix-cron format. *)
}
[@@deriving yojson_of]
(** Specifies the schedule for stopping instances. *)

type instance_schedule_policy = {
  expiration_time : string prop option; [@option]
      (** The expiration time of the schedule. The timestamp is an RFC3339 string. *)
  start_time : string prop option; [@option]
      (** The start time of the schedule. The timestamp is an RFC3339 string. *)
  time_zone : string prop;
      (** Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
from the tz database: http://en.wikipedia.org/wiki/Tz_database. *)
  vm_start_schedule :
    instance_schedule_policy__vm_start_schedule list;
  vm_stop_schedule : instance_schedule_policy__vm_stop_schedule list;
}
[@@deriving yojson_of]
(** Resource policy for scheduling instance operations. *)

type snapshot_schedule_policy__retention_policy = {
  max_retention_days : float prop;
      (** Maximum age of the snapshot that is allowed to be kept. *)
  on_source_disk_delete : string prop option; [@option]
      (** Specifies the behavior to apply to scheduled snapshots when
the source disk is deleted. Default value: KEEP_AUTO_SNAPSHOTS Possible values: [KEEP_AUTO_SNAPSHOTS, APPLY_RETENTION_POLICY] *)
}
[@@deriving yojson_of]
(** Retention policy applied to snapshots created by this resource policy. *)

type snapshot_schedule_policy__schedule__daily_schedule = {
  days_in_cycle : float prop;
      (** Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle. Days in cycle for snapshot schedule policy must be 1. *)
  start_time : string prop;
      (** This must be in UTC format that resolves to one of
00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example,
both 13:00-5 and 08:00 are valid. *)
}
[@@deriving yojson_of]
(** The policy will execute every nth day at the specified time. *)

type snapshot_schedule_policy__schedule__hourly_schedule = {
  hours_in_cycle : float prop;
      (** The number of hours between snapshots. *)
  start_time : string prop;
      (** Time within the window to start the operations.
It must be in an hourly format HH:MM,
where HH : [00-23] and MM : [00] GMT.
eg: 21:00 *)
}
[@@deriving yojson_of]
(** The policy will execute every nth hour starting at the specified time. *)

type snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks = {
  day : string prop;
      (** The day of the week to create the snapshot. e.g. MONDAY Possible values: [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  start_time : string prop;
      (** Time within the window to start the operations.
It must be in format HH:MM, where HH : [00-23] and MM : [00-00] GMT. *)
}
[@@deriving yojson_of]
(** May contain up to seven (one for each day of the week) snapshot times. *)

type snapshot_schedule_policy__schedule__weekly_schedule = {
  day_of_weeks :
    snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    list;
}
[@@deriving yojson_of]
(** Allows specifying a snapshot time for each day of the week. *)

type snapshot_schedule_policy__schedule = {
  daily_schedule :
    snapshot_schedule_policy__schedule__daily_schedule list;
  hourly_schedule :
    snapshot_schedule_policy__schedule__hourly_schedule list;
  weekly_schedule :
    snapshot_schedule_policy__schedule__weekly_schedule list;
}
[@@deriving yojson_of]
(** Contains one of an 'hourlySchedule', 'dailySchedule', or 'weeklySchedule'. *)

type snapshot_schedule_policy__snapshot_properties = {
  chain_name : string prop option; [@option]
      (** Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and comply
with RFC1035. *)
  guest_flush : bool prop option; [@option]
      (** Whether to perform a 'guest aware' snapshot. *)
  labels : (string * string prop) list option; [@option]
      (** A set of key-value pairs. *)
  storage_locations : string prop list option; [@option]
      (** Cloud Storage bucket location to store the auto snapshot
(regional or multi-regional) *)
}
[@@deriving yojson_of]
(** Properties with which the snapshots are created, such as labels. *)

type snapshot_schedule_policy = {
  retention_policy : snapshot_schedule_policy__retention_policy list;
  schedule : snapshot_schedule_policy__schedule list;
  snapshot_properties :
    snapshot_schedule_policy__snapshot_properties list;
}
[@@deriving yojson_of]
(** Policy for creating snapshots of persistent disks. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_resource_policy = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the resource, provided by the client when initially creating
the resource. The resource name must be 1-63 characters long, and comply
with RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])'? which means the
first character must be a lowercase letter, and all following characters
must be a dash, lowercase letter, or digit, except the last character,
which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where resource policy resides. *)
  disk_consistency_group_policy : disk_consistency_group_policy list;
  group_placement_policy : group_placement_policy list;
  instance_schedule_policy : instance_schedule_policy list;
  snapshot_schedule_policy : snapshot_schedule_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_resource_policy *)

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

let instance_schedule_policy ?expiration_time ?start_time ~time_zone
    ~vm_start_schedule ~vm_stop_schedule () :
    instance_schedule_policy =
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

let snapshot_schedule_policy__schedule ~daily_schedule
    ~hourly_schedule ~weekly_schedule () :
    snapshot_schedule_policy__schedule =
  { daily_schedule; hourly_schedule; weekly_schedule }

let snapshot_schedule_policy__snapshot_properties ?chain_name
    ?guest_flush ?labels ?storage_locations () :
    snapshot_schedule_policy__snapshot_properties =
  { chain_name; guest_flush; labels; storage_locations }

let snapshot_schedule_policy ~retention_policy ~schedule
    ~snapshot_properties () : snapshot_schedule_policy =
  { retention_policy; schedule; snapshot_properties }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_resource_policy ?description ?id ?project ?region
    ?timeouts ~name ~disk_consistency_group_policy
    ~group_placement_policy ~instance_schedule_policy
    ~snapshot_schedule_policy () : google_compute_resource_policy =
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
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?region ?timeouts ~name
    ~disk_consistency_group_policy ~group_placement_policy
    ~instance_schedule_policy ~snapshot_schedule_policy __id =
  let __type = "google_compute_resource_policy" in
  let __attrs =
    ({
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
           ?region ?timeouts ~name ~disk_consistency_group_policy
           ~group_placement_policy ~instance_schedule_policy
           ~snapshot_schedule_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region ?timeouts
    ~name ~disk_consistency_group_policy ~group_placement_policy
    ~instance_schedule_policy ~snapshot_schedule_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region ?timeouts ~name
      ~disk_consistency_group_policy ~group_placement_policy
      ~instance_schedule_policy ~snapshot_schedule_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
