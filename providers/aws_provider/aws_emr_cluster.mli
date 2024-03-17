(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_cluster__auto_termination_policy
type aws_emr_cluster__bootstrap_action

type aws_emr_cluster__core_instance_fleet__instance_type_configs__configurations

type aws_emr_cluster__core_instance_fleet__instance_type_configs__ebs_config

type aws_emr_cluster__core_instance_fleet__instance_type_configs

type aws_emr_cluster__core_instance_fleet__launch_specifications__on_demand_specification

type aws_emr_cluster__core_instance_fleet__launch_specifications__spot_specification

type aws_emr_cluster__core_instance_fleet__launch_specifications
type aws_emr_cluster__core_instance_fleet
type aws_emr_cluster__core_instance_group__ebs_config
type aws_emr_cluster__core_instance_group
type aws_emr_cluster__ec2_attributes
type aws_emr_cluster__kerberos_attributes

type aws_emr_cluster__master_instance_fleet__instance_type_configs__configurations

type aws_emr_cluster__master_instance_fleet__instance_type_configs__ebs_config

type aws_emr_cluster__master_instance_fleet__instance_type_configs

type aws_emr_cluster__master_instance_fleet__launch_specifications__on_demand_specification

type aws_emr_cluster__master_instance_fleet__launch_specifications__spot_specification

type aws_emr_cluster__master_instance_fleet__launch_specifications
type aws_emr_cluster__master_instance_fleet
type aws_emr_cluster__master_instance_group__ebs_config
type aws_emr_cluster__master_instance_group

type aws_emr_cluster__placement_group_config = {
  instance_role : string prop;  (** instance_role *)
  placement_strategy : string prop;  (** placement_strategy *)
}

type aws_emr_cluster__step__hadoop_jar_step = {
  args : string prop list;  (** args *)
  jar : string prop;  (** jar *)
  main_class : string prop;  (** main_class *)
  properties : (string * string prop) list;  (** properties *)
}

type aws_emr_cluster__step = {
  action_on_failure : string prop;  (** action_on_failure *)
  hadoop_jar_step : aws_emr_cluster__step__hadoop_jar_step list;
      (** hadoop_jar_step *)
  name : string prop;  (** name *)
}

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
  ?placement_group_config:
    aws_emr_cluster__placement_group_config list ->
  ?scale_down_behavior:string prop ->
  ?security_configuration:string prop ->
  ?step:aws_emr_cluster__step list ->
  ?step_concurrency_level:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?termination_protection:bool prop ->
  ?visible_to_all_users:bool prop ->
  name:string prop ->
  release_label:string prop ->
  service_role:string prop ->
  auto_termination_policy:
    aws_emr_cluster__auto_termination_policy list ->
  bootstrap_action:aws_emr_cluster__bootstrap_action list ->
  core_instance_fleet:aws_emr_cluster__core_instance_fleet list ->
  core_instance_group:aws_emr_cluster__core_instance_group list ->
  ec2_attributes:aws_emr_cluster__ec2_attributes list ->
  kerberos_attributes:aws_emr_cluster__kerberos_attributes list ->
  master_instance_fleet:aws_emr_cluster__master_instance_fleet list ->
  master_instance_group:aws_emr_cluster__master_instance_group list ->
  string ->
  unit
