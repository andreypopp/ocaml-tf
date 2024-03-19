(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type launch_specification__ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** launch_specification__ebs_block_device *)

type launch_specification__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** launch_specification__ephemeral_block_device *)

type launch_specification__root_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** launch_specification__root_block_device *)

type launch_specification = {
  ami : string prop;  (** ami *)
  associate_public_ip_address : bool prop option; [@option]
      (** associate_public_ip_address *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  iam_instance_profile : string prop option; [@option]
      (** iam_instance_profile *)
  iam_instance_profile_arn : string prop option; [@option]
      (** iam_instance_profile_arn *)
  instance_type : string prop;  (** instance_type *)
  key_name : string prop option; [@option]  (** key_name *)
  monitoring : bool prop option; [@option]  (** monitoring *)
  placement_group : string prop option; [@option]
      (** placement_group *)
  placement_tenancy : string prop option; [@option]
      (** placement_tenancy *)
  spot_price : string prop option; [@option]  (** spot_price *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_data : string prop option; [@option]  (** user_data *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  weighted_capacity : string prop option; [@option]
      (** weighted_capacity *)
  ebs_block_device : launch_specification__ebs_block_device list;
  ephemeral_block_device :
    launch_specification__ephemeral_block_device list;
  root_block_device : launch_specification__root_block_device list;
}
[@@deriving yojson_of]
(** launch_specification *)

type launch_template_config__launch_template_specification = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** launch_template_config__launch_template_specification *)

type launch_template_config__overrides__instance_requirements__accelerator_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__accelerator_count *)

type launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib *)

type launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps *)

type launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu *)

type launch_template_config__overrides__instance_requirements__memory_mib = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__memory_mib *)

type launch_template_config__overrides__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__network_bandwidth_gbps *)

type launch_template_config__overrides__instance_requirements__network_interface_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__network_interface_count *)

type launch_template_config__overrides__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__total_local_storage_gb *)

type launch_template_config__overrides__instance_requirements__vcpu_count = {
  max : float prop option; [@option]  (** max *)
  min : float prop option; [@option]  (** min *)
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements__vcpu_count *)

type launch_template_config__overrides__instance_requirements = {
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
    launch_template_config__overrides__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    launch_template_config__overrides__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    launch_template_config__overrides__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    launch_template_config__overrides__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    launch_template_config__overrides__instance_requirements__vcpu_count
    list;
}
[@@deriving yojson_of]
(** launch_template_config__overrides__instance_requirements *)

type launch_template_config__overrides = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  instance_type : string prop option; [@option]  (** instance_type *)
  priority : float prop option; [@option]  (** priority *)
  spot_price : string prop option; [@option]  (** spot_price *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  instance_requirements :
    launch_template_config__overrides__instance_requirements list;
}
[@@deriving yojson_of]
(** launch_template_config__overrides *)

type launch_template_config = {
  launch_template_specification :
    launch_template_config__launch_template_specification list;
  overrides : launch_template_config__overrides list;
}
[@@deriving yojson_of]
(** launch_template_config *)

type spot_maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string prop option; [@option]
      (** replacement_strategy *)
}
[@@deriving yojson_of]
(** spot_maintenance_strategies__capacity_rebalance *)

