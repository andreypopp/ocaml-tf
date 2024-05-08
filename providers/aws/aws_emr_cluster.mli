(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type placement_group_config = {
  instance_role : string prop;  (** instance_role *)
  placement_strategy : string prop;  (** placement_strategy *)
}

type step__hadoop_jar_step = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** args *)
  jar : string prop;  (** jar *)
  main_class : string prop;  (** main_class *)
  properties : (string * string prop) list;  (** properties *)
}

type step = {
  action_on_failure : string prop;  (** action_on_failure *)
  hadoop_jar_step : step__hadoop_jar_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hadoop_jar_step *)
  name : string prop;  (** name *)
}

type auto_termination_policy

val auto_termination_policy :
  ?idle_timeout:float prop -> unit -> auto_termination_policy

type bootstrap_action

val bootstrap_action :
  ?args:string prop list ->
  name:string prop ->
  path:string prop ->
  unit ->
  bootstrap_action

type core_instance_fleet__instance_type_configs__configurations

val core_instance_fleet__instance_type_configs__configurations :
  ?classification:string prop ->
  ?properties:(string * string prop) list ->
  unit ->
  core_instance_fleet__instance_type_configs__configurations

type core_instance_fleet__instance_type_configs__ebs_config

val core_instance_fleet__instance_type_configs__ebs_config :
  ?iops:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  core_instance_fleet__instance_type_configs__ebs_config

type core_instance_fleet__instance_type_configs

val core_instance_fleet__instance_type_configs :
  ?bid_price:string prop ->
  ?bid_price_as_percentage_of_on_demand_price:float prop ->
  ?weighted_capacity:float prop ->
  instance_type:string prop ->
  configurations:
    core_instance_fleet__instance_type_configs__configurations list ->
  ebs_config:
    core_instance_fleet__instance_type_configs__ebs_config list ->
  unit ->
  core_instance_fleet__instance_type_configs

type core_instance_fleet__launch_specifications__on_demand_specification

val core_instance_fleet__launch_specifications__on_demand_specification :
  allocation_strategy:string prop ->
  unit ->
  core_instance_fleet__launch_specifications__on_demand_specification

type core_instance_fleet__launch_specifications__spot_specification

val core_instance_fleet__launch_specifications__spot_specification :
  ?block_duration_minutes:float prop ->
  allocation_strategy:string prop ->
  timeout_action:string prop ->
  timeout_duration_minutes:float prop ->
  unit ->
  core_instance_fleet__launch_specifications__spot_specification

type core_instance_fleet__launch_specifications

val core_instance_fleet__launch_specifications :
  ?on_demand_specification:
    core_instance_fleet__launch_specifications__on_demand_specification
    list ->
  ?spot_specification:
    core_instance_fleet__launch_specifications__spot_specification
    list ->
  unit ->
  core_instance_fleet__launch_specifications

type core_instance_fleet

val core_instance_fleet :
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  ?launch_specifications:
    core_instance_fleet__launch_specifications list ->
  instance_type_configs:
    core_instance_fleet__instance_type_configs list ->
  unit ->
  core_instance_fleet

type core_instance_group__ebs_config

val core_instance_group__ebs_config :
  ?iops:float prop ->
  ?throughput:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  core_instance_group__ebs_config

type core_instance_group

val core_instance_group :
  ?autoscaling_policy:string prop ->
  ?bid_price:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  instance_type:string prop ->
  ebs_config:core_instance_group__ebs_config list ->
  unit ->
  core_instance_group

type ec2_attributes

val ec2_attributes :
  ?additional_master_security_groups:string prop ->
  ?additional_slave_security_groups:string prop ->
  ?emr_managed_master_security_group:string prop ->
  ?emr_managed_slave_security_group:string prop ->
  ?key_name:string prop ->
  ?service_access_security_group:string prop ->
  ?subnet_id:string prop ->
  ?subnet_ids:string prop list ->
  instance_profile:string prop ->
  unit ->
  ec2_attributes

type kerberos_attributes

val kerberos_attributes :
  ?ad_domain_join_password:string prop ->
  ?ad_domain_join_user:string prop ->
  ?cross_realm_trust_principal_password:string prop ->
  kdc_admin_password:string prop ->
  realm:string prop ->
  unit ->
  kerberos_attributes

type master_instance_fleet__instance_type_configs__configurations

val master_instance_fleet__instance_type_configs__configurations :
  ?classification:string prop ->
  ?properties:(string * string prop) list ->
  unit ->
  master_instance_fleet__instance_type_configs__configurations

type master_instance_fleet__instance_type_configs__ebs_config

val master_instance_fleet__instance_type_configs__ebs_config :
  ?iops:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  master_instance_fleet__instance_type_configs__ebs_config

type master_instance_fleet__instance_type_configs

val master_instance_fleet__instance_type_configs :
  ?bid_price:string prop ->
  ?bid_price_as_percentage_of_on_demand_price:float prop ->
  ?weighted_capacity:float prop ->
  instance_type:string prop ->
  configurations:
    master_instance_fleet__instance_type_configs__configurations list ->
  ebs_config:
    master_instance_fleet__instance_type_configs__ebs_config list ->
  unit ->
  master_instance_fleet__instance_type_configs

type master_instance_fleet__launch_specifications__on_demand_specification

val master_instance_fleet__launch_specifications__on_demand_specification :
  allocation_strategy:string prop ->
  unit ->
  master_instance_fleet__launch_specifications__on_demand_specification

