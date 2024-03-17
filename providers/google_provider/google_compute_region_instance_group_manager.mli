(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_instance_group_manager__all_instances_config

type google_compute_region_instance_group_manager__auto_healing_policies

type google_compute_region_instance_group_manager__instance_lifecycle_policy

type google_compute_region_instance_group_manager__named_port
type google_compute_region_instance_group_manager__stateful_disk

type google_compute_region_instance_group_manager__stateful_external_ip

type google_compute_region_instance_group_manager__stateful_internal_ip

type google_compute_region_instance_group_manager__timeouts
type google_compute_region_instance_group_manager__update_policy

type google_compute_region_instance_group_manager__version__target_size

type google_compute_region_instance_group_manager__version

type google_compute_region_instance_group_manager__status__version_target = {
  is_reached : bool prop;  (** is_reached *)
}

type google_compute_region_instance_group_manager__status__stateful__per_instance_configs = {
  all_effective : bool prop;  (** all_effective *)
}

type google_compute_region_instance_group_manager__status__stateful = {
  has_stateful_config : bool prop;  (** has_stateful_config *)
  per_instance_configs :
    google_compute_region_instance_group_manager__status__stateful__per_instance_configs
    list;
      (** per_instance_configs *)
}

type google_compute_region_instance_group_manager__status__all_instances_config = {
  effective : bool prop;  (** effective *)
}

type google_compute_region_instance_group_manager__status = {
  all_instances_config :
    google_compute_region_instance_group_manager__status__all_instances_config
    list;
      (** all_instances_config *)
  is_stable : bool prop;  (** is_stable *)
  stateful :
    google_compute_region_instance_group_manager__status__stateful
    list;
      (** stateful *)
  version_target :
    google_compute_region_instance_group_manager__status__version_target
    list;
      (** version_target *)
}

type google_compute_region_instance_group_manager

val google_compute_region_instance_group_manager :
  ?description:string prop ->
  ?distribution_policy_target_shape:string prop ->
  ?distribution_policy_zones:string prop list ->
  ?id:string prop ->
  ?list_managed_instances_results:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?target_pools:string prop list ->
  ?target_size:float prop ->
  ?wait_for_instances:bool prop ->
  ?wait_for_instances_status:string prop ->
  ?timeouts:google_compute_region_instance_group_manager__timeouts ->
  base_instance_name:string prop ->
  name:string prop ->
  all_instances_config:
    google_compute_region_instance_group_manager__all_instances_config
    list ->
  auto_healing_policies:
    google_compute_region_instance_group_manager__auto_healing_policies
    list ->
  instance_lifecycle_policy:
    google_compute_region_instance_group_manager__instance_lifecycle_policy
    list ->
  named_port:
    google_compute_region_instance_group_manager__named_port list ->
  stateful_disk:
    google_compute_region_instance_group_manager__stateful_disk list ->
  stateful_external_ip:
    google_compute_region_instance_group_manager__stateful_external_ip
    list ->
  stateful_internal_ip:
    google_compute_region_instance_group_manager__stateful_internal_ip
    list ->
  update_policy:
    google_compute_region_instance_group_manager__update_policy list ->
  version:google_compute_region_instance_group_manager__version list ->
  string ->
  unit
