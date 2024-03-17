(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_php_app_layer__cloudwatch_configuration__log_streams
type aws_opsworks_php_app_layer__cloudwatch_configuration
type aws_opsworks_php_app_layer__ebs_volume
type aws_opsworks_php_app_layer__load_based_auto_scaling__downscaling
type aws_opsworks_php_app_layer__load_based_auto_scaling__upscaling
type aws_opsworks_php_app_layer__load_based_auto_scaling
type aws_opsworks_php_app_layer

val aws_opsworks_php_app_layer :
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
  ?use_ebs_optimized_instances:bool prop ->
  stack_id:string prop ->
  cloudwatch_configuration:
    aws_opsworks_php_app_layer__cloudwatch_configuration list ->
  ebs_volume:aws_opsworks_php_app_layer__ebs_volume list ->
  load_based_auto_scaling:
    aws_opsworks_php_app_layer__load_based_auto_scaling list ->
  string ->
  unit
