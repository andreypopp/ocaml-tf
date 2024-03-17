(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_emr_cluster__auto_termination_policy = {
  idle_timeout : float option; [@option]  (** idle_timeout *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__auto_termination_policy *)

type aws_emr_cluster__bootstrap_action = {
  args : string list option; [@option]  (** args *)
  name : string;  (** name *)
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__bootstrap_action *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations = {
  classification : string option; [@option]  (** classification *)
  properties : (string * string) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config = {
  iops : float option; [@option]  (** iops *)
  size : float;  (** size *)
  type_ : string; [@key "type"]  (** type *)
  volumes_per_instance : float option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config *)

type aws_emr_cluster__core_instance_fleet__instance_type_configs = {
  bid_price : string option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string;  (** instance_type *)
  weighted_capacity : float option; [@option]
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
  allocation_strategy : string;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet__launch_specifications__on_demand_specification *)

type aws_emr_cluster__core_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string;  (** allocation_strategy *)
  block_duration_minutes : float option; [@option]
      (** block_duration_minutes *)
  timeout_action : string;  (** timeout_action *)
  timeout_duration_minutes : float;  (** timeout_duration_minutes *)
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
  id : string;  (** id *)
  name : string option; [@option]  (** name *)
  provisioned_on_demand_capacity : float;
      (** provisioned_on_demand_capacity *)
  provisioned_spot_capacity : float;
      (** provisioned_spot_capacity *)
  target_on_demand_capacity : float option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    aws_emr_cluster__core_instance_fleet__instance_type_configs list;
  launch_specifications :
    aws_emr_cluster__core_instance_fleet__launch_specifications list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_fleet *)

type aws_emr_cluster__core_instance_group__ebs_config = {
  iops : float option; [@option]  (** iops *)
  size : float;  (** size *)
  throughput : float option; [@option]  (** throughput *)
  type_ : string; [@key "type"]  (** type *)
  volumes_per_instance : float option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_group__ebs_config *)

type aws_emr_cluster__core_instance_group = {
  autoscaling_policy : string option; [@option]
      (** autoscaling_policy *)
  bid_price : string option; [@option]  (** bid_price *)
  id : string;  (** id *)
  instance_count : float option; [@option]  (** instance_count *)
  instance_type : string;  (** instance_type *)
  name : string option; [@option]  (** name *)
  ebs_config : aws_emr_cluster__core_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__core_instance_group *)

type aws_emr_cluster__ec2_attributes = {
  additional_master_security_groups : string option; [@option]
      (** additional_master_security_groups *)
  additional_slave_security_groups : string option; [@option]
      (** additional_slave_security_groups *)
  emr_managed_master_security_group : string option; [@option]
      (** emr_managed_master_security_group *)
  emr_managed_slave_security_group : string option; [@option]
      (** emr_managed_slave_security_group *)
  instance_profile : string;  (** instance_profile *)
  key_name : string option; [@option]  (** key_name *)
  service_access_security_group : string option; [@option]
      (** service_access_security_group *)
  subnet_id : string option; [@option]  (** subnet_id *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__ec2_attributes *)

type aws_emr_cluster__kerberos_attributes = {
  ad_domain_join_password : string option; [@option]
      (** ad_domain_join_password *)
  ad_domain_join_user : string option; [@option]
      (** ad_domain_join_user *)
  cross_realm_trust_principal_password : string option; [@option]
      (** cross_realm_trust_principal_password *)
  kdc_admin_password : string;  (** kdc_admin_password *)
  realm : string;  (** realm *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__kerberos_attributes *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations = {
  classification : string option; [@option]  (** classification *)
  properties : (string * string) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config = {
  iops : float option; [@option]  (** iops *)
  size : float;  (** size *)
  type_ : string; [@key "type"]  (** type *)
  volumes_per_instance : float option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config *)

type aws_emr_cluster__master_instance_fleet__instance_type_configs = {
  bid_price : string option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string;  (** instance_type *)
  weighted_capacity : float option; [@option]
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
  allocation_strategy : string;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_fleet__launch_specifications__on_demand_specification *)

type aws_emr_cluster__master_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string;  (** allocation_strategy *)
  block_duration_minutes : float option; [@option]
      (** block_duration_minutes *)
  timeout_action : string;  (** timeout_action *)
  timeout_duration_minutes : float;  (** timeout_duration_minutes *)
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
  id : string;  (** id *)
  name : string option; [@option]  (** name *)
  provisioned_on_demand_capacity : float;
      (** provisioned_on_demand_capacity *)
  provisioned_spot_capacity : float;
      (** provisioned_spot_capacity *)
  target_on_demand_capacity : float option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float option; [@option]
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
  iops : float option; [@option]  (** iops *)
  size : float;  (** size *)
  throughput : float option; [@option]  (** throughput *)
  type_ : string; [@key "type"]  (** type *)
  volumes_per_instance : float option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_group__ebs_config *)

type aws_emr_cluster__master_instance_group = {
  bid_price : string option; [@option]  (** bid_price *)
  id : string;  (** id *)
  instance_count : float option; [@option]  (** instance_count *)
  instance_type : string;  (** instance_type *)
  name : string option; [@option]  (** name *)
  ebs_config :
    aws_emr_cluster__master_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_cluster__master_instance_group *)

type aws_emr_cluster__placement_group_config = {
  instance_role : string;  (** instance_role *)
  placement_strategy : string;  (** placement_strategy *)
}
[@@deriving yojson_of]

type aws_emr_cluster__step__hadoop_jar_step = {
  args : string list;  (** args *)
  jar : string;  (** jar *)
  main_class : string;  (** main_class *)
  properties : (string * string) list;  (** properties *)
}
[@@deriving yojson_of]

type aws_emr_cluster__step = {
  action_on_failure : string;  (** action_on_failure *)
  hadoop_jar_step : aws_emr_cluster__step__hadoop_jar_step list;
      (** hadoop_jar_step *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_emr_cluster = {
  additional_info : string option; [@option]  (** additional_info *)
  applications : string list option; [@option]  (** applications *)
  autoscaling_role : string option; [@option]
      (** autoscaling_role *)
  configurations : string option; [@option]  (** configurations *)
  configurations_json : string option; [@option]
      (** configurations_json *)
  custom_ami_id : string option; [@option]  (** custom_ami_id *)
  ebs_root_volume_size : float option; [@option]
      (** ebs_root_volume_size *)
  list_steps_states : string list option; [@option]
      (** list_steps_states *)
  log_encryption_kms_key_id : string option; [@option]
      (** log_encryption_kms_key_id *)
  log_uri : string option; [@option]  (** log_uri *)
  name : string;  (** name *)
  placement_group_config :
    aws_emr_cluster__placement_group_config list option;
      [@option]
      (** placement_group_config *)
  release_label : string;  (** release_label *)
  security_configuration : string option; [@option]
      (** security_configuration *)
  service_role : string;  (** service_role *)
  step_concurrency_level : float option; [@option]
      (** step_concurrency_level *)
  tags : (string * string) list option; [@option]  (** tags *)
  visible_to_all_users : bool option; [@option]
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
    ?ebs_root_volume_size ?list_steps_states
    ?log_encryption_kms_key_id ?log_uri ?placement_group_config
    ?security_configuration ?step_concurrency_level ?tags
    ?visible_to_all_users ~name ~release_label ~service_role
    ~auto_termination_policy ~bootstrap_action ~core_instance_fleet
    ~core_instance_group ~ec2_attributes ~kerberos_attributes
    ~master_instance_fleet ~master_instance_group __resource_id =
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
      list_steps_states;
      log_encryption_kms_key_id;
      log_uri;
      name;
      placement_group_config;
      release_label;
      security_configuration;
      service_role;
      step_concurrency_level;
      tags;
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
