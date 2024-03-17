(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_fleet__fleet_instance_set = {
  instance_ids : string list option; [@option]  (** instance_ids *)
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle : string option; [@option]  (** lifecycle *)
  platform : string option; [@option]  (** platform *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__fleet_instance_set *)

type aws_ec2_fleet__launch_template_config__launch_template_specification = {
  launch_template_id : string option; [@option]
      (** launch_template_id *)
  launch_template_name : string option; [@option]
      (** launch_template_name *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__launch_template_specification *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_count *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_total_memory_mib = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_total_memory_mib *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_gib_per_vcpu = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_gib_per_vcpu *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_mib = {
  max : float option; [@option]  (** max *)
  min : float;  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_mib *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__network_bandwidth_gbps = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__network_bandwidth_gbps *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__network_interface_count = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__network_interface_count *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__total_local_storage_gb = {
  max : float option; [@option]  (** max *)
  min : float option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__total_local_storage_gb *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements__vcpu_count = {
  max : float option; [@option]  (** max *)
  min : float;  (** min *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements__vcpu_count *)

type aws_ec2_fleet__launch_template_config__override__instance_requirements = {
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
    aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    aws_ec2_fleet__launch_template_config__override__instance_requirements__vcpu_count
    list;
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override__instance_requirements *)

type aws_ec2_fleet__launch_template_config__override = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  instance_type : string option; [@option]  (** instance_type *)
  max_price : string option; [@option]  (** max_price *)
  priority : float option; [@option]  (** priority *)
  subnet_id : string option; [@option]  (** subnet_id *)
  weighted_capacity : float option; [@option]
      (** weighted_capacity *)
  instance_requirements :
    aws_ec2_fleet__launch_template_config__override__instance_requirements
    list;
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config__override *)

type aws_ec2_fleet__launch_template_config = {
  launch_template_specification :
    aws_ec2_fleet__launch_template_config__launch_template_specification
    list;
  override : aws_ec2_fleet__launch_template_config__override list;
}
[@@deriving yojson_of]
(** aws_ec2_fleet__launch_template_config *)

type aws_ec2_fleet__on_demand_options = {
  allocation_strategy : string option; [@option]
      (** allocation_strategy *)
  max_total_price : string option; [@option]  (** max_total_price *)
  min_target_capacity : float option; [@option]
      (** min_target_capacity *)
  single_availability_zone : bool option; [@option]
      (** single_availability_zone *)
  single_instance_type : bool option; [@option]
      (** single_instance_type *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__on_demand_options *)

type aws_ec2_fleet__spot_options__maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string option; [@option]
      (** replacement_strategy *)
  termination_delay : float option; [@option]
      (** termination_delay *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__spot_options__maintenance_strategies__capacity_rebalance *)

type aws_ec2_fleet__spot_options__maintenance_strategies = {
  capacity_rebalance :
    aws_ec2_fleet__spot_options__maintenance_strategies__capacity_rebalance
    list;
}
[@@deriving yojson_of]
(** aws_ec2_fleet__spot_options__maintenance_strategies *)

type aws_ec2_fleet__spot_options = {
  allocation_strategy : string option; [@option]
      (** allocation_strategy *)
  instance_interruption_behavior : string option; [@option]
      (** instance_interruption_behavior *)
  instance_pools_to_use_count : float option; [@option]
      (** instance_pools_to_use_count *)
  maintenance_strategies :
    aws_ec2_fleet__spot_options__maintenance_strategies list;
}
[@@deriving yojson_of]
(** aws_ec2_fleet__spot_options *)

type aws_ec2_fleet__target_capacity_specification = {
  default_target_capacity_type : string;
      (** default_target_capacity_type *)
  on_demand_target_capacity : float option; [@option]
      (** on_demand_target_capacity *)
  spot_target_capacity : float option; [@option]
      (** spot_target_capacity *)
  target_capacity_unit_type : string option; [@option]
      (** target_capacity_unit_type *)
  total_target_capacity : float;  (** total_target_capacity *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__target_capacity_specification *)

type aws_ec2_fleet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_fleet__timeouts *)

type aws_ec2_fleet = {
  context : string option; [@option]  (** context *)
  excess_capacity_termination_policy : string option; [@option]
      (** excess_capacity_termination_policy *)
  replace_unhealthy_instances : bool option; [@option]
      (** replace_unhealthy_instances *)
  tags : (string * string) list option; [@option]  (** tags *)
  terminate_instances : bool option; [@option]
      (** terminate_instances *)
  terminate_instances_with_expiration : bool option; [@option]
      (** terminate_instances_with_expiration *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  valid_from : string option; [@option]  (** valid_from *)
  valid_until : string option; [@option]  (** valid_until *)
  fleet_instance_set : aws_ec2_fleet__fleet_instance_set list;
  launch_template_config :
    aws_ec2_fleet__launch_template_config list;
  on_demand_options : aws_ec2_fleet__on_demand_options list;
  spot_options : aws_ec2_fleet__spot_options list;
  target_capacity_specification :
    aws_ec2_fleet__target_capacity_specification list;
  timeouts : aws_ec2_fleet__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_fleet *)

let aws_ec2_fleet ?context ?excess_capacity_termination_policy
    ?replace_unhealthy_instances ?tags ?terminate_instances
    ?terminate_instances_with_expiration ?type_ ?valid_from
    ?valid_until ?timeouts ~fleet_instance_set
    ~launch_template_config ~on_demand_options ~spot_options
    ~target_capacity_specification __resource_id =
  let __resource_type = "aws_ec2_fleet" in
  let __resource =
    {
      context;
      excess_capacity_termination_policy;
      replace_unhealthy_instances;
      tags;
      terminate_instances;
      terminate_instances_with_expiration;
      type_;
      valid_from;
      valid_until;
      fleet_instance_set;
      launch_template_config;
      on_demand_options;
      spot_options;
      target_capacity_specification;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_fleet __resource);
  ()
