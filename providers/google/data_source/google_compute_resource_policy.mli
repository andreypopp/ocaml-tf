(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type disk_consistency_group_policy = {
  enabled : bool prop;  (** enabled *)
}

type group_placement_policy = {
  availability_domain_count : float prop;
      (** availability_domain_count *)
  collocation : string prop;  (** collocation *)
  vm_count : float prop;  (** vm_count *)
}

type instance_schedule_policy__vm_stop_schedule = {
  schedule : string prop;  (** schedule *)
}

type instance_schedule_policy__vm_start_schedule = {
  schedule : string prop;  (** schedule *)
}

type instance_schedule_policy = {
  expiration_time : string prop;  (** expiration_time *)
  start_time : string prop;  (** start_time *)
  time_zone : string prop;  (** time_zone *)
  vm_start_schedule :
    instance_schedule_policy__vm_start_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vm_start_schedule *)
  vm_stop_schedule : instance_schedule_policy__vm_stop_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vm_stop_schedule *)
}

type snapshot_schedule_policy__snapshot_properties = {
  chain_name : string prop;  (** chain_name *)
  guest_flush : bool prop;  (** guest_flush *)
  labels : string prop Tf_core.assoc;  (** labels *)
  storage_locations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** storage_locations *)
}

type snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks = {
  day : string prop;  (** day *)
  start_time : string prop;  (** start_time *)
}

type snapshot_schedule_policy__schedule__weekly_schedule = {
  day_of_weeks :
    snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** day_of_weeks *)
}

type snapshot_schedule_policy__schedule__hourly_schedule = {
  hours_in_cycle : float prop;  (** hours_in_cycle *)
  start_time : string prop;  (** start_time *)
}

type snapshot_schedule_policy__schedule__daily_schedule = {
  days_in_cycle : float prop;  (** days_in_cycle *)
  start_time : string prop;  (** start_time *)
}

type snapshot_schedule_policy__schedule = {
  daily_schedule :
    snapshot_schedule_policy__schedule__daily_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** daily_schedule *)
  hourly_schedule :
    snapshot_schedule_policy__schedule__hourly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hourly_schedule *)
  weekly_schedule :
    snapshot_schedule_policy__schedule__weekly_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** weekly_schedule *)
}

type snapshot_schedule_policy__retention_policy = {
  max_retention_days : float prop;  (** max_retention_days *)
  on_source_disk_delete : string prop;  (** on_source_disk_delete *)
}

type snapshot_schedule_policy = {
  retention_policy : snapshot_schedule_policy__retention_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** retention_policy *)
  schedule : snapshot_schedule_policy__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** schedule *)
  snapshot_properties :
    snapshot_schedule_policy__snapshot_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** snapshot_properties *)
}

type google_compute_resource_policy

val google_compute_resource_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_compute_resource_policy

val yojson_of_google_compute_resource_policy :
  google_compute_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
