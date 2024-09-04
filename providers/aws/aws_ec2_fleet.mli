(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type fleet_instance_set

val fleet_instance_set :
  ?instance_ids:string prop list ->
  ?instance_type:string prop ->
  ?lifecycle:string prop ->
  ?platform:string prop ->
  unit ->
  fleet_instance_set

type launch_template_config__launch_template_specification

val launch_template_config__launch_template_specification :
  ?launch_template_id:string prop ->
  ?launch_template_name:string prop ->
  version:string prop ->
  unit ->
  launch_template_config__launch_template_specification

type launch_template_config__override__instance_requirements__accelerator_count

val launch_template_config__override__instance_requirements__accelerator_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__accelerator_count

type launch_template_config__override__instance_requirements__accelerator_total_memory_mib

val launch_template_config__override__instance_requirements__accelerator_total_memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__accelerator_total_memory_mib

type launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps

val launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps

type launch_template_config__override__instance_requirements__memory_gib_per_vcpu

val launch_template_config__override__instance_requirements__memory_gib_per_vcpu :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__memory_gib_per_vcpu

type launch_template_config__override__instance_requirements__memory_mib

val launch_template_config__override__instance_requirements__memory_mib :
  ?max:float prop ->
  min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__memory_mib

type launch_template_config__override__instance_requirements__network_bandwidth_gbps

val launch_template_config__override__instance_requirements__network_bandwidth_gbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__network_bandwidth_gbps

type launch_template_config__override__instance_requirements__network_interface_count

val launch_template_config__override__instance_requirements__network_interface_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__network_interface_count

type launch_template_config__override__instance_requirements__total_local_storage_gb

val launch_template_config__override__instance_requirements__total_local_storage_gb :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__total_local_storage_gb

type launch_template_config__override__instance_requirements__vcpu_count

val launch_template_config__override__instance_requirements__vcpu_count :
  ?max:float prop ->
  min:float prop ->
  unit ->
  launch_template_config__override__instance_requirements__vcpu_count

type launch_template_config__override__instance_requirements

val launch_template_config__override__instance_requirements :
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
  ?max_spot_price_as_percentage_of_optimal_on_demand_price:float prop ->
  ?on_demand_max_price_percentage_over_lowest_price:float prop ->
  ?require_hibernate_support:bool prop ->
  ?spot_max_price_percentage_over_lowest_price:float prop ->
  ?accelerator_count:
    launch_template_config__override__instance_requirements__accelerator_count
    list ->
  ?accelerator_total_memory_mib:
    launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    list ->
  ?baseline_ebs_bandwidth_mbps:
    launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list ->
  ?memory_gib_per_vcpu:
    launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    list ->
  ?network_bandwidth_gbps:
    launch_template_config__override__instance_requirements__network_bandwidth_gbps
    list ->
  ?network_interface_count:
    launch_template_config__override__instance_requirements__network_interface_count
    list ->
  ?total_local_storage_gb:
    launch_template_config__override__instance_requirements__total_local_storage_gb
    list ->
  memory_mib:
    launch_template_config__override__instance_requirements__memory_mib
    list ->
  vcpu_count:
    launch_template_config__override__instance_requirements__vcpu_count
    list ->
  unit ->
  launch_template_config__override__instance_requirements

type launch_template_config__override

val launch_template_config__override :
  ?availability_zone:string prop ->
  ?instance_type:string prop ->
  ?max_price:string prop ->
  ?priority:float prop ->
  ?subnet_id:string prop ->
  ?weighted_capacity:float prop ->
  ?instance_requirements:
    launch_template_config__override__instance_requirements list ->
  unit ->
  launch_template_config__override

type launch_template_config

val launch_template_config :
  ?launch_template_specification:
    launch_template_config__launch_template_specification list ->
  ?override:launch_template_config__override list ->
  unit ->
  launch_template_config

type on_demand_options__capacity_reservation_options

val on_demand_options__capacity_reservation_options :
  ?usage_strategy:string prop ->
  unit ->
  on_demand_options__capacity_reservation_options

type on_demand_options

val on_demand_options :
  ?allocation_strategy:string prop ->
  ?max_total_price:string prop ->
  ?min_target_capacity:float prop ->
  ?single_availability_zone:bool prop ->
  ?single_instance_type:bool prop ->
  ?capacity_reservation_options:
    on_demand_options__capacity_reservation_options list ->
  unit ->
  on_demand_options

type spot_options__maintenance_strategies__capacity_rebalance

val spot_options__maintenance_strategies__capacity_rebalance :
  ?replacement_strategy:string prop ->
  ?termination_delay:float prop ->
  unit ->
  spot_options__maintenance_strategies__capacity_rebalance

type spot_options__maintenance_strategies

val spot_options__maintenance_strategies :
  ?capacity_rebalance:
    spot_options__maintenance_strategies__capacity_rebalance list ->
  unit ->
  spot_options__maintenance_strategies

type spot_options

val spot_options :
  ?allocation_strategy:string prop ->
  ?instance_interruption_behavior:string prop ->
  ?instance_pools_to_use_count:float prop ->
  ?maintenance_strategies:spot_options__maintenance_strategies list ->
  unit ->
  spot_options

type target_capacity_specification

val target_capacity_specification :
  ?on_demand_target_capacity:float prop ->
  ?spot_target_capacity:float prop ->
  ?target_capacity_unit_type:string prop ->
  default_target_capacity_type:string prop ->
  total_target_capacity:float prop ->
  unit ->
  target_capacity_specification

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ec2_fleet

val aws_ec2_fleet :
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_state:string prop ->
  ?fulfilled_capacity:float prop ->
  ?fulfilled_on_demand_capacity:float prop ->
  ?id:string prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?terminate_instances:bool prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?type_:string prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?fleet_instance_set:fleet_instance_set list ->
  ?on_demand_options:on_demand_options list ->
  ?spot_options:spot_options list ->
  ?timeouts:timeouts ->
  launch_template_config:launch_template_config list ->
  target_capacity_specification:target_capacity_specification list ->
  unit ->
  aws_ec2_fleet

val yojson_of_aws_ec2_fleet : aws_ec2_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  context : string prop;
  excess_capacity_termination_policy : string prop;
  fleet_state : string prop;
  fulfilled_capacity : float prop;
  fulfilled_on_demand_capacity : float prop;
  id : string prop;
  replace_unhealthy_instances : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  terminate_instances : bool prop;
  terminate_instances_with_expiration : bool prop;
  type_ : string prop;
  valid_from : string prop;
  valid_until : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_state:string prop ->
  ?fulfilled_capacity:float prop ->
  ?fulfilled_on_demand_capacity:float prop ->
  ?id:string prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?terminate_instances:bool prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?type_:string prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?fleet_instance_set:fleet_instance_set list ->
  ?on_demand_options:on_demand_options list ->
  ?spot_options:spot_options list ->
  ?timeouts:timeouts ->
  launch_template_config:launch_template_config list ->
  target_capacity_specification:target_capacity_specification list ->
  string ->
  t

val make :
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_state:string prop ->
  ?fulfilled_capacity:float prop ->
  ?fulfilled_on_demand_capacity:float prop ->
  ?id:string prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?terminate_instances:bool prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?type_:string prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?fleet_instance_set:fleet_instance_set list ->
  ?on_demand_options:on_demand_options list ->
  ?spot_options:spot_options list ->
  ?timeouts:timeouts ->
  launch_template_config:launch_template_config list ->
  target_capacity_specification:target_capacity_specification list ->
  string ->
  t Tf_core.resource
