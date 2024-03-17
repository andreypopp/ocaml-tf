(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_ganglia_layer__cloudwatch_configuration__log_streams
type aws_opsworks_ganglia_layer__cloudwatch_configuration
type aws_opsworks_ganglia_layer__ebs_volume
type aws_opsworks_ganglia_layer__load_based_auto_scaling__downscaling
type aws_opsworks_ganglia_layer__load_based_auto_scaling__upscaling
type aws_opsworks_ganglia_layer__load_based_auto_scaling
type aws_opsworks_ganglia_layer

type t = private {
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
  password : string prop;
  stack_id : string prop;
  system_packages : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  use_ebs_optimized_instances : bool prop;
  username : string prop;
}

val aws_opsworks_ganglia_layer :
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
  ?system_packages:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?url:string prop ->
  ?use_ebs_optimized_instances:bool prop ->
  ?username:string prop ->
  password:string prop ->
  stack_id:string prop ->
  cloudwatch_configuration:
    aws_opsworks_ganglia_layer__cloudwatch_configuration list ->
  ebs_volume:aws_opsworks_ganglia_layer__ebs_volume list ->
  load_based_auto_scaling:
    aws_opsworks_ganglia_layer__load_based_auto_scaling list ->
  string ->
  t
