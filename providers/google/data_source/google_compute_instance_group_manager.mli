(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type all_instances_config = {
  labels : (string * string prop) list;  (** labels *)
  metadata : (string * string prop) list;  (** metadata *)
}

type auto_healing_policies = {
  health_check : string prop;  (** health_check *)
  initial_delay_sec : float prop;  (** initial_delay_sec *)
}

type instance_lifecycle_policy = {
  default_action_on_failure : string prop;
      (** default_action_on_failure *)
  force_update_on_repair : string prop;  (** force_update_on_repair *)
}

type named_port = {
  name : string prop;  (** name *)
  port : float prop;  (** port *)
}

type stateful_disk = {
  delete_rule : string prop;  (** delete_rule *)
  device_name : string prop;  (** device_name *)
}

type stateful_external_ip = {
  delete_rule : string prop;  (** delete_rule *)
  interface_name : string prop;  (** interface_name *)
}

type stateful_internal_ip = {
  delete_rule : string prop;  (** delete_rule *)
  interface_name : string prop;  (** interface_name *)
}

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

type update_policy = {
  max_surge_fixed : float prop;  (** max_surge_fixed *)
  max_surge_percent : float prop;  (** max_surge_percent *)
  max_unavailable_fixed : float prop;  (** max_unavailable_fixed *)
  max_unavailable_percent : float prop;
      (** max_unavailable_percent *)
  minimal_action : string prop;  (** minimal_action *)
  most_disruptive_allowed_action : string prop;
      (** most_disruptive_allowed_action *)
  replacement_method : string prop;  (** replacement_method *)
  type_ : string prop; [@key "type"]  (** type *)
}

type version__target_size = {
  fixed : float prop;  (** fixed *)
  percent : float prop;  (** percent *)
}

type version = {
  instance_template : string prop;  (** instance_template *)
  name : string prop;  (** name *)
  target_size : version__target_size list;  (** target_size *)
}

type google_compute_instance_group_manager

val google_compute_instance_group_manager :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  unit ->
  google_compute_instance_group_manager

val yojson_of_google_compute_instance_group_manager :
  google_compute_instance_group_manager -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  all_instances_config : all_instances_config list prop;
  auto_healing_policies : auto_healing_policies list prop;
  base_instance_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  instance_group : string prop;
  instance_lifecycle_policy : instance_lifecycle_policy list prop;
  list_managed_instances_results : string prop;
  name : string prop;
  named_port : named_port list prop;
  operation : string prop;
  project : string prop;
  self_link : string prop;
  stateful_disk : stateful_disk list prop;
  stateful_external_ip : stateful_external_ip list prop;
  stateful_internal_ip : stateful_internal_ip list prop;
  status : status list prop;
  target_pools : string list prop;
  target_size : float prop;
  update_policy : update_policy list prop;
  version : version list prop;
  wait_for_instances : bool prop;
  wait_for_instances_status : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
