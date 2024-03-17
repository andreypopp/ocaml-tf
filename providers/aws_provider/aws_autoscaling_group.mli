(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_group__initial_lifecycle_hook
type aws_autoscaling_group__instance_maintenance_policy
type aws_autoscaling_group__instance_refresh__preferences
type aws_autoscaling_group__instance_refresh
type aws_autoscaling_group__launch_template

type aws_autoscaling_group__mixed_instances_policy__instances_distribution

type aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__launch_template_specification

type aws_autoscaling_group__mixed_instances_policy__launch_template__override

type aws_autoscaling_group__mixed_instances_policy__launch_template
type aws_autoscaling_group__mixed_instances_policy
type aws_autoscaling_group__tag
type aws_autoscaling_group__timeouts
type aws_autoscaling_group__traffic_source
type aws_autoscaling_group__warm_pool__instance_reuse_policy
type aws_autoscaling_group__warm_pool
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
  ?timeouts:aws_autoscaling_group__timeouts ->
  max_size:float prop ->
  min_size:float prop ->
  initial_lifecycle_hook:
    aws_autoscaling_group__initial_lifecycle_hook list ->
  instance_maintenance_policy:
    aws_autoscaling_group__instance_maintenance_policy list ->
  instance_refresh:aws_autoscaling_group__instance_refresh list ->
  launch_template:aws_autoscaling_group__launch_template list ->
  mixed_instances_policy:
    aws_autoscaling_group__mixed_instances_policy list ->
  tag:aws_autoscaling_group__tag list ->
  traffic_source:aws_autoscaling_group__traffic_source list ->
  warm_pool:aws_autoscaling_group__warm_pool list ->
  string ->
  unit
