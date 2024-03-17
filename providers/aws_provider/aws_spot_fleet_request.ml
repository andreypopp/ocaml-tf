(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_spot_fleet_request__launch_specification__ebs_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_specification__ebs_block_device *)

type aws_spot_fleet_request__launch_specification__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  virtual_name : string;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_specification__ephemeral_block_device *)

type aws_spot_fleet_request__launch_specification__root_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_specification__root_block_device *)

type aws_spot_fleet_request__launch_specification = {
  ami : string;  (** ami *)
  associate_public_ip_address : bool option; [@option]
      (** associate_public_ip_address *)
  availability_zone : string option; [@option]
      (** availability_zone *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  iam_instance_profile : string option; [@option]
      (** iam_instance_profile *)
  iam_instance_profile_arn : string option; [@option]
      (** iam_instance_profile_arn *)
  instance_type : string;  (** instance_type *)
  key_name : string option; [@option]  (** key_name *)
  monitoring : bool option; [@option]  (** monitoring *)
  placement_group : string option; [@option]  (** placement_group *)
  placement_tenancy : string option; [@option]
      (** placement_tenancy *)
  spot_price : string option; [@option]  (** spot_price *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_data : string option; [@option]  (** user_data *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  weighted_capacity : string option; [@option]
      (** weighted_capacity *)
  ebs_block_device :
    aws_spot_fleet_request__launch_specification__ebs_block_device
    list;
  ephemeral_block_device :
    aws_spot_fleet_request__launch_specification__ephemeral_block_device
    list;
  root_block_device :
    aws_spot_fleet_request__launch_specification__root_block_device
    list;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_specification *)

type aws_spot_fleet_request__launch_template_config__launch_template_specification = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__launch_template_specification *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_count *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_mib *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_bandwidth_gbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_bandwidth_gbps *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_interface_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_interface_count *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__total_local_storage_gb = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__total_local_storage_gb *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__vcpu_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__vcpu_count *)

type aws_spot_fleet_request__launch_template_config__overrides__instance_requirements = {
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
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements__vcpu_count
    list;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides__instance_requirements *)

type aws_spot_fleet_request__launch_template_config__overrides = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  instance_type : string option; [@option]  (** instance_type *)
  priority : float option; [@option]  (** priority *)
  spot_price : string option; [@option]  (** spot_price *)
  subnet_id : string option; [@option]  (** subnet_id *)
  weighted_capacity : float option; [@option]
      (** weighted_capacity *)
  instance_requirements :
    aws_spot_fleet_request__launch_template_config__overrides__instance_requirements
    list;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config__overrides *)

type aws_spot_fleet_request__launch_template_config = {
  launch_template_specification :
    aws_spot_fleet_request__launch_template_config__launch_template_specification
    list;
  overrides :
    aws_spot_fleet_request__launch_template_config__overrides list;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__launch_template_config *)

type aws_spot_fleet_request__spot_maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string option; [@option]
      (** replacement_strategy *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__spot_maintenance_strategies__capacity_rebalance *)

type aws_spot_fleet_request__spot_maintenance_strategies = {
  capacity_rebalance :
    aws_spot_fleet_request__spot_maintenance_strategies__capacity_rebalance
    list;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__spot_maintenance_strategies *)

type aws_spot_fleet_request__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_spot_fleet_request__timeouts *)

type aws_spot_fleet_request = {
  allocation_strategy : string option; [@option]
      (** allocation_strategy *)
  context : string option; [@option]  (** context *)
  excess_capacity_termination_policy : string option; [@option]
      (** excess_capacity_termination_policy *)
  fleet_type : string option; [@option]  (** fleet_type *)
  iam_fleet_role : string;  (** iam_fleet_role *)
  instance_interruption_behaviour : string option; [@option]
      (** instance_interruption_behaviour *)
  instance_pools_to_use_count : float option; [@option]
      (** instance_pools_to_use_count *)
  on_demand_allocation_strategy : string option; [@option]
      (** on_demand_allocation_strategy *)
  on_demand_max_total_price : string option; [@option]
      (** on_demand_max_total_price *)
  on_demand_target_capacity : float option; [@option]
      (** on_demand_target_capacity *)
  replace_unhealthy_instances : bool option; [@option]
      (** replace_unhealthy_instances *)
  spot_price : string option; [@option]  (** spot_price *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_capacity : float;  (** target_capacity *)
  target_capacity_unit_type : string option; [@option]
      (** target_capacity_unit_type *)
  terminate_instances_on_delete : string option; [@option]
      (** terminate_instances_on_delete *)
  terminate_instances_with_expiration : bool option; [@option]
      (** terminate_instances_with_expiration *)
  valid_from : string option; [@option]  (** valid_from *)
  valid_until : string option; [@option]  (** valid_until *)
  wait_for_fulfillment : bool option; [@option]
      (** wait_for_fulfillment *)
  launch_specification :
    aws_spot_fleet_request__launch_specification list;
  launch_template_config :
    aws_spot_fleet_request__launch_template_config list;
  spot_maintenance_strategies :
    aws_spot_fleet_request__spot_maintenance_strategies list;
  timeouts : aws_spot_fleet_request__timeouts option;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request *)

let aws_spot_fleet_request ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?on_demand_allocation_strategy ?on_demand_max_total_price
    ?on_demand_target_capacity ?replace_unhealthy_instances
    ?spot_price ?tags ?target_capacity_unit_type
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?timeouts ~iam_fleet_role ~target_capacity
    ~launch_specification ~launch_template_config
    ~spot_maintenance_strategies __resource_id =
  let __resource_type = "aws_spot_fleet_request" in
  let __resource =
    {
      allocation_strategy;
      context;
      excess_capacity_termination_policy;
      fleet_type;
      iam_fleet_role;
      instance_interruption_behaviour;
      instance_pools_to_use_count;
      on_demand_allocation_strategy;
      on_demand_max_total_price;
      on_demand_target_capacity;
      replace_unhealthy_instances;
      spot_price;
      tags;
      target_capacity;
      target_capacity_unit_type;
      terminate_instances_on_delete;
      terminate_instances_with_expiration;
      valid_from;
      valid_until;
      wait_for_fulfillment;
      launch_specification;
      launch_template_config;
      spot_maintenance_strategies;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_spot_fleet_request __resource);
  ()
