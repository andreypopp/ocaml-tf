(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudwatch_configuration__log_streams

val cloudwatch_configuration__log_streams :
  ?batch_count:float prop ->
  ?batch_size:float prop ->
  ?buffer_duration:float prop ->
  ?datetime_format:string prop ->
  ?encoding:string prop ->
  ?file_fingerprint_lines:string prop ->
  ?initial_position:string prop ->
  ?multiline_start_pattern:string prop ->
  ?time_zone:string prop ->
  file:string prop ->
  log_group_name:string prop ->
  unit ->
  cloudwatch_configuration__log_streams

type cloudwatch_configuration

val cloudwatch_configuration :
  ?enabled:bool prop ->
  ?log_streams:cloudwatch_configuration__log_streams list ->
  unit ->
  cloudwatch_configuration

type ebs_volume

val ebs_volume :
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?raid_level:string prop ->
  ?type_:string prop ->
  mount_point:string prop ->
  number_of_disks:float prop ->
  size:float prop ->
  unit ->
  ebs_volume

type load_based_auto_scaling__downscaling

val load_based_auto_scaling__downscaling :
  ?alarms:string prop list ->
  ?cpu_threshold:float prop ->
  ?ignore_metrics_time:float prop ->
  ?instance_count:float prop ->
  ?load_threshold:float prop ->
  ?memory_threshold:float prop ->
  ?thresholds_wait_time:float prop ->
  unit ->
  load_based_auto_scaling__downscaling

type load_based_auto_scaling__upscaling

val load_based_auto_scaling__upscaling :
  ?alarms:string prop list ->
  ?cpu_threshold:float prop ->
  ?ignore_metrics_time:float prop ->
  ?instance_count:float prop ->
  ?load_threshold:float prop ->
  ?memory_threshold:float prop ->
  ?thresholds_wait_time:float prop ->
  unit ->
  load_based_auto_scaling__upscaling

type load_based_auto_scaling

val load_based_auto_scaling :
  ?enable:bool prop ->
  ?downscaling:load_based_auto_scaling__downscaling list ->
  ?upscaling:load_based_auto_scaling__upscaling list ->
  unit ->
  load_based_auto_scaling

type aws_opsworks_nodejs_app_layer

val aws_opsworks_nodejs_app_layer :
  ?auto_assign_elastic_ips:bool prop ->
  ?auto_assign_public_ips:bool prop ->
  ?auto_healing:bool prop ->
  ?custom_configure_recipes:string prop list ->
  ?custom_deploy_recipes:string prop list ->
  ?custom_instance_profile_arn:string prop ->
  ?custom_json:string prop ->
  ?custom_security_group_ids:string prop list ->
  ?custom_setup_recipes:string prop list ->
  ?custom_shutdown_recipes:string prop list ->
  ?custom_undeploy_recipes:string prop list ->
  ?drain_elb_on_shutdown:bool prop ->
  ?elastic_load_balancer:string prop ->
  ?id:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_shutdown_timeout:float prop ->
  ?name:string prop ->
  ?nodejs_version:string prop ->
  ?system_packages:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?use_ebs_optimized_instances:bool prop ->
  ?cloudwatch_configuration:cloudwatch_configuration list ->
  ?load_based_auto_scaling:load_based_auto_scaling list ->
  stack_id:string prop ->
  ebs_volume:ebs_volume list ->
  unit ->
  aws_opsworks_nodejs_app_layer

val yojson_of_aws_opsworks_nodejs_app_layer :
  aws_opsworks_nodejs_app_layer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  auto_assign_elastic_ips : bool prop;
  auto_assign_public_ips : bool prop;
  auto_healing : bool prop;
  custom_configure_recipes : string list prop;
  custom_deploy_recipes : string list prop;
  custom_instance_profile_arn : string prop;
  custom_json : string prop;
  custom_security_group_ids : string list prop;
  custom_setup_recipes : string list prop;
  custom_shutdown_recipes : string list prop;
  custom_undeploy_recipes : string list prop;
  drain_elb_on_shutdown : bool prop;
  elastic_load_balancer : string prop;
  id : string prop;
  install_updates_on_boot : bool prop;
  instance_shutdown_timeout : float prop;
  name : string prop;
  nodejs_version : string prop;
  stack_id : string prop;
  system_packages : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  use_ebs_optimized_instances : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_assign_elastic_ips:bool prop ->
  ?auto_assign_public_ips:bool prop ->
  ?auto_healing:bool prop ->
  ?custom_configure_recipes:string prop list ->
  ?custom_deploy_recipes:string prop list ->
  ?custom_instance_profile_arn:string prop ->
  ?custom_json:string prop ->
  ?custom_security_group_ids:string prop list ->
  ?custom_setup_recipes:string prop list ->
  ?custom_shutdown_recipes:string prop list ->
  ?custom_undeploy_recipes:string prop list ->
  ?drain_elb_on_shutdown:bool prop ->
  ?elastic_load_balancer:string prop ->
  ?id:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_shutdown_timeout:float prop ->
  ?name:string prop ->
  ?nodejs_version:string prop ->
  ?system_packages:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?use_ebs_optimized_instances:bool prop ->
  ?cloudwatch_configuration:cloudwatch_configuration list ->
  ?load_based_auto_scaling:load_based_auto_scaling list ->
  stack_id:string prop ->
  ebs_volume:ebs_volume list ->
  string ->
  t

val make :
  ?auto_assign_elastic_ips:bool prop ->
  ?auto_assign_public_ips:bool prop ->
  ?auto_healing:bool prop ->
  ?custom_configure_recipes:string prop list ->
  ?custom_deploy_recipes:string prop list ->
  ?custom_instance_profile_arn:string prop ->
  ?custom_json:string prop ->
  ?custom_security_group_ids:string prop list ->
  ?custom_setup_recipes:string prop list ->
  ?custom_shutdown_recipes:string prop list ->
  ?custom_undeploy_recipes:string prop list ->
  ?drain_elb_on_shutdown:bool prop ->
  ?elastic_load_balancer:string prop ->
  ?id:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_shutdown_timeout:float prop ->
  ?name:string prop ->
  ?nodejs_version:string prop ->
  ?system_packages:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?use_ebs_optimized_instances:bool prop ->
  ?cloudwatch_configuration:cloudwatch_configuration list ->
  ?load_based_auto_scaling:load_based_auto_scaling list ->
  stack_id:string prop ->
  ebs_volume:ebs_volume list ->
  string ->
  t Tf_core.resource
