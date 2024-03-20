(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_termination_policy = {
  idle_timeout : float prop option; [@option]  (** idle_timeout *)
}
[@@deriving yojson_of]
(** auto_termination_policy *)

type bootstrap_action = {
  args : string prop list option; [@option]  (** args *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** bootstrap_action *)

type core_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** core_instance_fleet__instance_type_configs__configurations *)

type core_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** core_instance_fleet__instance_type_configs__ebs_config *)

type core_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations :
    core_instance_fleet__instance_type_configs__configurations list;
  ebs_config :
    core_instance_fleet__instance_type_configs__ebs_config list;
}
[@@deriving yojson_of]
(** core_instance_fleet__instance_type_configs *)

type core_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** core_instance_fleet__launch_specifications__on_demand_specification *)

type core_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** core_instance_fleet__launch_specifications__spot_specification *)

type core_instance_fleet__launch_specifications = {
  on_demand_specification :
    core_instance_fleet__launch_specifications__on_demand_specification
    list;
  spot_specification :
    core_instance_fleet__launch_specifications__spot_specification
    list;
}
[@@deriving yojson_of]
(** core_instance_fleet__launch_specifications *)

type core_instance_fleet = {
  name : string prop option; [@option]  (** name *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    core_instance_fleet__instance_type_configs list;
  launch_specifications :
    core_instance_fleet__launch_specifications list;
}
[@@deriving yojson_of]
(** core_instance_fleet *)

type core_instance_group__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** core_instance_group__ebs_config *)

type core_instance_group = {
  autoscaling_policy : string prop option; [@option]
      (** autoscaling_policy *)
  bid_price : string prop option; [@option]  (** bid_price *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  name : string prop option; [@option]  (** name *)
  ebs_config : core_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** core_instance_group *)

type ec2_attributes = {
  additional_master_security_groups : string prop option; [@option]
      (** additional_master_security_groups *)
  additional_slave_security_groups : string prop option; [@option]
      (** additional_slave_security_groups *)
  emr_managed_master_security_group : string prop option; [@option]
      (** emr_managed_master_security_group *)
  emr_managed_slave_security_group : string prop option; [@option]
      (** emr_managed_slave_security_group *)
  instance_profile : string prop;  (** instance_profile *)
  key_name : string prop option; [@option]  (** key_name *)
  service_access_security_group : string prop option; [@option]
      (** service_access_security_group *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** ec2_attributes *)

type kerberos_attributes = {
  ad_domain_join_password : string prop option; [@option]
      (** ad_domain_join_password *)
  ad_domain_join_user : string prop option; [@option]
      (** ad_domain_join_user *)
  cross_realm_trust_principal_password : string prop option;
      [@option]
      (** cross_realm_trust_principal_password *)
  kdc_admin_password : string prop;  (** kdc_admin_password *)
  realm : string prop;  (** realm *)
}
[@@deriving yojson_of]
(** kerberos_attributes *)

type master_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** master_instance_fleet__instance_type_configs__configurations *)

type master_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** master_instance_fleet__instance_type_configs__ebs_config *)

type master_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations :
    master_instance_fleet__instance_type_configs__configurations list;
  ebs_config :
    master_instance_fleet__instance_type_configs__ebs_config list;
}
[@@deriving yojson_of]
(** master_instance_fleet__instance_type_configs *)

type master_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** master_instance_fleet__launch_specifications__on_demand_specification *)

type master_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** master_instance_fleet__launch_specifications__spot_specification *)

type master_instance_fleet__launch_specifications = {
  on_demand_specification :
    master_instance_fleet__launch_specifications__on_demand_specification
    list;
  spot_specification :
    master_instance_fleet__launch_specifications__spot_specification
    list;
}
[@@deriving yojson_of]
(** master_instance_fleet__launch_specifications *)

type master_instance_fleet = {
  name : string prop option; [@option]  (** name *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    master_instance_fleet__instance_type_configs list;
  launch_specifications :
    master_instance_fleet__launch_specifications list;
}
[@@deriving yojson_of]
(** master_instance_fleet *)

type master_instance_group__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** master_instance_group__ebs_config *)