type master_instance_fleet__launch_specifications__spot_specification

val master_instance_fleet__launch_specifications__spot_specification :
  ?block_duration_minutes:float prop ->
  allocation_strategy:string prop ->
  timeout_action:string prop ->
  timeout_duration_minutes:float prop ->
  unit ->
  master_instance_fleet__launch_specifications__spot_specification

type master_instance_fleet__launch_specifications

val master_instance_fleet__launch_specifications :
  ?on_demand_specification:
    master_instance_fleet__launch_specifications__on_demand_specification
    list ->
  ?spot_specification:
    master_instance_fleet__launch_specifications__spot_specification
    list ->
  unit ->
  master_instance_fleet__launch_specifications

type master_instance_fleet

val master_instance_fleet :
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  ?launch_specifications:
    master_instance_fleet__launch_specifications list ->
  instance_type_configs:
    master_instance_fleet__instance_type_configs list ->
  unit ->
  master_instance_fleet

type master_instance_group__ebs_config

val master_instance_group__ebs_config :
  ?iops:float prop ->
  ?throughput:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  master_instance_group__ebs_config

type master_instance_group

val master_instance_group :
  ?bid_price:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  instance_type:string prop ->
  ebs_config:master_instance_group__ebs_config list ->
  unit ->
  master_instance_group

type aws_emr_cluster

val aws_emr_cluster :
  ?additional_info:string prop ->
  ?applications:string prop list ->
  ?autoscaling_role:string prop ->
  ?configurations:string prop ->
  ?configurations_json:string prop ->
  ?custom_ami_id:string prop ->
  ?ebs_root_volume_size:float prop ->
  ?id:string prop ->
  ?keep_job_flow_alive_when_no_steps:bool prop ->
  ?list_steps_states:string prop list ->
  ?log_encryption_kms_key_id:string prop ->
  ?log_uri:string prop ->
  ?placement_group_config:placement_group_config list ->
  ?scale_down_behavior:string prop ->
  ?security_configuration:string prop ->
  ?step:step list ->
  ?step_concurrency_level:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection:bool prop ->
  ?visible_to_all_users:bool prop ->
  ?auto_termination_policy:auto_termination_policy list ->
  ?bootstrap_action:bootstrap_action list ->
  ?core_instance_fleet:core_instance_fleet list ->
  ?core_instance_group:core_instance_group list ->
  ?ec2_attributes:ec2_attributes list ->
  ?kerberos_attributes:kerberos_attributes list ->
  ?master_instance_fleet:master_instance_fleet list ->
  ?master_instance_group:master_instance_group list ->
  name:string prop ->
  release_label:string prop ->
  service_role:string prop ->
  unit ->
  aws_emr_cluster

val yojson_of_aws_emr_cluster : aws_emr_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?additional_info:string prop ->
  ?applications:string prop list ->
  ?autoscaling_role:string prop ->
  ?configurations:string prop ->
  ?configurations_json:string prop ->
  ?custom_ami_id:string prop ->
  ?ebs_root_volume_size:float prop ->
  ?id:string prop ->
  ?keep_job_flow_alive_when_no_steps:bool prop ->
  ?list_steps_states:string prop list ->
  ?log_encryption_kms_key_id:string prop ->
  ?log_uri:string prop ->
  ?placement_group_config:placement_group_config list ->
  ?scale_down_behavior:string prop ->
  ?security_configuration:string prop ->
  ?step:step list ->
  ?step_concurrency_level:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection:bool prop ->
  ?visible_to_all_users:bool prop ->
  ?auto_termination_policy:auto_termination_policy list ->
  ?bootstrap_action:bootstrap_action list ->
  ?core_instance_fleet:core_instance_fleet list ->
  ?core_instance_group:core_instance_group list ->
  ?ec2_attributes:ec2_attributes list ->
  ?kerberos_attributes:kerberos_attributes list ->
  ?master_instance_fleet:master_instance_fleet list ->
  ?master_instance_group:master_instance_group list ->
  name:string prop ->
  release_label:string prop ->
  service_role:string prop ->
  string ->
  t

val make :
  ?additional_info:string prop ->
  ?applications:string prop list ->
  ?autoscaling_role:string prop ->
  ?configurations:string prop ->
  ?configurations_json:string prop ->
  ?custom_ami_id:string prop ->
  ?ebs_root_volume_size:float prop ->
  ?id:string prop ->
  ?keep_job_flow_alive_when_no_steps:bool prop ->
  ?list_steps_states:string prop list ->
  ?log_encryption_kms_key_id:string prop ->
  ?log_uri:string prop ->
  ?placement_group_config:placement_group_config list ->
  ?scale_down_behavior:string prop ->
  ?security_configuration:string prop ->
  ?step:step list ->
  ?step_concurrency_level:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection:bool prop ->
  ?visible_to_all_users:bool prop ->
  ?auto_termination_policy:auto_termination_policy list ->
  ?bootstrap_action:bootstrap_action list ->
  ?core_instance_fleet:core_instance_fleet list ->
  ?core_instance_group:core_instance_group list ->
  ?ec2_attributes:ec2_attributes list ->
  ?kerberos_attributes:kerberos_attributes list ->
  ?master_instance_fleet:master_instance_fleet list ->
  ?master_instance_group:master_instance_group list ->
  name:string prop ->
  release_label:string prop ->
  service_role:string prop ->
  string ->
  t Tf_core.resource
