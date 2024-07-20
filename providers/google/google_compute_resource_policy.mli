(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type disk_consistency_group_policy

val disk_consistency_group_policy :
  enabled:bool prop -> unit -> disk_consistency_group_policy

type group_placement_policy

val group_placement_policy :
  ?availability_domain_count:float prop ->
  ?collocation:string prop ->
  ?vm_count:float prop ->
  unit ->
  group_placement_policy

type instance_schedule_policy__vm_start_schedule

val instance_schedule_policy__vm_start_schedule :
  schedule:string prop ->
  unit ->
  instance_schedule_policy__vm_start_schedule

type instance_schedule_policy__vm_stop_schedule

val instance_schedule_policy__vm_stop_schedule :
  schedule:string prop ->
  unit ->
  instance_schedule_policy__vm_stop_schedule

type instance_schedule_policy

val instance_schedule_policy :
  ?expiration_time:string prop ->
  ?start_time:string prop ->
  ?vm_start_schedule:instance_schedule_policy__vm_start_schedule list ->
  ?vm_stop_schedule:instance_schedule_policy__vm_stop_schedule list ->
  time_zone:string prop ->
  unit ->
  instance_schedule_policy

type snapshot_schedule_policy__retention_policy

val snapshot_schedule_policy__retention_policy :
  ?on_source_disk_delete:string prop ->
  max_retention_days:float prop ->
  unit ->
  snapshot_schedule_policy__retention_policy

type snapshot_schedule_policy__schedule__daily_schedule

val snapshot_schedule_policy__schedule__daily_schedule :
  days_in_cycle:float prop ->
  start_time:string prop ->
  unit ->
  snapshot_schedule_policy__schedule__daily_schedule

type snapshot_schedule_policy__schedule__hourly_schedule

val snapshot_schedule_policy__schedule__hourly_schedule :
  hours_in_cycle:float prop ->
  start_time:string prop ->
  unit ->
  snapshot_schedule_policy__schedule__hourly_schedule

type snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks

val snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks :
  day:string prop ->
  start_time:string prop ->
  unit ->
  snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks

type snapshot_schedule_policy__schedule__weekly_schedule

val snapshot_schedule_policy__schedule__weekly_schedule :
  day_of_weeks:
    snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks
    list ->
  unit ->
  snapshot_schedule_policy__schedule__weekly_schedule

type snapshot_schedule_policy__schedule

val snapshot_schedule_policy__schedule :
  ?daily_schedule:
    snapshot_schedule_policy__schedule__daily_schedule list ->
  ?hourly_schedule:
    snapshot_schedule_policy__schedule__hourly_schedule list ->
  ?weekly_schedule:
    snapshot_schedule_policy__schedule__weekly_schedule list ->
  unit ->
  snapshot_schedule_policy__schedule

type snapshot_schedule_policy__snapshot_properties

val snapshot_schedule_policy__snapshot_properties :
  ?chain_name:string prop ->
  ?guest_flush:bool prop ->
  ?labels:(string * string prop) list ->
  ?storage_locations:string prop list ->
  unit ->
  snapshot_schedule_policy__snapshot_properties

type snapshot_schedule_policy

val snapshot_schedule_policy :
  ?retention_policy:snapshot_schedule_policy__retention_policy list ->
  ?snapshot_properties:
    snapshot_schedule_policy__snapshot_properties list ->
  schedule:snapshot_schedule_policy__schedule list ->
  unit ->
  snapshot_schedule_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_resource_policy

val google_compute_resource_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?disk_consistency_group_policy:disk_consistency_group_policy list ->
  ?group_placement_policy:group_placement_policy list ->
  ?instance_schedule_policy:instance_schedule_policy list ->
  ?snapshot_schedule_policy:snapshot_schedule_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_resource_policy

val yojson_of_google_compute_resource_policy :
  google_compute_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?disk_consistency_group_policy:disk_consistency_group_policy list ->
  ?group_placement_policy:group_placement_policy list ->
  ?instance_schedule_policy:instance_schedule_policy list ->
  ?snapshot_schedule_policy:snapshot_schedule_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?disk_consistency_group_policy:disk_consistency_group_policy list ->
  ?group_placement_policy:group_placement_policy list ->
  ?instance_schedule_policy:instance_schedule_policy list ->
  ?snapshot_schedule_policy:snapshot_schedule_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
