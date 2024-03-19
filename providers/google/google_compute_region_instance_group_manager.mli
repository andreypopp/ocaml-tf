(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type status__version_target = {
  is_reached : bool prop;  (** is_reached *)
}

type status__stateful__per_instance_configs = {
  all_effective : bool prop;  (** all_effective *)
}

type status__stateful = {
  has_stateful_config : bool prop;  (** has_stateful_config *)
  per_instance_configs : status__stateful__per_instance_configs list;
      (** per_instance_configs *)
}

type status__all_instances_config = {
  effective : bool prop;  (** effective *)
}

type status = {
  all_instances_config : status__all_instances_config list;
      (** all_instances_config *)
  is_stable : bool prop;  (** is_stable *)
  stateful : status__stateful list;  (** stateful *)
  version_target : status__version_target list;  (** version_target *)
}

type all_instances_config

val all_instances_config :
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  unit ->
  all_instances_config

type auto_healing_policies

val auto_healing_policies :
  health_check:string prop ->
  initial_delay_sec:float prop ->
  unit ->
  auto_healing_policies

type instance_lifecycle_policy

val instance_lifecycle_policy :
  ?default_action_on_failure:string prop ->
  ?force_update_on_repair:string prop ->
  unit ->
  instance_lifecycle_policy

type named_port

val named_port :
  name:string prop -> port:float prop -> unit -> named_port

type stateful_disk

val stateful_disk :
  ?delete_rule:string prop ->
  device_name:string prop ->
  unit ->
  stateful_disk

type stateful_external_ip

val stateful_external_ip :
  ?delete_rule:string prop ->
  ?interface_name:string prop ->
  unit ->
  stateful_external_ip

type stateful_internal_ip

val stateful_internal_ip :
  ?delete_rule:string prop ->
  ?interface_name:string prop ->
  unit ->
  stateful_internal_ip

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type update_policy

val update_policy :
  ?instance_redistribution_type:string prop ->
  ?max_surge_fixed:float prop ->
  ?max_surge_percent:float prop ->
  ?max_unavailable_fixed:float prop ->
  ?max_unavailable_percent:float prop ->
  ?most_disruptive_allowed_action:string prop ->
  ?replacement_method:string prop ->
  minimal_action:string prop ->
  type_:string prop ->
  unit ->
  update_policy

type version__target_size

val version__target_size :
  ?fixed:float prop ->
  ?percent:float prop ->
  unit ->
  version__target_size

type version

val version :
  ?name:string prop ->
  instance_template:string prop ->
  target_size:version__target_size list ->
  unit ->
  version

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
  ?timeouts:timeouts ->
  base_instance_name:string prop ->
  name:string prop ->
  all_instances_config:all_instances_config list ->
  auto_healing_policies:auto_healing_policies list ->
  instance_lifecycle_policy:instance_lifecycle_policy list ->
  named_port:named_port list ->
  stateful_disk:stateful_disk list ->
  stateful_external_ip:stateful_external_ip list ->
  stateful_internal_ip:stateful_internal_ip list ->
  update_policy:update_policy list ->
  version:version list ->
  unit ->
  google_compute_region_instance_group_manager

val yojson_of_google_compute_region_instance_group_manager :
  google_compute_region_instance_group_manager -> json

(** RESOURCE REGISTRATION *)

type t = private {
  base_instance_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  distribution_policy_target_shape : string prop;
  distribution_policy_zones : string list prop;
  fingerprint : string prop;
  id : string prop;
  instance_group : string prop;
  list_managed_instances_results : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  status : status list prop;
  target_pools : string list prop;
  target_size : float prop;
  wait_for_instances : bool prop;
  wait_for_instances_status : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  base_instance_name:string prop ->
  name:string prop ->
  all_instances_config:all_instances_config list ->
  auto_healing_policies:auto_healing_policies list ->
  instance_lifecycle_policy:instance_lifecycle_policy list ->
  named_port:named_port list ->
  stateful_disk:stateful_disk list ->
  stateful_external_ip:stateful_external_ip list ->
  stateful_internal_ip:stateful_internal_ip list ->
  update_policy:update_policy list ->
  version:version list ->
  string ->
  t
