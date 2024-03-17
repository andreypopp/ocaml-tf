(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_cluster__auto_termination_policy = {
  idle_timeout : float prop option; [@option]  (** idle_timeout *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__auto_termination_policy *)

type aws_emr_cluster__bootstrap_action = {
  args : string prop list option; [@option]  (** args *)
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__bootstrap_action *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations :
    aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations
    list;
  ebs_config :
    aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config
    list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__instance_type_configs *)

type aws_emr_cluster__core_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__launch_specifications__on_demand_specification *)

type aws_emr_cluster__core_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__launch_specifications__spot_specification *)

type aws_emr_cluster__core_instance_fleet__launch_specifications = {
  on_demand_specification :
    aws_emr_cluster__core_instance_fleet__launch_specifications__on_demand_specification
    list;
  spot_specification :
    aws_emr_cluster__core_instance_fleet__launch_specifications__spot_specification
    list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__launch_specifications *)

type aws_emr_cluster__core_instance_fleet = {
  id : string prop;  (** id *)
  name : string prop option; [@option]  (** name *)
  provisioned_on_demand_capacity : float prop;
      (** provisioned_on_demand_capacity *)
  provisioned_spot_capacity : float prop;
      (** provisioned_spot_capacity *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    aws_emr_cluster__core_instance_fleet__instance_type_configs list;
  launch_specifications :
    aws_emr_cluster__core_instance_fleet__launch_specifications list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet *)

type aws_emr_cluster__core_instance_group__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_group__ebs_config *)

type aws_emr_cluster__core_instance_group = {
  autoscaling_policy : string prop option; [@option]
      (** autoscaling_policy *)
  bid_price : string prop option; [@option]  (** bid_price *)
  id : string prop;  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  name : string prop option; [@option]  (** name *)
  ebs_config : aws_emr_cluster__core_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_group *)

type aws_emr_cluster__ec2_attributes = {
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
(** aws_emr_cluster__ec2_attributes *)

type aws_emr_cluster__kerberos_attributes = {
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
(** aws_emr_cluster__kerberos_attributes *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations :
    aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations
    list;
  ebs_config :
    aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config
    list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__instance_type_configs *)

type aws_emr_cluster__master_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__launch_specifications__on_demand_specification *)

type aws_emr_cluster__master_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__launch_specifications__spot_specification *)

type aws_emr_cluster__master_instance_fleet__launch_specifications = {
  on_demand_specification :
    aws_emr_cluster__master_instance_fleet__launch_specifications__on_demand_specification
    list;
  spot_specification :
    aws_emr_cluster__master_instance_fleet__launch_specifications__spot_specification
    list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__launch_specifications *)

type aws_emr_cluster__master_instance_fleet = {
  id : string prop;  (** id *)
  name : string prop option; [@option]  (** name *)
  provisioned_on_demand_capacity : float prop;
      (** provisioned_on_demand_capacity *)
  provisioned_spot_capacity : float prop;
      (** provisioned_spot_capacity *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    aws_emr_cluster__master_instance_fleet__instance_type_configs
    list;
  launch_specifications :
    aws_emr_cluster__master_instance_fleet__launch_specifications
    list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet *)

type aws_emr_cluster__master_instance_group__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  throughput : float prop option; [@option]  (** throughput *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_group__ebs_config *)

type aws_emr_cluster__master_instance_group = {
  bid_price : string prop option; [@option]  (** bid_price *)
  id : string prop;  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  name : string prop option; [@option]  (** name *)
  ebs_config :
    aws_emr_cluster__master_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_group *)

type aws_emr_cluster__placement_group_config = {
  instance_role : string prop;  (** instance_role *)
  placement_strategy : string prop;  (** placement_strategy *)
}
[@@deriving yojson_of]

type aws_emr_cluster__step__hadoop_jar_step = {
  args : string prop list;  (** args *)
  jar : string prop;  (** jar *)
  main_class : string prop;  (** main_class *)
  properties : (string * string prop) list;  (** properties *)
}
[@@deriving yojson_of]

type aws_emr_cluster__step = {
  action_on_failure : string prop;  (** action_on_failure *)
  hadoop_jar_step : aws_emr_cluster__step__hadoop_jar_step list;
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
  placement_group_config :
    aws_emr_cluster__placement_group_config list option;
      [@option]
      (** placement_group_config *)
  release_label : string prop;  (** release_label *)
  scale_down_behavior : string prop option; [@option]
      (** scale_down_behavior *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  service_role : string prop;  (** service_role *)
  step : aws_emr_cluster__step list option; [@option]  (** step *)
  step_concurrency_level : float prop option; [@option]
      (** step_concurrency_level *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  termination_protection : bool prop option; [@option]
      (** termination_protection *)
  visible_to_all_users : bool prop option; [@option]
      (** visible_to_all_users *)
  auto_termination_policy :
    aws_emr_cluster__auto_termination_policy list;
  bootstrap_action : aws_emr_cluster__bootstrap_action list;
  core_instance_fleet : aws_emr_cluster__core_instance_fleet list;
  core_instance_group : aws_emr_cluster__core_instance_group list;
  ec2_attributes : aws_emr_cluster__ec2_attributes list;
  kerberos_attributes : aws_emr_cluster__kerberos_attributes list;
  master_instance_fleet :
    aws_emr_cluster__master_instance_fleet list;
  master_instance_group : aws_emr_cluster__master_instance_group list;
}
[@@deriving yojson_of]
(** aws_emr_cluster *)

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
    ~master_instance_group __resource_id =
  let __resource_type = "aws_emr_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_cluster __resource);
  ()
