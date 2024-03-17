(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_resource_policy__disk_consistency_group_policy
type google_compute_resource_policy__group_placement_policy

type google_compute_resource_policy__instance_schedule_policy__vm_start_schedule

type google_compute_resource_policy__instance_schedule_policy__vm_stop_schedule

type google_compute_resource_policy__instance_schedule_policy

type google_compute_resource_policy__snapshot_schedule_policy__retention_policy

type google_compute_resource_policy__snapshot_schedule_policy__schedule__daily_schedule

type google_compute_resource_policy__snapshot_schedule_policy__schedule__hourly_schedule

type google_compute_resource_policy__snapshot_schedule_policy__schedule__weekly_schedule__day_of_weeks

type google_compute_resource_policy__snapshot_schedule_policy__schedule__weekly_schedule

type google_compute_resource_policy__snapshot_schedule_policy__schedule

type google_compute_resource_policy__snapshot_schedule_policy__snapshot_properties

type google_compute_resource_policy__snapshot_schedule_policy
type google_compute_resource_policy__timeouts
type google_compute_resource_policy

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val google_compute_resource_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_resource_policy__timeouts ->
  name:string prop ->
  disk_consistency_group_policy:
    google_compute_resource_policy__disk_consistency_group_policy
    list ->
  group_placement_policy:
    google_compute_resource_policy__group_placement_policy list ->
  instance_schedule_policy:
    google_compute_resource_policy__instance_schedule_policy list ->
  snapshot_schedule_policy:
    google_compute_resource_policy__snapshot_schedule_policy list ->
  string ->
  t
