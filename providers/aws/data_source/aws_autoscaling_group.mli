(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_maintenance_policy = {
  max_healthy_percentage : float prop;  (** max_healthy_percentage *)
  min_healthy_percentage : float prop;  (** min_healthy_percentage *)
}

type launch_template = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  version : string prop;  (** version *)
}

type mixed_instances_policy__launch_template__override__launch_template_specification = {
  launch_template_id : string prop;  (** launch_template_id *)
  launch_template_name : string prop;  (** launch_template_name *)
  version : string prop;  (** version *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__memory_mib = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count = {
  max : float prop;  (** max *)
  min : float prop;  (** min *)
}

type mixed_instances_policy__launch_template__override__instance_requirements = {
  accelerator_count :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_count *)
  accelerator_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_manufacturers *)
  accelerator_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_names *)
  accelerator_total_memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_total_memory_mib *)
  accelerator_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** accelerator_types *)
  allowed_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_instance_types *)
  bare_metal : string prop;  (** bare_metal *)
  baseline_ebs_bandwidth_mbps :
    mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** baseline_ebs_bandwidth_mbps *)
  burstable_performance : string prop;  (** burstable_performance *)
  cpu_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cpu_manufacturers *)
  excluded_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_instance_types *)
  instance_generations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_generations *)
  local_storage : string prop;  (** local_storage *)
  local_storage_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_storage_types *)
  max_spot_price_as_percentage_of_optimal_on_demand_price :
    float prop;
      (** max_spot_price_as_percentage_of_optimal_on_demand_price *)
  memory_gib_per_vcpu :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** memory_gib_per_vcpu *)
  memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** memory_mib *)
  network_bandwidth_gbps :
    mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_bandwidth_gbps *)
  network_interface_count :
    mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_interface_count *)
  on_demand_max_price_percentage_over_lowest_price : float prop;
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool prop;
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float prop;
      (** spot_max_price_percentage_over_lowest_price *)
  total_local_storage_gb :
    mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** total_local_storage_gb *)
  vcpu_count :
    mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vcpu_count *)
}

type mixed_instances_policy__launch_template__override = {
  instance_requirements :
    mixed_instances_policy__launch_template__override__instance_requirements
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_requirements *)
  instance_type : string prop;  (** instance_type *)
  launch_template_specification :
    mixed_instances_policy__launch_template__override__launch_template_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_template_specification *)
  weighted_capacity : string prop;  (** weighted_capacity *)
}

type mixed_instances_policy__launch_template__launch_template_specification = {
  launch_template_id : string prop;  (** launch_template_id *)
  launch_template_name : string prop;  (** launch_template_name *)
  version : string prop;  (** version *)
}

type mixed_instances_policy__launch_template = {
  launch_template_specification :
    mixed_instances_policy__launch_template__launch_template_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_template_specification *)
  override : mixed_instances_policy__launch_template__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** override *)
}

type mixed_instances_policy__instances_distribution = {
  on_demand_allocation_strategy : string prop;
      (** on_demand_allocation_strategy *)
  on_demand_base_capacity : float prop;
      (** on_demand_base_capacity *)
  on_demand_percentage_above_base_capacity : float prop;
      (** on_demand_percentage_above_base_capacity *)
  spot_allocation_strategy : string prop;
      (** spot_allocation_strategy *)
  spot_instance_pools : float prop;  (** spot_instance_pools *)
  spot_max_price : string prop;  (** spot_max_price *)
}

type mixed_instances_policy = {
  instances_distribution :
    mixed_instances_policy__instances_distribution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instances_distribution *)
  launch_template : mixed_instances_policy__launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** launch_template *)
}

type tag = {
  key : string prop;  (** key *)
  propagate_at_launch : bool prop;  (** propagate_at_launch *)
  value : string prop;  (** value *)
}

type traffic_source = {
  identifier : string prop;  (** identifier *)
  type_ : string prop; [@key "type"]  (** type *)
}

type warm_pool__instance_reuse_policy = {
  reuse_on_scale_in : bool prop;  (** reuse_on_scale_in *)
}

type warm_pool = {
  instance_reuse_policy : warm_pool__instance_reuse_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** instance_reuse_policy *)
  max_group_prepared_capacity : float prop;
      (** max_group_prepared_capacity *)
  min_size : float prop;  (** min_size *)
  pool_state : string prop;  (** pool_state *)
}

type aws_autoscaling_group

val aws_autoscaling_group :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_autoscaling_group

val yojson_of_aws_autoscaling_group : aws_autoscaling_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  default_cooldown : float prop;
  desired_capacity : float prop;
  desired_capacity_type : string prop;
  enabled_metrics : string list prop;
  health_check_grace_period : float prop;
  health_check_type : string prop;
  id : string prop;
  instance_maintenance_policy :
    instance_maintenance_policy list prop;
  launch_configuration : string prop;
  launch_template : launch_template list prop;
  load_balancers : string list prop;
  max_instance_lifetime : float prop;
  max_size : float prop;
  min_size : float prop;
  mixed_instances_policy : mixed_instances_policy list prop;
  name : string prop;
  new_instances_protected_from_scale_in : bool prop;
  placement_group : string prop;
  predicted_capacity : float prop;
  service_linked_role_arn : string prop;
  status : string prop;
  suspended_processes : string list prop;
  tag : tag list prop;
  target_group_arns : string list prop;
  termination_policies : string list prop;
  traffic_source : traffic_source list prop;
  vpc_zone_identifier : string prop;
  warm_pool : warm_pool list prop;
  warm_pool_size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
