(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_fleet__fleet_instance_set

type aws_ec2_fleet__launch_template_config__launch_template_specification

type aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_count

type aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_total_memory_mib

type aws_ec2_fleet__launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps

type aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_gib_per_vcpu

type aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_mib

type aws_ec2_fleet__launch_template_config__override__instance_requirements__network_bandwidth_gbps

type aws_ec2_fleet__launch_template_config__override__instance_requirements__network_interface_count

type aws_ec2_fleet__launch_template_config__override__instance_requirements__total_local_storage_gb

type aws_ec2_fleet__launch_template_config__override__instance_requirements__vcpu_count

type aws_ec2_fleet__launch_template_config__override__instance_requirements

type aws_ec2_fleet__launch_template_config__override
type aws_ec2_fleet__launch_template_config
type aws_ec2_fleet__on_demand_options

type aws_ec2_fleet__spot_options__maintenance_strategies__capacity_rebalance

type aws_ec2_fleet__spot_options__maintenance_strategies
type aws_ec2_fleet__spot_options
type aws_ec2_fleet__target_capacity_specification
type aws_ec2_fleet__timeouts
type aws_ec2_fleet

val aws_ec2_fleet :
  ?context:string prop ->
  ?excess_capacity_termination_policy:string prop ->
  ?fleet_state:string prop ->
  ?fulfilled_capacity:float prop ->
  ?fulfilled_on_demand_capacity:float prop ->
  ?id:string prop ->
  ?replace_unhealthy_instances:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?terminate_instances:bool prop ->
  ?terminate_instances_with_expiration:bool prop ->
  ?type_:string prop ->
  ?valid_from:string prop ->
  ?valid_until:string prop ->
  ?timeouts:aws_ec2_fleet__timeouts ->
  fleet_instance_set:aws_ec2_fleet__fleet_instance_set list ->
  launch_template_config:aws_ec2_fleet__launch_template_config list ->
  on_demand_options:aws_ec2_fleet__on_demand_options list ->
  spot_options:aws_ec2_fleet__spot_options list ->
  target_capacity_specification:
    aws_ec2_fleet__target_capacity_specification list ->
  string ->
  unit