type spot_maintenance_strategies = {
  capacity_rebalance :
    spot_maintenance_strategies__capacity_rebalance list;
}
[@@deriving yojson_of]
(** spot_maintenance_strategies *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_spot_fleet_request = {
  allocation_strategy : string prop option; [@option]
      (** allocation_strategy *)
  context : string prop option; [@option]  (** context *)
  excess_capacity_termination_policy : string prop option; [@option]
      (** excess_capacity_termination_policy *)
  fleet_type : string prop option; [@option]  (** fleet_type *)
  iam_fleet_role : string prop;  (** iam_fleet_role *)
  id : string prop option; [@option]  (** id *)
  instance_interruption_behaviour : string prop option; [@option]
      (** instance_interruption_behaviour *)
  instance_pools_to_use_count : float prop option; [@option]
      (** instance_pools_to_use_count *)
  load_balancers : string prop list option; [@option]
      (** load_balancers *)
  on_demand_allocation_strategy : string prop option; [@option]
      (** on_demand_allocation_strategy *)
  on_demand_max_total_price : string prop option; [@option]
      (** on_demand_max_total_price *)
  on_demand_target_capacity : float prop option; [@option]
      (** on_demand_target_capacity *)
  replace_unhealthy_instances : bool prop option; [@option]
      (** replace_unhealthy_instances *)
  spot_price : string prop option; [@option]  (** spot_price *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_capacity : float prop;  (** target_capacity *)
  target_capacity_unit_type : string prop option; [@option]
      (** target_capacity_unit_type *)
  target_group_arns : string prop list option; [@option]
      (** target_group_arns *)
  terminate_instances_on_delete : string prop option; [@option]
      (** terminate_instances_on_delete *)
  terminate_instances_with_expiration : bool prop option; [@option]
      (** terminate_instances_with_expiration *)
  valid_from : string prop option; [@option]  (** valid_from *)
  valid_until : string prop option; [@option]  (** valid_until *)
  wait_for_fulfillment : bool prop option; [@option]
      (** wait_for_fulfillment *)
  launch_specification : launch_specification list;
  launch_template_config : launch_template_config list;
  spot_maintenance_strategies : spot_maintenance_strategies list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_spot_fleet_request *)

let launch_specification__ebs_block_device ?delete_on_termination
    ?encrypted ?iops ?kms_key_id ?snapshot_id ?throughput
    ?volume_size ?volume_type ~device_name () :
    launch_specification__ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let launch_specification__ephemeral_block_device ~device_name
    ~virtual_name () : launch_specification__ephemeral_block_device =
  { device_name; virtual_name }

let launch_specification__root_block_device ?delete_on_termination
    ?encrypted ?iops ?kms_key_id ?throughput ?volume_size
    ?volume_type () : launch_specification__root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    throughput;
    volume_size;
    volume_type;
  }

let launch_specification ?associate_public_ip_address
    ?availability_zone ?ebs_optimized ?iam_instance_profile
    ?iam_instance_profile_arn ?key_name ?monitoring ?placement_group
    ?placement_tenancy ?spot_price ?subnet_id ?tags ?user_data
    ?vpc_security_group_ids ?weighted_capacity ~ami ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~root_block_device () :
    launch_specification =
  {
    ami;
    associate_public_ip_address;
    availability_zone;
    ebs_optimized;
    iam_instance_profile;
    iam_instance_profile_arn;
    instance_type;
    key_name;
    monitoring;
    placement_group;
    placement_tenancy;
    spot_price;
    subnet_id;
    tags;
    user_data;
    vpc_security_group_ids;
    weighted_capacity;
    ebs_block_device;
    ephemeral_block_device;
    root_block_device;
  }

let launch_template_config__launch_template_specification ?id ?name
    ?version () :
    launch_template_config__launch_template_specification =
  { id; name; version }

let launch_template_config__overrides__instance_requirements__accelerator_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__accelerator_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__memory_mib
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__memory_mib
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__network_interface_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__network_interface_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__total_local_storage_gb
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__total_local_storage_gb
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__vcpu_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__vcpu_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements
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
    launch_template_config__overrides__instance_requirements =
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

let launch_template_config__overrides ?availability_zone
    ?instance_type ?priority ?spot_price ?subnet_id
    ?weighted_capacity ~instance_requirements () :
    launch_template_config__overrides =
  {
    availability_zone;
    instance_type;
    priority;
    spot_price;
    subnet_id;
    weighted_capacity;
    instance_requirements;
  }

let launch_template_config ~launch_template_specification ~overrides
    () : launch_template_config =
  { launch_template_specification; overrides }

let spot_maintenance_strategies__capacity_rebalance
    ?replacement_strategy () :
    spot_maintenance_strategies__capacity_rebalance =
  { replacement_strategy }

let spot_maintenance_strategies ~capacity_rebalance () :
    spot_maintenance_strategies =
  { capacity_rebalance }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_spot_fleet_request ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type ?id
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?load_balancers ?on_demand_allocation_strategy
    ?on_demand_max_total_price ?on_demand_target_capacity
    ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
    ?target_capacity_unit_type ?target_group_arns
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?timeouts ~iam_fleet_role ~target_capacity
    ~launch_specification ~launch_template_config
    ~spot_maintenance_strategies () : aws_spot_fleet_request =
  {
    allocation_strategy;
    context;
    excess_capacity_termination_policy;
    fleet_type;
    iam_fleet_role;
    id;
    instance_interruption_behaviour;
    instance_pools_to_use_count;
    load_balancers;
    on_demand_allocation_strategy;
    on_demand_max_total_price;
    on_demand_target_capacity;
    replace_unhealthy_instances;
    spot_price;
    tags;
    tags_all;
    target_capacity;
    target_capacity_unit_type;
    target_group_arns;
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

type t = {
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

let register ?tf_module ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type ?id
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?load_balancers ?on_demand_allocation_strategy
    ?on_demand_max_total_price ?on_demand_target_capacity
    ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
    ?target_capacity_unit_type ?target_group_arns
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?timeouts ~iam_fleet_role ~target_capacity
    ~launch_specification ~launch_template_config
    ~spot_maintenance_strategies __resource_id =
  let __resource_type = "aws_spot_fleet_request" in
  let __resource =
    aws_spot_fleet_request ?allocation_strategy ?context
      ?excess_capacity_termination_policy ?fleet_type ?id
      ?instance_interruption_behaviour ?instance_pools_to_use_count
      ?load_balancers ?on_demand_allocation_strategy
      ?on_demand_max_total_price ?on_demand_target_capacity
      ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
      ?target_capacity_unit_type ?target_group_arns
      ?terminate_instances_on_delete
      ?terminate_instances_with_expiration ?valid_from ?valid_until
      ?wait_for_fulfillment ?timeouts ~iam_fleet_role
      ~target_capacity ~launch_specification ~launch_template_config
      ~spot_maintenance_strategies ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_spot_fleet_request __resource);
  let __resource_attributes =
    ({
       allocation_strategy =
         Prop.computed __resource_type __resource_id
           "allocation_strategy";
       client_token =
         Prop.computed __resource_type __resource_id "client_token";
       context =
         Prop.computed __resource_type __resource_id "context";
       excess_capacity_termination_policy =
         Prop.computed __resource_type __resource_id
           "excess_capacity_termination_policy";
       fleet_type =
         Prop.computed __resource_type __resource_id "fleet_type";
       iam_fleet_role =
         Prop.computed __resource_type __resource_id "iam_fleet_role";
       id = Prop.computed __resource_type __resource_id "id";
       instance_interruption_behaviour =
         Prop.computed __resource_type __resource_id
           "instance_interruption_behaviour";
       instance_pools_to_use_count =
         Prop.computed __resource_type __resource_id
           "instance_pools_to_use_count";
       load_balancers =
         Prop.computed __resource_type __resource_id "load_balancers";
       on_demand_allocation_strategy =
         Prop.computed __resource_type __resource_id
           "on_demand_allocation_strategy";
       on_demand_max_total_price =
         Prop.computed __resource_type __resource_id
           "on_demand_max_total_price";
       on_demand_target_capacity =
         Prop.computed __resource_type __resource_id
           "on_demand_target_capacity";
       replace_unhealthy_instances =
         Prop.computed __resource_type __resource_id
           "replace_unhealthy_instances";
       spot_price =
         Prop.computed __resource_type __resource_id "spot_price";
       spot_request_state =
         Prop.computed __resource_type __resource_id
           "spot_request_state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_capacity =
         Prop.computed __resource_type __resource_id
           "target_capacity";
       target_capacity_unit_type =
         Prop.computed __resource_type __resource_id
           "target_capacity_unit_type";
       target_group_arns =
         Prop.computed __resource_type __resource_id
           "target_group_arns";
       terminate_instances_on_delete =
         Prop.computed __resource_type __resource_id
           "terminate_instances_on_delete";
       terminate_instances_with_expiration =
         Prop.computed __resource_type __resource_id
           "terminate_instances_with_expiration";
       valid_from =
         Prop.computed __resource_type __resource_id "valid_from";
       valid_until =
         Prop.computed __resource_type __resource_id "valid_until";
       wait_for_fulfillment =
         Prop.computed __resource_type __resource_id
           "wait_for_fulfillment";
     }
      : t)
  in
  __resource_attributes
