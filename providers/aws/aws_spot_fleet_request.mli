(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type launch_specification__ebs_block_device

val launch_specification__ebs_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  device_name:string prop ->
  unit ->
  launch_specification__ebs_block_device

type launch_specification__ephemeral_block_device

val launch_specification__ephemeral_block_device :
  device_name:string prop ->
  virtual_name:string prop ->
  unit ->
  launch_specification__ephemeral_block_device

type launch_specification__root_block_device

val launch_specification__root_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  launch_specification__root_block_device

type launch_specification

val launch_specification :
  ?associate_public_ip_address:bool prop ->
  ?availability_zone:string prop ->
  ?ebs_optimized:bool prop ->
  ?iam_instance_profile:string prop ->
  ?iam_instance_profile_arn:string prop ->
  ?key_name:string prop ->
  ?monitoring:bool prop ->
  ?placement_group:string prop ->
  ?placement_tenancy:string prop ->
  ?spot_price:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data:string prop ->
  ?vpc_security_group_ids:string prop list ->
  ?weighted_capacity:string prop ->
  ami:string prop ->
  instance_type:string prop ->
  ebs_block_device:launch_specification__ebs_block_device list ->
  ephemeral_block_device:
    launch_specification__ephemeral_block_device list ->
  root_block_device:launch_specification__root_block_device list ->
  unit ->
  launch_specification

type launch_template_config__launch_template_specification

val launch_template_config__launch_template_specification :
  ?id:string prop ->
  ?name:string prop ->
  ?version:string prop ->
  unit ->
  launch_template_config__launch_template_specification

type launch_template_config__overrides__instance_requirements__accelerator_count

val launch_template_config__overrides__instance_requirements__accelerator_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__accelerator_count

type launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib

val launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib

type launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps

val launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps

type launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu

val launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu

type launch_template_config__overrides__instance_requirements__memory_mib

val launch_template_config__overrides__instance_requirements__memory_mib :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__memory_mib

type launch_template_config__overrides__instance_requirements__network_bandwidth_gbps

val launch_template_config__overrides__instance_requirements__network_bandwidth_gbps :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__network_bandwidth_gbps

type launch_template_config__overrides__instance_requirements__network_interface_count

val launch_template_config__overrides__instance_requirements__network_interface_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__network_interface_count

type launch_template_config__overrides__instance_requirements__total_local_storage_gb

val launch_template_config__overrides__instance_requirements__total_local_storage_gb :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__total_local_storage_gb

type launch_template_config__overrides__instance_requirements__vcpu_count

val launch_template_config__overrides__instance_requirements__vcpu_count :
  ?max:float prop ->
  ?min:float prop ->
  unit ->
  launch_template_config__overrides__instance_requirements__vcpu_count

type launch_template_config__overrides__instance_requirements

val launch_template_config__overrides__instance_requirements :
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
  ?accelerator_count:
    launch_template_config__overrides__instance_requirements__accelerator_count
    list ->
  ?accelerator_total_memory_mib:
    launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    list ->
  ?baseline_ebs_bandwidth_mbps:
    launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    list ->
  ?memory_gib_per_vcpu:
    launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    list ->
  ?memory_mib:
    launch_template_config__overrides__instance_requirements__memory_mib
    list ->
  ?network_bandwidth_gbps:
    launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    list ->
  ?network_interface_count:
    launch_template_config__overrides__instance_requirements__network_interface_count
    list ->
  ?total_local_storage_gb:
    launch_template_config__overrides__instance_requirements__total_local_storage_gb
    list ->
  ?vcpu_count:
    launch_template_config__overrides__instance_requirements__vcpu_count
    list ->
  unit ->
  launch_template_config__overrides__instance_requirements

type launch_template_config__overrides

val launch_template_config__overrides :
  ?availability_zone:string prop ->
  ?instance_type:string prop ->
  ?priority:float prop ->
  ?spot_price:string prop ->
  ?subnet_id:string prop ->
  ?weighted_capacity:float prop ->
  ?instance_requirements:
    launch_template_config__overrides__instance_requirements list ->
  unit ->
  launch_template_config__overrides

type launch_template_config

val launch_template_config :
  launch_template_specification:
    launch_template_config__launch_template_specification list ->
  overrides:launch_template_config__overrides list ->
  unit ->
  launch_template_config

type spot_maintenance_strategies__capacity_rebalance

val spot_maintenance_strategies__capacity_rebalance :
  ?replacement_strategy:string prop ->
  unit ->
  spot_maintenance_strategies__capacity_rebalance

type spot_maintenance_strategies

val spot_maintenance_strategies :
  ?capacity_rebalance:
    spot_maintenance_strategies__capacity_rebalance list ->
  unit ->
  spot_maintenance_strategies

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_spot_fleet_request

val aws_spot_fleet_request :
  ?allocation_strategy:string prop ->
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_interruption_behaviour:string prop ->
  ?instance_pools_to_use_count:float prop ->
  ?load_balancers:string prop list ->
  ?on_demand_allocation_strategy:string prop ->
  ?on_demand_max_total_price:string prop ->
  ?on_demand_target_capacity:float prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?spot_price:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_capacity_unit_type:string prop ->
  ?target_group_arns:string prop list ->
  ?terminate_instances_on_delete:string prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?wait_for_fulfillment:bool prop ->
  ?spot_maintenance_strategies:spot_maintenance_strategies list ->
  ?timeouts:timeouts ->
  iam_fleet_role:string prop ->
  target_capacity:float prop ->
  launch_specification:launch_specification list ->
  launch_template_config:launch_template_config list ->
  unit ->
  aws_spot_fleet_request

val yojson_of_aws_spot_fleet_request : aws_spot_fleet_request -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocation_strategy : string prop;
  client_token : string prop;
  context : string prop;
  excess_capacity_termination_policy : string prop;
  fleet_type : string prop;
  iam_fleet_role : string prop;
  id : string prop;
  instance_interruption_behaviour : string prop;
  instance_pools_to_use_count : float prop;
  load_balancers : string list prop;
  on_demand_allocation_strategy : string prop;
  on_demand_max_total_price : string prop;
  on_demand_target_capacity : float prop;
  replace_unhealthy_instances : bool prop;
  spot_price : string prop;
  spot_request_state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_capacity : float prop;
  target_capacity_unit_type : string prop;
  target_group_arns : string list prop;
  terminate_instances_on_delete : string prop;
  terminate_instances_with_expiration : bool prop;
  valid_from : string prop;
  valid_until : string prop;
  wait_for_fulfillment : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_strategy:string prop ->
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_interruption_behaviour:string prop ->
  ?instance_pools_to_use_count:float prop ->
  ?load_balancers:string prop list ->
  ?on_demand_allocation_strategy:string prop ->
  ?on_demand_max_total_price:string prop ->
  ?on_demand_target_capacity:float prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?spot_price:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_capacity_unit_type:string prop ->
  ?target_group_arns:string prop list ->
  ?terminate_instances_on_delete:string prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?wait_for_fulfillment:bool prop ->
  ?spot_maintenance_strategies:spot_maintenance_strategies list ->
  ?timeouts:timeouts ->
  iam_fleet_role:string prop ->
  target_capacity:float prop ->
  launch_specification:launch_specification list ->
  launch_template_config:launch_template_config list ->
  string ->
  t

val make :
  ?allocation_strategy:string prop ->
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_interruption_behaviour:string prop ->
  ?instance_pools_to_use_count:float prop ->
  ?load_balancers:string prop list ->
  ?on_demand_allocation_strategy:string prop ->
  ?on_demand_max_total_price:string prop ->
  ?on_demand_target_capacity:float prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?spot_price:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target_capacity_unit_type:string prop ->
  ?target_group_arns:string prop list ->
  ?terminate_instances_on_delete:string prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?wait_for_fulfillment:bool prop ->
  ?spot_maintenance_strategies:spot_maintenance_strategies list ->
  ?timeouts:timeouts ->
  iam_fleet_role:string prop ->
  target_capacity:float prop ->
  launch_specification:launch_specification list ->
  launch_template_config:launch_template_config list ->
  string ->
  t Tf_core.resource
