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

type aws_emr_cluster

val aws_emr_cluster :
  ?additional_info:string ->
  ?applications:string list ->
  ?autoscaling_role:string ->
  ?configurations:string ->
  ?configurations_json:string ->
  ?custom_ami_id:string ->
  ?ebs_root_volume_size:float ->
  ?list_steps_states:string list ->
  ?log_encryption_kms_key_id:string ->
  ?log_uri:string ->
  ?placement_group_config:
    aws_emr_cluster__placement_group_config list ->
  ?security_configuration:string ->
  ?step_concurrency_level:float ->
  ?tags:(string * string) list ->
  ?visible_to_all_users:bool ->
  name:string ->
  release_label:string ->
  service_role:string ->
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
