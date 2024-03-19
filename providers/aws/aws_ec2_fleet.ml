(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type fleet_instance_set = {
  instance_ids : string prop list option; [@option]
      (** instance_ids *)
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle : string prop option; [@option]  (** lifecycle *)
  platform : string prop option; [@option]  (** platform *)
}
[@@deriving yojson_of]
(** fleet_instance_set *)

type launch_template_config__launch_template_specification = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** launch_template_config__launch_template_specification *)

type launch_template_config__override__instance_requirements__accelerator_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__accelerator_count *)

type launch_template_config__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__accelerator_total_memory_mib *)

type launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps *)

type launch_template_config__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__memory_gib_per_vcpu *)

type launch_template_config__override__instance_requirements__memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop;  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__memory_mib *)

type launch_template_config__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__network_bandwidth_gbps *)

type launch_template_config__override__instance_requirements__network_interface_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__network_interface_count *)

type launch_template_config__override__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__total_local_storage_gb *)

type launch_template_config__override__instance_requirements__vcpu_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop;  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements__vcpu_count *)

type launch_template_config__override__instance_requirements = {
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
    launch_template_config__override__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    launch_template_config__override__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    launch_template_config__override__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    launch_template_config__override__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    launch_template_config__override__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    launch_template_config__override__instance_requirements__vcpu_count
    list;
}
[@@deriving yojson_of]
(** launch_template_config__override__instance_requirements *)

type launch_template_config__override = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  instance_type : string prop option; [@option]  (** instance_type *)
  max_price : string prop option; [@option]  (** max_price *)
  priority : float prop option; [@option]  (** priority *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  instance_requirements :
    launch_template_config__override__instance_requirements list;
}
[@@deriving yojson_of]
(** launch_template_config__override *)

type launch_template_config = {
  launch_template_specification :
    launch_template_config__launch_template_specification list;
  override : launch_template_config__override list;
}
[@@deriving yojson_of]
(** launch_template_config *)

type on_demand_options = {
  allocation_strategy : string prop option; [@option]
      (** allocation_strategy *)
  max_total_price : string prop option; [@option]
      (** max_total_price *)
  min_target_capacity : float prop option; [@option]
      (** min_target_capacity *)
  single_availability_zone : bool prop option; [@option]
      (** single_availability_zone *)
  single_instance_type : bool prop option; [@option]
      (** single_instance_type *)
}
[@@deriving yojson_of]
(** on_demand_options *)

type spot_options__maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string prop option; [@option]
      (** replacement_strategy *)
  termination_delay : float prop option; [@option]
      (** termination_delay *)
}
[@@deriving yojson_of]
(** spot_options__maintenance_strategies__capacity_rebalance *)

type spot_options__maintenance_strategies = {
  capacity_rebalance :
    spot_options__maintenance_strategies__capacity_rebalance list;
}
[@@deriving yojson_of]
(** spot_options__maintenance_strategies *)

type spot_options = {
  allocation_strategy : string prop option; [@option]
      (** allocation_strategy *)
  instance_interruption_behavior : string prop option; [@option]
      (** instance_interruption_behavior *)
  instance_pools_to_use_count : float prop option; [@option]
      (** instance_pools_to_use_count *)
  maintenance_strategies : spot_options__maintenance_strategies list;
}
[@@deriving yojson_of]
(** spot_options *)

