(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type initial_lifecycle_hook

val initial_lifecycle_hook :
  ?default_result:string prop ->
  ?heartbeat_timeout:float prop ->
  ?notification_metadata:string prop ->
  ?notification_target_arn:string prop ->
  ?role_arn:string prop ->
  lifecycle_transition:string prop ->
  name:string prop ->
  unit ->
  initial_lifecycle_hook

type instance_maintenance_policy

val instance_maintenance_policy :
  max_healthy_percentage:float prop ->
  min_healthy_percentage:float prop ->
  unit ->
  instance_maintenance_policy

type instance_refresh__preferences

val instance_refresh__preferences :
  ?auto_rollback:bool prop ->
  ?checkpoint_delay:string prop ->
  ?checkpoint_percentages:float prop list ->
  ?instance_warmup:string prop ->
  ?max_healthy_percentage:float prop ->
  ?min_healthy_percentage:float prop ->
  ?scale_in_protected_instances:string prop ->
  ?skip_matching:bool prop ->
  ?standby_instances:string prop ->
  unit ->
  instance_refresh__preferences

type instance_refresh

val instance_refresh :
  ?triggers:string prop list ->
  strategy:string prop ->
  preferences:instance_refresh__preferences list ->
  unit ->
  instance_refresh

type launch_template

val launch_template :
  ?id:string prop ->
  ?name:string prop ->
  ?version:string prop ->
  unit ->
  launch_template

type mixed_instances_policy__instances_distribution

val mixed_instances_policy__instances_distribution :
  ?on_demand_allocation_strategy:string prop ->
  ?on_demand_base_capacity:float prop ->
  ?on_demand_percentage_above_base_capacity:float prop ->
  ?spot_allocation_strategy:string prop ->
  ?spot_instance_pools:float prop ->
  ?spot_max_price:string prop ->
  unit ->
  mixed_instances_policy__instances_distribution

type mixed_instances_policy__launch_template__launch_template_specification

val mixed_instances_policy__launch_template__launch_template_specification :
  ?launch_template_id:string prop ->
  ?launch_template_name:string prop ->
  ?version:string prop ->
  unit ->
  mixed_instances_policy__launch_template__launch_template_specification

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count

val mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib

val mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib

type mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps

val mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps

type mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu

val mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu

type mixed_instances_policy__launch_template__override__instance_requirements__memory_mib

val mixed_instances_policy__launch_template__override__instance_requirements__memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__memory_mib

type mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps

val mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps

type mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count

val mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count

type mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb

val mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb

type mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count

val mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count

type mixed_instances_policy__launch_template__override__instance_requirements

val mixed_instances_policy__launch_template__override__instance_requirements :
  ?accelerator_manufacturers:string prop list ->
  ?accelerator_names:string prop list ->
  ?accelerator_types:string prop list ->
  ?allowed_instance_types:string prop list ->
  ?bare_metal:string prop ->
  ?burstable_performance:string prop ->
  ?cpu_manufacturers:string prop list ->
  ?excluded_instance_types:string prop list ->
  ?instance_generations:string prop list ->
  ?local_storage:string prop ->
  ?local_storage_types:string prop list ->
  ?on_demand_max_price_percentage_over_lowest_price:float prop ->
  ?require_hibernate_support:bool prop ->
  ?spot_max_price_percentage_over_lowest_price:float prop ->
  accelerator_count:
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    list ->
  accelerator_total_memory_mib:
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    list ->
  baseline_ebs_bandwidth_mbps:
    mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list ->
  memory_gib_per_vcpu:
    mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    list ->
  memory_mib:
    mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    list ->
  network_bandwidth_gbps:
    mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    list ->
  network_interface_count:
    mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    list ->
  total_local_storage_gb:
    mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    list ->
  vcpu_count:
    mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    list ->
  unit ->
  mixed_instances_policy__launch_template__override__instance_requirements

type mixed_instances_policy__launch_template__override__launch_template_specification

val mixed_instances_policy__launch_template__override__launch_template_specification :
  ?launch_template_id:string prop ->
  ?launch_template_name:string prop ->
  ?version:string prop ->
  unit ->
  mixed_instances_policy__launch_template__override__launch_template_specification

type mixed_instances_policy__launch_template__override

val mixed_instances_policy__launch_template__override :
  ?instance_type:string prop ->
  ?weighted_capacity:string prop ->
  instance_requirements:
    mixed_instances_policy__launch_template__override__instance_requirements
    list ->
  launch_template_specification:
    mixed_instances_policy__launch_template__override__launch_template_specification
    list ->
  unit ->
  mixed_instances_policy__launch_template__override

type mixed_instances_policy__launch_template

val mixed_instances_policy__launch_template :
  launch_template_specification:
    mixed_instances_policy__launch_template__launch_template_specification
    list ->
  override:mixed_instances_policy__launch_template__override list ->
  unit ->
  mixed_instances_policy__launch_template

type mixed_instances_policy

val mixed_instances_policy :
  instances_distribution:
    mixed_instances_policy__instances_distribution list ->
  launch_template:mixed_instances_policy__launch_template list ->
  unit ->
  mixed_instances_policy

type tag

val tag :
  key:string prop ->
  propagate_at_launch:bool prop ->
  value:string prop ->
  unit ->
  tag

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type traffic_source

val traffic_source :
  ?type_:string prop ->
  identifier:string prop ->
  unit ->
  traffic_source

type warm_pool__instance_reuse_policy

val warm_pool__instance_reuse_policy :
  ?reuse_on_scale_in:bool prop ->
  unit ->
  warm_pool__instance_reuse_policy

type warm_pool

val warm_pool :
  ?max_group_prepared_capacity:float prop ->
  ?min_size:float prop ->
  ?pool_state:string prop ->
  instance_reuse_policy:warm_pool__instance_reuse_policy list ->
  unit ->
  warm_pool

type aws_autoscaling_group

val aws_autoscaling_group :
  ?availability_zones:string prop list ->
  ?capacity_rebalance:bool prop ->
  ?context:string prop ->
  ?default_cooldown:float prop ->
  ?default_instance_warmup:float prop ->
  ?desired_capacity:float prop ->
  ?desired_capacity_type:string prop ->
  ?enabled_metrics:string prop list ->
  ?force_delete:bool prop ->
  ?force_delete_warm_pool:bool prop ->
  ?health_check_grace_period:float prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?ignore_failed_scaling_activities:bool prop ->
  ?launch_configuration:string prop ->
  ?load_balancers:string prop list ->
  ?max_instance_lifetime:float prop ->
  ?metrics_granularity:string prop ->
  ?min_elb_capacity:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?placement_group:string prop ->
  ?protect_from_scale_in:bool prop ->
  ?service_linked_role_arn:string prop ->
  ?suspended_processes:string prop list ->
  ?target_group_arns:string prop list ->
  ?termination_policies:string prop list ->
  ?vpc_zone_identifier:string prop list ->
  ?wait_for_capacity_timeout:string prop ->
  ?wait_for_elb_capacity:float prop ->
  ?timeouts:timeouts ->
  max_size:float prop ->
  min_size:float prop ->
  initial_lifecycle_hook:initial_lifecycle_hook list ->
  instance_maintenance_policy:instance_maintenance_policy list ->
  instance_refresh:instance_refresh list ->
  launch_template:launch_template list ->
  mixed_instances_policy:mixed_instances_policy list ->
  tag:tag list ->
  traffic_source:traffic_source list ->
  warm_pool:warm_pool list ->
  unit ->
  aws_autoscaling_group

val yojson_of_aws_autoscaling_group : aws_autoscaling_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  availability_zones : string list prop;
  capacity_rebalance : bool prop;
  context : string prop;
  default_cooldown : float prop;
  default_instance_warmup : float prop;
  desired_capacity : float prop;
  desired_capacity_type : string prop;
  enabled_metrics : string list prop;
  force_delete : bool prop;
  force_delete_warm_pool : bool prop;
  health_check_grace_period : float prop;
  health_check_type : string prop;
  id : string prop;
  ignore_failed_scaling_activities : bool prop;
  launch_configuration : string prop;
  load_balancers : string list prop;
  max_instance_lifetime : float prop;
  max_size : float prop;
  metrics_granularity : string prop;
  min_elb_capacity : float prop;
  min_size : float prop;
  name : string prop;
  name_prefix : string prop;
  placement_group : string prop;
  predicted_capacity : float prop;
  protect_from_scale_in : bool prop;
  service_linked_role_arn : string prop;
  suspended_processes : string list prop;
  target_group_arns : string list prop;
  termination_policies : string list prop;
  vpc_zone_identifier : string list prop;
  wait_for_capacity_timeout : string prop;
  wait_for_elb_capacity : float prop;
  warm_pool_size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zones:string prop list ->
  ?capacity_rebalance:bool prop ->
  ?context:string prop ->
  ?default_cooldown:float prop ->
  ?default_instance_warmup:float prop ->
  ?desired_capacity:float prop ->
  ?desired_capacity_type:string prop ->
  ?enabled_metrics:string prop list ->
  ?force_delete:bool prop ->
  ?force_delete_warm_pool:bool prop ->
  ?health_check_grace_period:float prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?ignore_failed_scaling_activities:bool prop ->
  ?launch_configuration:string prop ->
  ?load_balancers:string prop list ->
  ?max_instance_lifetime:float prop ->
  ?metrics_granularity:string prop ->
  ?min_elb_capacity:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?placement_group:string prop ->
  ?protect_from_scale_in:bool prop ->
  ?service_linked_role_arn:string prop ->
  ?suspended_processes:string prop list ->
  ?target_group_arns:string prop list ->
  ?termination_policies:string prop list ->
  ?vpc_zone_identifier:string prop list ->
  ?wait_for_capacity_timeout:string prop ->
  ?wait_for_elb_capacity:float prop ->
  ?timeouts:timeouts ->
  max_size:float prop ->
  min_size:float prop ->
  initial_lifecycle_hook:initial_lifecycle_hook list ->
  instance_maintenance_policy:instance_maintenance_policy list ->
  instance_refresh:instance_refresh list ->
  launch_template:launch_template list ->
  mixed_instances_policy:mixed_instances_policy list ->
  tag:tag list ->
  traffic_source:traffic_source list ->
  warm_pool:warm_pool list ->
  string ->
  t

val make :
  ?availability_zones:string prop list ->
  ?capacity_rebalance:bool prop ->
  ?context:string prop ->
  ?default_cooldown:float prop ->
  ?default_instance_warmup:float prop ->
  ?desired_capacity:float prop ->
  ?desired_capacity_type:string prop ->
  ?enabled_metrics:string prop list ->
  ?force_delete:bool prop ->
  ?force_delete_warm_pool:bool prop ->
  ?health_check_grace_period:float prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?ignore_failed_scaling_activities:bool prop ->
  ?launch_configuration:string prop ->
  ?load_balancers:string prop list ->
  ?max_instance_lifetime:float prop ->
  ?metrics_granularity:string prop ->
  ?min_elb_capacity:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?placement_group:string prop ->
  ?protect_from_scale_in:bool prop ->
  ?service_linked_role_arn:string prop ->
  ?suspended_processes:string prop list ->
  ?target_group_arns:string prop list ->
  ?termination_policies:string prop list ->
  ?vpc_zone_identifier:string prop list ->
  ?wait_for_capacity_timeout:string prop ->
  ?wait_for_elb_capacity:float prop ->
  ?timeouts:timeouts ->
  max_size:float prop ->
  min_size:float prop ->
  initial_lifecycle_hook:initial_lifecycle_hook list ->
  instance_maintenance_policy:instance_maintenance_policy list ->
  instance_refresh:instance_refresh list ->
  launch_template:launch_template list ->
  mixed_instances_policy:mixed_instances_policy list ->
  tag:tag list ->
  traffic_source:traffic_source list ->
  warm_pool:warm_pool list ->
  string ->
  t Tf_core.resource
