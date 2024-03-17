(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_backup_backup_plan__backup_config__encryption_key

type google_gke_backup_backup_plan__backup_config__selected_applications__namespaced_names

type google_gke_backup_backup_plan__backup_config__selected_applications

type google_gke_backup_backup_plan__backup_config__selected_namespaces
type google_gke_backup_backup_plan__backup_config
type google_gke_backup_backup_plan__backup_schedule
type google_gke_backup_backup_plan__retention_policy
type google_gke_backup_backup_plan__timeouts
type google_gke_backup_backup_plan

val google_gke_backup_backup_plan :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_gke_backup_backup_plan__timeouts ->
  cluster:string ->
  location:string ->
  name:string ->
  backup_config:google_gke_backup_backup_plan__backup_config list ->
  backup_schedule:google_gke_backup_backup_plan__backup_schedule list ->
  retention_policy:
    google_gke_backup_backup_plan__retention_policy list ->
  string ->
  unit