type target_capacity_specification = {
  default_target_capacity_type : string prop;
      (** default_target_capacity_type *)
  on_demand_target_capacity : float prop option; [@option]
      (** on_demand_target_capacity *)
  spot_target_capacity : float prop option; [@option]
      (** spot_target_capacity *)
  target_capacity_unit_type : string prop option; [@option]
      (** target_capacity_unit_type *)
  total_target_capacity : float prop;  (** total_target_capacity *)
}
[@@deriving yojson_of]
(** target_capacity_specification *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_fleet = {
  context : string prop option; [@option]  (** context *)
  excess_capacity_termination_policy : string prop option; [@option]
      (** excess_capacity_termination_policy *)
  fleet_state : string prop option; [@option]  (** fleet_state *)
  fulfilled_capacity : float prop option; [@option]
      (** fulfilled_capacity *)
  fulfilled_on_demand_capacity : float prop option; [@option]
      (** fulfilled_on_demand_capacity *)
  id : string prop option; [@option]  (** id *)
  replace_unhealthy_instances : bool prop option; [@option]
      (** replace_unhealthy_instances *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  terminate_instances : bool prop option; [@option]
      (** terminate_instances *)
  terminate_instances_with_expiration : bool prop option; [@option]
      (** terminate_instances_with_expiration *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  valid_from : string prop option; [@option]  (** valid_from *)
  valid_until : string prop option; [@option]  (** valid_until *)
  fleet_instance_set : fleet_instance_set list;
  launch_template_config : launch_template_config list;
  on_demand_options : on_demand_options list;
  spot_options : spot_options list;
  target_capacity_specification : target_capacity_specification list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_fleet *)

let fleet_instance_set ?instance_ids ?instance_type ?lifecycle
    ?platform () : fleet_instance_set =
  { instance_ids; instance_type; lifecycle; platform }

let launch_template_config__launch_template_specification
    ?launch_template_id ?launch_template_name ~version () :
    launch_template_config__launch_template_specification =
  { launch_template_id; launch_template_name; version }

let launch_template_config__override__instance_requirements__accelerator_count
    ?max ?min () :
    launch_template_config__override__instance_requirements__accelerator_count
    =
  { max; min }

let launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    ?max ?min () :
    launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    =
  { max; min }

let launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    ?max ?min () :
    launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  { max; min }

let launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    ?max ?min () :
    launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    =
  { max; min }

let launch_template_config__override__instance_requirements__memory_mib
    ?max ~min () :
    launch_template_config__override__instance_requirements__memory_mib
    =
  { max; min }

let launch_template_config__override__instance_requirements__network_bandwidth_gbps
    ?max ?min () :
    launch_template_config__override__instance_requirements__network_bandwidth_gbps
    =
  { max; min }

let launch_template_config__override__instance_requirements__network_interface_count
    ?max ?min () :
    launch_template_config__override__instance_requirements__network_interface_count
    =
  { max; min }

let launch_template_config__override__instance_requirements__total_local_storage_gb
    ?max ?min () :
    launch_template_config__override__instance_requirements__total_local_storage_gb
    =
  { max; min }

let launch_template_config__override__instance_requirements__vcpu_count
    ?max ~min () :
    launch_template_config__override__instance_requirements__vcpu_count
    =
  { max; min }

let launch_template_config__override__instance_requirements
    ?accelerator_manufacturers ?accelerator_names ?accelerator_types
    ?allowed_instance_types ?bare_metal ?burstable_performance
    ?cpu_manufacturers ?excluded_instance_types ?instance_generations
    ?local_storage ?local_storage_types
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price ~accelerator_count
    ~accelerator_total_memory_mib ~baseline_ebs_bandwidth_mbps
    ~memory_gib_per_vcpu ~memory_mib ~network_bandwidth_gbps
    ~network_interface_count ~total_local_storage_gb ~vcpu_count () :
    launch_template_config__override__instance_requirements =
  {
    accelerator_manufacturers;
    accelerator_names;
    accelerator_types;
    allowed_instance_types;
    bare_metal;
    burstable_performance;
    cpu_manufacturers;
    excluded_instance_types;
    instance_generations;
    local_storage;
    local_storage_types;
    on_demand_max_price_percentage_over_lowest_price;
    require_hibernate_support;
    spot_max_price_percentage_over_lowest_price;
    accelerator_count;
    accelerator_total_memory_mib;
    baseline_ebs_bandwidth_mbps;
    memory_gib_per_vcpu;
    memory_mib;
    network_bandwidth_gbps;
    network_interface_count;
    total_local_storage_gb;
    vcpu_count;
  }

let launch_template_config__override ?availability_zone
    ?instance_type ?max_price ?priority ?subnet_id ?weighted_capacity
    ~instance_requirements () : launch_template_config__override =
  {
    availability_zone;
    instance_type;
    max_price;
    priority;
    subnet_id;
    weighted_capacity;
    instance_requirements;
  }

let launch_template_config ~launch_template_specification ~override
    () : launch_template_config =
  { launch_template_specification; override }

let on_demand_options ?allocation_strategy ?max_total_price
    ?min_target_capacity ?single_availability_zone
    ?single_instance_type () : on_demand_options =
  {
    allocation_strategy;
    max_total_price;
    min_target_capacity;
    single_availability_zone;
    single_instance_type;
  }

let spot_options__maintenance_strategies__capacity_rebalance
    ?replacement_strategy ?termination_delay () :
    spot_options__maintenance_strategies__capacity_rebalance =
  { replacement_strategy; termination_delay }

let spot_options__maintenance_strategies ~capacity_rebalance () :
    spot_options__maintenance_strategies =
  { capacity_rebalance }

let spot_options ?allocation_strategy ?instance_interruption_behavior
    ?instance_pools_to_use_count ~maintenance_strategies () :
    spot_options =
  {
    allocation_strategy;
    instance_interruption_behavior;
    instance_pools_to_use_count;
    maintenance_strategies;
  }

let target_capacity_specification ?on_demand_target_capacity
    ?spot_target_capacity ?target_capacity_unit_type
    ~default_target_capacity_type ~total_target_capacity () :
    target_capacity_specification =
  {
    default_target_capacity_type;
    on_demand_target_capacity;
    spot_target_capacity;
    target_capacity_unit_type;
    total_target_capacity;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_fleet ?context ?excess_capacity_termination_policy
    ?fleet_state ?fulfilled_capacity ?fulfilled_on_demand_capacity
    ?id ?replace_unhealthy_instances ?tags ?tags_all
    ?terminate_instances ?terminate_instances_with_expiration ?type_
    ?valid_from ?valid_until ?timeouts ~fleet_instance_set
    ~launch_template_config ~on_demand_options ~spot_options
    ~target_capacity_specification () : aws_ec2_fleet =
  {
    context;
    excess_capacity_termination_policy;
    fleet_state;
    fulfilled_capacity;
    fulfilled_on_demand_capacity;
    id;
    replace_unhealthy_instances;
    tags;
    tags_all;
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

type t = {
  arn : string prop;
  context : string prop;
  excess_capacity_termination_policy : string prop;
  fleet_state : string prop;
  fulfilled_capacity : float prop;
  fulfilled_on_demand_capacity : float prop;
  id : string prop;
  replace_unhealthy_instances : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  terminate_instances : bool prop;
  terminate_instances_with_expiration : bool prop;
  type_ : string prop;
  valid_from : string prop;
  valid_until : string prop;
}

let register ?tf_module ?context ?excess_capacity_termination_policy
    ?fleet_state ?fulfilled_capacity ?fulfilled_on_demand_capacity
    ?id ?replace_unhealthy_instances ?tags ?tags_all
    ?terminate_instances ?terminate_instances_with_expiration ?type_
    ?valid_from ?valid_until ?timeouts ~fleet_instance_set
    ~launch_template_config ~on_demand_options ~spot_options
    ~target_capacity_specification __resource_id =
  let __resource_type = "aws_ec2_fleet" in
  let __resource =
    aws_ec2_fleet ?context ?excess_capacity_termination_policy
      ?fleet_state ?fulfilled_capacity ?fulfilled_on_demand_capacity
      ?id ?replace_unhealthy_instances ?tags ?tags_all
      ?terminate_instances ?terminate_instances_with_expiration
      ?type_ ?valid_from ?valid_until ?timeouts ~fleet_instance_set
      ~launch_template_config ~on_demand_options ~spot_options
      ~target_capacity_specification ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_fleet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       context =
         Prop.computed __resource_type __resource_id "context";
       excess_capacity_termination_policy =
         Prop.computed __resource_type __resource_id
           "excess_capacity_termination_policy";
       fleet_state =
         Prop.computed __resource_type __resource_id "fleet_state";
       fulfilled_capacity =
         Prop.computed __resource_type __resource_id
           "fulfilled_capacity";
       fulfilled_on_demand_capacity =
         Prop.computed __resource_type __resource_id
           "fulfilled_on_demand_capacity";
       id = Prop.computed __resource_type __resource_id "id";
       replace_unhealthy_instances =
         Prop.computed __resource_type __resource_id
           "replace_unhealthy_instances";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       terminate_instances =
         Prop.computed __resource_type __resource_id
           "terminate_instances";
       terminate_instances_with_expiration =
         Prop.computed __resource_type __resource_id
           "terminate_instances_with_expiration";
       type_ = Prop.computed __resource_type __resource_id "type";
       valid_from =
         Prop.computed __resource_type __resource_id "valid_from";
       valid_until =
         Prop.computed __resource_type __resource_id "valid_until";
     }
      : t)
  in
  __resource_attributes