type master_instance_group = {
  bid_price : string prop option; [@option]  (** bid_price *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  name : string prop option; [@option]  (** name *)
  ebs_config : master_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** master_instance_group *)

type placement_group_config = {
  instance_role : string prop;  (** instance_role *)
  placement_strategy : string prop;  (** placement_strategy *)
}
[@@deriving yojson_of]

type step__hadoop_jar_step = {
  args : string prop list;  (** args *)
  jar : string prop;  (** jar *)
  main_class : string prop;  (** main_class *)
  properties : (string * string prop) list;  (** properties *)
}
[@@deriving yojson_of]

type step = {
  action_on_failure : string prop;  (** action_on_failure *)
  hadoop_jar_step : step__hadoop_jar_step list;
      (** hadoop_jar_step *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_emr_cluster = {
  additional_info : string prop option; [@option]
      (** additional_info *)
  applications : string prop list option; [@option]
      (** applications *)
  autoscaling_role : string prop option; [@option]
      (** autoscaling_role *)
  configurations : string prop option; [@option]
      (** configurations *)
  configurations_json : string prop option; [@option]
      (** configurations_json *)
  custom_ami_id : string prop option; [@option]  (** custom_ami_id *)
  ebs_root_volume_size : float prop option; [@option]
      (** ebs_root_volume_size *)
  id : string prop option; [@option]  (** id *)
  keep_job_flow_alive_when_no_steps : bool prop option; [@option]
      (** keep_job_flow_alive_when_no_steps *)
  list_steps_states : string prop list option; [@option]
      (** list_steps_states *)
  log_encryption_kms_key_id : string prop option; [@option]
      (** log_encryption_kms_key_id *)
  log_uri : string prop option; [@option]  (** log_uri *)
  name : string prop;  (** name *)
  placement_group_config : placement_group_config list option;
      [@option]
      (** placement_group_config *)
  release_label : string prop;  (** release_label *)
  scale_down_behavior : string prop option; [@option]
      (** scale_down_behavior *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  service_role : string prop;  (** service_role *)
  step : step list option; [@option]  (** step *)
  step_concurrency_level : float prop option; [@option]
      (** step_concurrency_level *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  termination_protection : bool prop option; [@option]
      (** termination_protection *)
  visible_to_all_users : bool prop option; [@option]
      (** visible_to_all_users *)
  auto_termination_policy : auto_termination_policy list;
  bootstrap_action : bootstrap_action list;
  core_instance_fleet : core_instance_fleet list;
  core_instance_group : core_instance_group list;
  ec2_attributes : ec2_attributes list;
  kerberos_attributes : kerberos_attributes list;
  master_instance_fleet : master_instance_fleet list;
  master_instance_group : master_instance_group list;
}
[@@deriving yojson_of]
(** aws_emr_cluster *)

let auto_termination_policy ?idle_timeout () :
    auto_termination_policy =
  { idle_timeout }

let bootstrap_action ?args ~name ~path () : bootstrap_action =
  { args; name; path }

let core_instance_fleet__instance_type_configs__configurations
    ?classification ?properties () :
    core_instance_fleet__instance_type_configs__configurations =
  { classification; properties }

let core_instance_fleet__instance_type_configs__ebs_config ?iops
    ?volumes_per_instance ~size ~type_ () :
    core_instance_fleet__instance_type_configs__ebs_config =
  { iops; size; type_; volumes_per_instance }

let core_instance_fleet__instance_type_configs ?bid_price
    ?bid_price_as_percentage_of_on_demand_price ?weighted_capacity
    ~instance_type ~configurations ~ebs_config () :
    core_instance_fleet__instance_type_configs =
  {
    bid_price;
    bid_price_as_percentage_of_on_demand_price;
    instance_type;
    weighted_capacity;
    configurations;
    ebs_config;
  }

let core_instance_fleet__launch_specifications__on_demand_specification
    ~allocation_strategy () :
    core_instance_fleet__launch_specifications__on_demand_specification
    =
  { allocation_strategy }

let core_instance_fleet__launch_specifications__spot_specification
    ?block_duration_minutes ~allocation_strategy ~timeout_action
    ~timeout_duration_minutes () :
    core_instance_fleet__launch_specifications__spot_specification =
  {
    allocation_strategy;
    block_duration_minutes;
    timeout_action;
    timeout_duration_minutes;
  }

let core_instance_fleet__launch_specifications
    ~on_demand_specification ~spot_specification () :
    core_instance_fleet__launch_specifications =
  { on_demand_specification; spot_specification }

let core_instance_fleet ?name ?target_on_demand_capacity
    ?target_spot_capacity ~instance_type_configs
    ~launch_specifications () : core_instance_fleet =
  {
    name;
    target_on_demand_capacity;
    target_spot_capacity;
    instance_type_configs;
    launch_specifications;
  }

let core_instance_group__ebs_config ?iops ?throughput
    ?volumes_per_instance ~size ~type_ () :
    core_instance_group__ebs_config =
  { iops; size; throughput; type_; volumes_per_instance }

let core_instance_group ?autoscaling_policy ?bid_price
    ?instance_count ?name ~instance_type ~ebs_config () :
    core_instance_group =
  {
    autoscaling_policy;
    bid_price;
    instance_count;
    instance_type;
    name;
    ebs_config;
  }

let ec2_attributes ?additional_master_security_groups
    ?additional_slave_security_groups
    ?emr_managed_master_security_group
    ?emr_managed_slave_security_group ?key_name
    ?service_access_security_group ?subnet_id ?subnet_ids
    ~instance_profile () : ec2_attributes =
  {
    additional_master_security_groups;
    additional_slave_security_groups;
    emr_managed_master_security_group;
    emr_managed_slave_security_group;
    instance_profile;
    key_name;
    service_access_security_group;
    subnet_id;
    subnet_ids;
  }

let kerberos_attributes ?ad_domain_join_password ?ad_domain_join_user
    ?cross_realm_trust_principal_password ~kdc_admin_password ~realm
    () : kerberos_attributes =
  {
    ad_domain_join_password;
    ad_domain_join_user;
    cross_realm_trust_principal_password;
    kdc_admin_password;
    realm;
  }

let master_instance_fleet__instance_type_configs__configurations
    ?classification ?properties () :
    master_instance_fleet__instance_type_configs__configurations =
  { classification; properties }

let master_instance_fleet__instance_type_configs__ebs_config ?iops
    ?volumes_per_instance ~size ~type_ () :
    master_instance_fleet__instance_type_configs__ebs_config =
  { iops; size; type_; volumes_per_instance }

let master_instance_fleet__instance_type_configs ?bid_price
    ?bid_price_as_percentage_of_on_demand_price ?weighted_capacity
    ~instance_type ~configurations ~ebs_config () :
    master_instance_fleet__instance_type_configs =
  {
    bid_price;
    bid_price_as_percentage_of_on_demand_price;
    instance_type;
    weighted_capacity;
    configurations;
    ebs_config;
  }

let master_instance_fleet__launch_specifications__on_demand_specification
    ~allocation_strategy () :
    master_instance_fleet__launch_specifications__on_demand_specification
    =
  { allocation_strategy }

let master_instance_fleet__launch_specifications__spot_specification
    ?block_duration_minutes ~allocation_strategy ~timeout_action
    ~timeout_duration_minutes () :
    master_instance_fleet__launch_specifications__spot_specification
    =
  {
    allocation_strategy;
    block_duration_minutes;
    timeout_action;
    timeout_duration_minutes;
  }

let master_instance_fleet__launch_specifications
    ~on_demand_specification ~spot_specification () :
    master_instance_fleet__launch_specifications =
  { on_demand_specification; spot_specification }

let master_instance_fleet ?name ?target_on_demand_capacity
    ?target_spot_capacity ~instance_type_configs
    ~launch_specifications () : master_instance_fleet =
  {
    name;
    target_on_demand_capacity;
    target_spot_capacity;
    instance_type_configs;
    launch_specifications;
  }

let master_instance_group__ebs_config ?iops ?throughput
    ?volumes_per_instance ~size ~type_ () :
    master_instance_group__ebs_config =
  { iops; size; throughput; type_; volumes_per_instance }

let master_instance_group ?bid_price ?instance_count ?name
    ~instance_type ~ebs_config () : master_instance_group =
  { bid_price; instance_count; instance_type; name; ebs_config }

let aws_emr_cluster ?additional_info ?applications ?autoscaling_role
    ?configurations ?configurations_json ?custom_ami_id
    ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
    ?list_steps_states ?log_encryption_kms_key_id ?log_uri
    ?placement_group_config ?scale_down_behavior
    ?security_configuration ?step ?step_concurrency_level ?tags
    ?tags_all ?termination_protection ?visible_to_all_users ~name
    ~release_label ~service_role ~auto_termination_policy
    ~bootstrap_action ~core_instance_fleet ~core_instance_group
    ~ec2_attributes ~kerberos_attributes ~master_instance_fleet
    ~master_instance_group () : aws_emr_cluster =
  {
    additional_info;
    applications;
    autoscaling_role;
    configurations;
    configurations_json;
    custom_ami_id;
    ebs_root_volume_size;
    id;
    keep_job_flow_alive_when_no_steps;
    list_steps_states;
    log_encryption_kms_key_id;
    log_uri;
    name;
    placement_group_config;
    release_label;
    scale_down_behavior;
    security_configuration;
    service_role;
    step;
    step_concurrency_level;
    tags;
    tags_all;
    termination_protection;
    visible_to_all_users;
    auto_termination_policy;
    bootstrap_action;
    core_instance_fleet;
    core_instance_group;
    ec2_attributes;
    kerberos_attributes;
    master_instance_fleet;
    master_instance_group;
  }

type t = {
  additional_info : string prop;
  applications : string list prop;
  arn : string prop;
  autoscaling_role : string prop;
  cluster_state : string prop;
  configurations : string prop;
  configurations_json : string prop;
  custom_ami_id : string prop;
  ebs_root_volume_size : float prop;
  id : string prop;
  keep_job_flow_alive_when_no_steps : bool prop;
  list_steps_states : string list prop;
  log_encryption_kms_key_id : string prop;
  log_uri : string prop;
  master_public_dns : string prop;
  name : string prop;
  placement_group_config : placement_group_config list prop;
  release_label : string prop;
  scale_down_behavior : string prop;
  security_configuration : string prop;
  service_role : string prop;
  step : step list prop;
  step_concurrency_level : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  termination_protection : bool prop;
  visible_to_all_users : bool prop;
}

let make ?additional_info ?applications ?autoscaling_role
    ?configurations ?configurations_json ?custom_ami_id
    ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
    ?list_steps_states ?log_encryption_kms_key_id ?log_uri
    ?placement_group_config ?scale_down_behavior
    ?security_configuration ?step ?step_concurrency_level ?tags
    ?tags_all ?termination_protection ?visible_to_all_users ~name
    ~release_label ~service_role ~auto_termination_policy
    ~bootstrap_action ~core_instance_fleet ~core_instance_group
    ~ec2_attributes ~kerberos_attributes ~master_instance_fleet
    ~master_instance_group __id =
  let __type = "aws_emr_cluster" in
  let __attrs =
    ({
       additional_info = Prop.computed __type __id "additional_info";
       applications = Prop.computed __type __id "applications";
       arn = Prop.computed __type __id "arn";
       autoscaling_role =
         Prop.computed __type __id "autoscaling_role";
       cluster_state = Prop.computed __type __id "cluster_state";
       configurations = Prop.computed __type __id "configurations";
       configurations_json =
         Prop.computed __type __id "configurations_json";
       custom_ami_id = Prop.computed __type __id "custom_ami_id";
       ebs_root_volume_size =
         Prop.computed __type __id "ebs_root_volume_size";
       id = Prop.computed __type __id "id";
       keep_job_flow_alive_when_no_steps =
         Prop.computed __type __id
           "keep_job_flow_alive_when_no_steps";
       list_steps_states =
         Prop.computed __type __id "list_steps_states";
       log_encryption_kms_key_id =
         Prop.computed __type __id "log_encryption_kms_key_id";
       log_uri = Prop.computed __type __id "log_uri";
       master_public_dns =
         Prop.computed __type __id "master_public_dns";
       name = Prop.computed __type __id "name";
       placement_group_config =
         Prop.computed __type __id "placement_group_config";
       release_label = Prop.computed __type __id "release_label";
       scale_down_behavior =
         Prop.computed __type __id "scale_down_behavior";
       security_configuration =
         Prop.computed __type __id "security_configuration";
       service_role = Prop.computed __type __id "service_role";
       step = Prop.computed __type __id "step";
       step_concurrency_level =
         Prop.computed __type __id "step_concurrency_level";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       termination_protection =
         Prop.computed __type __id "termination_protection";
       visible_to_all_users =
         Prop.computed __type __id "visible_to_all_users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_cluster
        (aws_emr_cluster ?additional_info ?applications
           ?autoscaling_role ?configurations ?configurations_json
           ?custom_ami_id ?ebs_root_volume_size ?id
           ?keep_job_flow_alive_when_no_steps ?list_steps_states
           ?log_encryption_kms_key_id ?log_uri
           ?placement_group_config ?scale_down_behavior
           ?security_configuration ?step ?step_concurrency_level
           ?tags ?tags_all ?termination_protection
           ?visible_to_all_users ~name ~release_label ~service_role
           ~auto_termination_policy ~bootstrap_action
           ~core_instance_fleet ~core_instance_group ~ec2_attributes
           ~kerberos_attributes ~master_instance_fleet
           ~master_instance_group ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_info ?applications
    ?autoscaling_role ?configurations ?configurations_json
    ?custom_ami_id ?ebs_root_volume_size ?id
    ?keep_job_flow_alive_when_no_steps ?list_steps_states
    ?log_encryption_kms_key_id ?log_uri ?placement_group_config
    ?scale_down_behavior ?security_configuration ?step
    ?step_concurrency_level ?tags ?tags_all ?termination_protection
    ?visible_to_all_users ~name ~release_label ~service_role
    ~auto_termination_policy ~bootstrap_action ~core_instance_fleet
    ~core_instance_group ~ec2_attributes ~kerberos_attributes
    ~master_instance_fleet ~master_instance_group __id =
  let (r : _ Tf_core.resource) =
    make ?additional_info ?applications ?autoscaling_role
      ?configurations ?configurations_json ?custom_ami_id
      ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
      ?list_steps_states ?log_encryption_kms_key_id ?log_uri
      ?placement_group_config ?scale_down_behavior
      ?security_configuration ?step ?step_concurrency_level ?tags
      ?tags_all ?termination_protection ?visible_to_all_users ~name
      ~release_label ~service_role ~auto_termination_policy
      ~bootstrap_action ~core_instance_fleet ~core_instance_group
      ~ec2_attributes ~kerberos_attributes ~master_instance_fleet
      ~master_instance_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
