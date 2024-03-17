(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_backup_restore_plan__restore_config__cluster_resource_restore_scope__excluded_group_kinds

type google_gke_backup_restore_plan__restore_config__cluster_resource_restore_scope__selected_group_kinds

type google_gke_backup_restore_plan__restore_config__cluster_resource_restore_scope

type google_gke_backup_restore_plan__restore_config__excluded_namespaces

type google_gke_backup_restore_plan__restore_config__selected_applications__namespaced_names

type google_gke_backup_restore_plan__restore_config__selected_applications

type google_gke_backup_restore_plan__restore_config__selected_namespaces

type google_gke_backup_restore_plan__restore_config__transformation_rules__field_actions

type google_gke_backup_restore_plan__restore_config__transformation_rules__resource_filter__group_kinds

type google_gke_backup_restore_plan__restore_config__transformation_rules__resource_filter

type google_gke_backup_restore_plan__restore_config__transformation_rules

type google_gke_backup_restore_plan__restore_config
type google_gke_backup_restore_plan__timeouts
type google_gke_backup_restore_plan

type t = private {
  backup_plan : string prop;
  cluster : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

val google_gke_backup_restore_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_gke_backup_restore_plan__timeouts ->
  backup_plan:string prop ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  restore_config:google_gke_backup_restore_plan__restore_config list ->
  string ->
  t
