(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_group__initial_lifecycle_hook = {
  default_result : string prop option; [@option]
      (** default_result *)
  heartbeat_timeout : float prop option; [@option]
      (** heartbeat_timeout *)
  lifecycle_transition : string prop;  (** lifecycle_transition *)
  name : string prop;  (** name *)
  notification_metadata : string prop option; [@option]
      (** notification_metadata *)
  notification_target_arn : string prop option; [@option]
      (** notification_target_arn *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__initial_lifecycle_hook *)

type aws_autoscaling_group__instance_maintenance_policy = {
  max_healthy_percentage : float prop;  (** max_healthy_percentage *)
  min_healthy_percentage : float prop;  (** min_healthy_percentage *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_maintenance_policy *)

type aws_autoscaling_group__instance_refresh__preferences = {
  auto_rollback : bool prop option; [@option]  (** auto_rollback *)
  checkpoint_delay : string prop option; [@option]
      (** checkpoint_delay *)
  checkpoint_percentages : float prop list option; [@option]
      (** checkpoint_percentages *)
  instance_warmup : string prop option; [@option]
      (** instance_warmup *)
  max_healthy_percentage : float prop option; [@option]
      (** max_healthy_percentage *)
  min_healthy_percentage : float prop option; [@option]
      (** min_healthy_percentage *)
  scale_in_protected_instances : string prop option; [@option]
      (** scale_in_protected_instances *)
  skip_matching : bool prop option; [@option]  (** skip_matching *)
  standby_instances : string prop option; [@option]
      (** standby_instances *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_refresh__preferences *)

type aws_autoscaling_group__instance_refresh = {
  strategy : string prop;  (** strategy *)
  triggers : string prop list option; [@option]  (** triggers *)
  preferences :
    aws_autoscaling_group__instance_refresh__preferences list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__instance_refresh *)

type aws_autoscaling_group__launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__launch_template *)

type aws_autoscaling_group__mixed_instances_policy__instances_distribution = {
  on_demand_allocation_strategy : string prop option; [@option]
      (** on_demand_allocation_strategy *)
  on_demand_base_capacity : float prop option; [@option]
      (** on_demand_base_capacity *)
  on_demand_percentage_above_base_capacity : float prop option;
      [@option]
      (** on_demand_percentage_above_base_capacity *)
  spot_allocation_strategy : string prop option; [@option]
      (** spot_allocation_strategy *)
  spot_instance_pools : float prop option; [@option]
      (** spot_instance_pools *)
  spot_max_price : string prop option; [@option]
      (** spot_max_price *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__instances_distribution *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__launch_template_specification *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__memory_mib *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override__instance_requirements = {
  accelerator_manufacturers : string prop list option; [@option]
      (** accelerator_manufacturers *)
  accelerator_names : string prop list option; [@option]
      (** accelerator_names *)
  accelerator_types : string prop list option; [@option]
      (** accelerator_types *)
  allowed_instance_types : string prop list option; [@option]
      (** allowed_instance_types *)
  bare_metal : string prop option; [@option]  (** bare_metal *)
  burstable_performance : string prop option; [@option]
      (** burstable_performance *)
  cpu_manufacturers : string prop list option; [@option]
      (** cpu_manufacturers *)
  excluded_instance_types : string prop list option; [@option]
      (** excluded_instance_types *)
  instance_generations : string prop list option; [@option]
      (** instance_generations *)
  local_storage : string prop option; [@option]  (** local_storage *)
  local_storage_types : string prop list option; [@option]
      (** local_storage_types *)
  on_demand_max_price_percentage_over_lowest_price :
    float prop option;
      [@option]
      (** on_demand_max_price_percentage_over_lowest_price *)
  require_hibernate_support : bool prop option; [@option]
      (** require_hibernate_support *)
  spot_max_price_percentage_over_lowest_price : float prop option;
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
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__mixed_instances_policy__launch_template__override__launch_template_specification *)

type aws_autoscaling_group__mixed_instances_policy__launch_template__override = {
  instance_type : string prop option; [@option]  (** instance_type *)
  weighted_capacity : string prop option; [@option]
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
  key : string prop;  (** key *)
  propagate_at_launch : bool prop;  (** propagate_at_launch *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__tag *)

type aws_autoscaling_group__timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__timeouts *)

type aws_autoscaling_group__traffic_source = {
  identifier : string prop;  (** identifier *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__traffic_source *)

type aws_autoscaling_group__warm_pool__instance_reuse_policy = {
  reuse_on_scale_in : bool prop option; [@option]
      (** reuse_on_scale_in *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group__warm_pool__instance_reuse_policy *)

type aws_autoscaling_group__warm_pool = {
  max_group_prepared_capacity : float prop option; [@option]
      (** max_group_prepared_capacity *)
  min_size : float prop option; [@option]  (** min_size *)
  pool_state : string prop option; [@option]  (** pool_state *)
  instance_reuse_policy :
    aws_autoscaling_group__warm_pool__instance_reuse_policy list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group__warm_pool *)

type aws_autoscaling_group = {
  availability_zones : string prop list option; [@option]
      (** availability_zones *)
  capacity_rebalance : bool prop option; [@option]
      (** capacity_rebalance *)
  context : string prop option; [@option]  (** context *)
  default_cooldown : float prop option; [@option]
      (** default_cooldown *)
  default_instance_warmup : float prop option; [@option]
      (** default_instance_warmup *)
  desired_capacity : float prop option; [@option]
      (** desired_capacity *)
  desired_capacity_type : string prop option; [@option]
      (** desired_capacity_type *)
  enabled_metrics : string prop list option; [@option]
      (** enabled_metrics *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  force_delete_warm_pool : bool prop option; [@option]
      (** force_delete_warm_pool *)
  health_check_grace_period : float prop option; [@option]
      (** health_check_grace_period *)
  health_check_type : string prop option; [@option]
      (** health_check_type *)
  id : string prop option; [@option]  (** id *)
  ignore_failed_scaling_activities : bool prop option; [@option]
      (** ignore_failed_scaling_activities *)
  launch_configuration : string prop option; [@option]
      (** launch_configuration *)
  load_balancers : string prop list option; [@option]
      (** load_balancers *)
  max_instance_lifetime : float prop option; [@option]
      (** max_instance_lifetime *)
  max_size : float prop;  (** max_size *)
  metrics_granularity : string prop option; [@option]
      (** metrics_granularity *)
  min_elb_capacity : float prop option; [@option]
      (** min_elb_capacity *)
  min_size : float prop;  (** min_size *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  placement_group : string prop option; [@option]
      (** placement_group *)
  protect_from_scale_in : bool prop option; [@option]
      (** protect_from_scale_in *)
  service_linked_role_arn : string prop option; [@option]
      (** service_linked_role_arn *)
  suspended_processes : string prop list option; [@option]
      (** suspended_processes *)
  target_group_arns : string prop list option; [@option]
      (** target_group_arns *)
  termination_policies : string prop list option; [@option]
      (** termination_policies *)
  vpc_zone_identifier : string prop list option; [@option]
      (** vpc_zone_identifier *)
  wait_for_capacity_timeout : string prop option; [@option]
      (** wait_for_capacity_timeout *)
  wait_for_elb_capacity : float prop option; [@option]
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

let aws_autoscaling_group ?availability_zones ?capacity_rebalance
    ?context ?default_cooldown ?default_instance_warmup
    ?desired_capacity ?desired_capacity_type ?enabled_metrics
    ?force_delete ?force_delete_warm_pool ?health_check_grace_period
    ?health_check_type ?id ?ignore_failed_scaling_activities
    ?launch_configuration ?load_balancers ?max_instance_lifetime
    ?metrics_granularity ?min_elb_capacity ?name ?name_prefix
    ?placement_group ?protect_from_scale_in ?service_linked_role_arn
    ?suspended_processes ?target_group_arns ?termination_policies
    ?vpc_zone_identifier ?wait_for_capacity_timeout
    ?wait_for_elb_capacity ?timeouts ~max_size ~min_size
    ~initial_lifecycle_hook ~instance_maintenance_policy
    ~instance_refresh ~launch_template ~mixed_instances_policy ~tag
    ~traffic_source ~warm_pool __resource_id =
  let __resource_type = "aws_autoscaling_group" in
  let __resource =
    {
      availability_zones;
      capacity_rebalance;
      context;
      default_cooldown;
      default_instance_warmup;
      desired_capacity;
      desired_capacity_type;
      enabled_metrics;
      force_delete;
      force_delete_warm_pool;
      health_check_grace_period;
      health_check_type;
      id;
      ignore_failed_scaling_activities;
      launch_configuration;
      load_balancers;
      max_instance_lifetime;
      max_size;
      metrics_granularity;
      min_elb_capacity;
      min_size;
      name;
      name_prefix;
      placement_group;
      protect_from_scale_in;
      service_linked_role_arn;
      suspended_processes;
      target_group_arns;
      termination_policies;
      vpc_zone_identifier;
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
