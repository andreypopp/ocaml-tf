(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_autoscaling_group__initial_lifecycle_hook = {
  default_result : string option; [@option]  (** default_result *)
  heartbeat_timeout : float option; [@option]
      (** heartbeat_timeout *)
  lifecycle_transition : string;  (** lifecycle_transition *)
  name : string;  (** name *)
  notification_metadata : string option; [@option]
      (** notification_metadata *)
  notification_target_arn : string option; [@option]
      (** notification_target_arn *)
  role_arn : string option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__initial_lifecycle_hook *)

type aws_autoscaling_group__instance_maintenance_policy = {
  max_healthy_percentage : float;  (** max_healthy_percentage *)
  min_healthy_percentage : float;  (** min_healthy_percentage *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_maintenance_policy *)

type aws_autoscaling_group__instance_refresh__preferences = {
  auto_rollback : bool option; [@option]  (** auto_rollback *)
  checkpoint_delay : string option; [@option]
      (** checkpoint_delay *)
  checkpoint_percentages : float list option; [@option]
      (** checkpoint_percentages *)
  instance_warmup : string option; [@option]  (** instance_warmup *)
  max_healthy_percentage : float option; [@option]
      (** max_healthy_percentage *)
  min_healthy_percentage : float option; [@option]
      (** min_healthy_percentage *)
  scale_in_protected_instances : string option; [@option]
      (** scale_in_protected_instances *)
  skip_matching : bool option; [@option]  (** skip_matching *)
  standby_instances : string option; [@option]
      (** standby_instances *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_refresh__preferences *)

type aws_autoscaling_group__instance_refresh = {
  strategy : string;  (** strategy *)
  triggers : string list option; [@option]  (** triggers *)
  preferences :
    aws_autoscaling_group__instance_refresh__preferences list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_refresh *)

type aws_autoscaling_group__launch_template = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__launch_template *)

type aws_autoscaling_group__mixed_instances_policy__instances_distribution = {
  on_demand_allocation_strategy : string option; [@option]
      (** on_demand_allocation_strategy *)
  on_demand_base_capacity : float option; [@option]
      (** on_demand_base_capacity *)
  on_demand_percentage_above_base_capacity : float option; [@option]
      (** on_demand_percentage_above_base_capacity *)
  spot_allocation_strategy : string option; [@option]
      (** spot_allocation_strategy *)
  spot_instance_pools : float option; [@option]
      (** spot_instance_pools *)
  spot_max_price : string option; [@option]  (** spot_max_price *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__instances_distribution *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification = {
  launch_template_id : string option; [@option]
      (** launch_template_id *)
  launch_template_name : string option; [@option]
      (** launch_template_name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements = {
  accelerator_manufacturers : string list option; [@option]
      (** accelerator_manufacturers *)
  accelerator_names : string list option; [@option]
      (** accelerator_names *)
  accelerator_types : string list option; [@option]
      (** accelerator_types *)
  allowed_instance_types : string list option; [@option]
      (** allowed_instance_types *)
  bare_metal : string option; [@option]  (** bare_metal *)
  burstable_performance : string option; [@option]
      (** burstable_performance *)
  cpu_manufacturers : string list option; [@option]
      (** cpu_manufacturers *)
  excluded_instance_types : string list option; [@option]
      (** excluded_instance_types *)
  instance_generations : string list option; [@option]
      (** instance_generations *)
  local_storage : string option; [@option]  (** local_storage *)
  local_storage_types : string list option; [@option]
      (** local_storage_types *)
  on_demand_max_price_percentage_over_lowest_price : float option;
      [@option]
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool option; [@option]
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float option;
      [@option]
      (** spot_max_price_percentage_over_lowest_price *)
  accelerator_count :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__launch_template_specification = {
  launch_template_id : string option; [@option]
      (** launch_template_id *)
  launch_template_name : string option; [@option]
      (** launch_template_name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__launch_template_specification *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override = {
  instance_type : string option; [@option]  (** instance_type *)
  weighted_capacity : string option; [@option]
      (** weighted_capacity *)
  instance_requirements :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements
    list;
  launch_template_specification :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override__launch_template_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override *)

type aws_autoscaling_group__mixed_instances_policy__launch_template = {
  launch_template_specification :
    aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification
    list;
  override :
    aws_autoscaling_group__mixed_instances_policy__launch_template__override
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template *)

type aws_autoscaling_group__mixed_instances_policy = {
  instances_distribution :
    aws_autoscaling_group__mixed_instances_policy__instances_distribution
    list;
  launch_template :
    aws_autoscaling_group__mixed_instances_policy__launch_template
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy *)

type aws_autoscaling_group__tag = {
  key : string;  (** key *)
  propagate_at_launch : bool;  (** propagate_at_launch *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__tag *)

type aws_autoscaling_group__timeouts = {
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__timeouts *)

type aws_autoscaling_group__traffic_source = {
  identifier : string;  (** identifier *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__traffic_source *)

type aws_autoscaling_group__warm_pool__instance_reuse_policy = {
  reuse_on_scale_in : bool option; [@option]  (** reuse_on_scale_in *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__warm_pool__instance_reuse_policy *)

type aws_autoscaling_group__warm_pool = {
  max_group_prepared_capacity : float option; [@option]
      (** max_group_prepared_capacity *)
  min_size : float option; [@option]  (** min_size *)
  pool_state : string option; [@option]  (** pool_state *)
  instance_reuse_policy :
    aws_autoscaling_group__warm_pool__instance_reuse_policy list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__warm_pool *)

type aws_autoscaling_group = {
  capacity_rebalance : bool option; [@option]
      (** capacity_rebalance *)
  context : string option; [@option]  (** context *)
  default_instance_warmup : float option; [@option]
      (** default_instance_warmup *)
  desired_capacity_type : string option; [@option]
      (** desired_capacity_type *)
  enabled_metrics : string list option; [@option]
      (** enabled_metrics *)
  force_delete : bool option; [@option]  (** force_delete *)
  force_delete_warm_pool : bool option; [@option]
      (** force_delete_warm_pool *)
  health_check_grace_period : float option; [@option]
      (** health_check_grace_period *)
  ignore_failed_scaling_activities : bool option; [@option]
      (** ignore_failed_scaling_activities *)
  launch_configuration : string option; [@option]
      (** launch_configuration *)
  max_instance_lifetime : float option; [@option]
      (** max_instance_lifetime *)
  max_size : float;  (** max_size *)
  metrics_granularity : string option; [@option]
      (** metrics_granularity *)
  min_elb_capacity : float option; [@option]  (** min_elb_capacity *)
  min_size : float;  (** min_size *)
  placement_group : string option; [@option]  (** placement_group *)
  protect_from_scale_in : bool option; [@option]
      (** protect_from_scale_in *)
  suspended_processes : string list option; [@option]
      (** suspended_processes *)
  termination_policies : string list option; [@option]
      (** termination_policies *)
  wait_for_capacity_timeout : string option; [@option]
      (** wait_for_capacity_timeout *)
  wait_for_elb_capacity : float option; [@option]
      (** wait_for_elb_capacity *)
  initial_lifecycle_hook :
    aws_autoscaling_group__initial_lifecycle_hook list;
  instance_maintenance_policy :
    aws_autoscaling_group__instance_maintenance_policy list;
  instance_refresh : aws_autoscaling_group__instance_refresh list;
  launch_template : aws_autoscaling_group__launch_template list;
  mixed_instances_policy :
    aws_autoscaling_group__mixed_instances_policy list;
  tag : aws_autoscaling_group__tag list;
  timeouts : aws_autoscaling_group__timeouts option;
  traffic_source : aws_autoscaling_group__traffic_source list;
  warm_pool : aws_autoscaling_group__warm_pool list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group *)

let aws_autoscaling_group ?capacity_rebalance ?context
    ?default_instance_warmup ?desired_capacity_type ?enabled_metrics
    ?force_delete ?force_delete_warm_pool ?health_check_grace_period
    ?ignore_failed_scaling_activities ?launch_configuration
    ?max_instance_lifetime ?metrics_granularity ?min_elb_capacity
    ?placement_group ?protect_from_scale_in ?suspended_processes
    ?termination_policies ?wait_for_capacity_timeout
    ?wait_for_elb_capacity ?timeouts ~max_size ~min_size
    ~initial_lifecycle_hook ~instance_maintenance_policy
    ~instance_refresh ~launch_template ~mixed_instances_policy ~tag
    ~traffic_source ~warm_pool __resource_id =
  let __resource_type = "aws_autoscaling_group" in
  let __resource =
    {
      capacity_rebalance;
      context;
      default_instance_warmup;
      desired_capacity_type;
      enabled_metrics;
      force_delete;
      force_delete_warm_pool;
      health_check_grace_period;
      ignore_failed_scaling_activities;
      launch_configuration;
      max_instance_lifetime;
      max_size;
      metrics_granularity;
      min_elb_capacity;
      min_size;
      placement_group;
      protect_from_scale_in;
      suspended_processes;
      termination_policies;
      wait_for_capacity_timeout;
      wait_for_elb_capacity;
      initial_lifecycle_hook;
      instance_maintenance_policy;
      instance_refresh;
      launch_template;
      mixed_instances_policy;
      tag;
      timeouts;
      traffic_source;
      warm_pool;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_group __resource);
  ()
