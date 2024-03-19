(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type restore_config__cluster_resource_restore_scope__excluded_group_kinds

val restore_config__cluster_resource_restore_scope__excluded_group_kinds :
  ?resource_group:string prop ->
  ?resource_kind:string prop ->
  unit ->
  restore_config__cluster_resource_restore_scope__excluded_group_kinds

type restore_config__cluster_resource_restore_scope__selected_group_kinds

val restore_config__cluster_resource_restore_scope__selected_group_kinds :
  ?resource_group:string prop ->
  ?resource_kind:string prop ->
  unit ->
  restore_config__cluster_resource_restore_scope__selected_group_kinds

type restore_config__cluster_resource_restore_scope

val restore_config__cluster_resource_restore_scope :
  ?all_group_kinds:bool prop ->
  ?no_group_kinds:bool prop ->
  excluded_group_kinds:
    restore_config__cluster_resource_restore_scope__excluded_group_kinds
    list ->
  selected_group_kinds:
    restore_config__cluster_resource_restore_scope__selected_group_kinds
    list ->
  unit ->
  restore_config__cluster_resource_restore_scope

type restore_config__excluded_namespaces

val restore_config__excluded_namespaces :
  namespaces:string prop list ->
  unit ->
  restore_config__excluded_namespaces

type restore_config__selected_applications__namespaced_names

val restore_config__selected_applications__namespaced_names :
  name:string prop ->
  namespace:string prop ->
  unit ->
  restore_config__selected_applications__namespaced_names

type restore_config__selected_applications

val restore_config__selected_applications :
  namespaced_names:
    restore_config__selected_applications__namespaced_names list ->
  unit ->
  restore_config__selected_applications

type restore_config__selected_namespaces

val restore_config__selected_namespaces :
  namespaces:string prop list ->
  unit ->
  restore_config__selected_namespaces

type restore_config__transformation_rules__field_actions

val restore_config__transformation_rules__field_actions :
  ?from_path:string prop ->
  ?path:string prop ->
  ?value:string prop ->
  op:string prop ->
  unit ->
  restore_config__transformation_rules__field_actions

type restore_config__transformation_rules__resource_filter__group_kinds

val restore_config__transformation_rules__resource_filter__group_kinds :
  ?resource_group:string prop ->
  ?resource_kind:string prop ->
  unit ->
  restore_config__transformation_rules__resource_filter__group_kinds

type restore_config__transformation_rules__resource_filter

val restore_config__transformation_rules__resource_filter :
  ?json_path:string prop ->
  ?namespaces:string prop list ->
  group_kinds:
    restore_config__transformation_rules__resource_filter__group_kinds
    list ->
  unit ->
  restore_config__transformation_rules__resource_filter

type restore_config__transformation_rules

val restore_config__transformation_rules :
  ?description:string prop ->
  field_actions:
    restore_config__transformation_rules__field_actions list ->
  resource_filter:
    restore_config__transformation_rules__resource_filter list ->
  unit ->
  restore_config__transformation_rules

type restore_config

val restore_config :
  ?all_namespaces:bool prop ->
  ?cluster_resource_conflict_policy:string prop ->
  ?namespaced_resource_restore_mode:string prop ->
  ?no_namespaces:bool prop ->
  ?volume_data_restore_policy:string prop ->
  cluster_resource_restore_scope:
    restore_config__cluster_resource_restore_scope list ->
  excluded_namespaces:restore_config__excluded_namespaces list ->
  selected_applications:restore_config__selected_applications list ->
  selected_namespaces:restore_config__selected_namespaces list ->
  transformation_rules:restore_config__transformation_rules list ->
  unit ->
  restore_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_backup_restore_plan

val google_gke_backup_restore_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  backup_plan:string prop ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  restore_config:restore_config list ->
  unit ->
  google_gke_backup_restore_plan

val yojson_of_google_gke_backup_restore_plan :
  google_gke_backup_restore_plan -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  backup_plan:string prop ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  restore_config:restore_config list ->
  string ->
  t
