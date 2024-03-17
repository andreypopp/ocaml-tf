(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_spot_fleet_request__launch_specification__ebs_block_device

type aws_spot_fleet_request__launch_specification__ephemeral_block_device

type aws_spot_fleet_request__launch_specification__root_block_device
type aws_spot_fleet_request__launch_specification

type aws_spot_fleet_request__launch_template_config__launch_template_specification

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_count

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_mib

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_bandwidth_gbps

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_interface_count

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__total_local_storage_gb

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__vcpu_count

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements

type aws_spot_fleet_request__launch_template_config__overrides
type aws_spot_fleet_request__launch_template_config

type aws_spot_fleet_request__spot_maintenance_strategies__capacity_rebalance

type aws_spot_fleet_request__spot_maintenance_strategies
type aws_spot_fleet_request__timeouts
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
  ?timeouts:aws_spot_fleet_request__timeouts ->
  iam_fleet_role:string prop ->
  target_capacity:float prop ->
  launch_specification:
    aws_spot_fleet_request__launch_specification list ->
  launch_template_config:
    aws_spot_fleet_request__launch_template_config list ->
  spot_maintenance_strategies:
    aws_spot_fleet_request__spot_maintenance_strategies list ->
  string ->
  unit
