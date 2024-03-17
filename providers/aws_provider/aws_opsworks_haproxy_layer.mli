(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_haproxy_layer__cloudwatch_configuration__log_streams
type aws_opsworks_haproxy_layer__cloudwatch_configuration
type aws_opsworks_haproxy_layer__ebs_volume
type aws_opsworks_haproxy_layer__load_based_auto_scaling__downscaling
type aws_opsworks_haproxy_layer__load_based_auto_scaling__upscaling
type aws_opsworks_haproxy_layer__load_based_auto_scaling
type aws_opsworks_haproxy_layer

val aws_opsworks_haproxy_layer :
  ?auto_assign_elastic_ips:bool ->
  ?auto_assign_public_ips:bool ->
  ?auto_healing:bool ->
  ?custom_configure_recipes:string list ->
  ?custom_deploy_recipes:string list ->
  ?custom_instance_profile_arn:string ->
  ?custom_json:string ->
  ?custom_security_group_ids:string list ->
  ?custom_setup_recipes:string list ->
  ?custom_shutdown_recipes:string list ->
  ?custom_undeploy_recipes:string list ->
  ?drain_elb_on_shutdown:bool ->
  ?elastic_load_balancer:string ->
  ?healthcheck_method:string ->
  ?healthcheck_url:string ->
  ?id:string ->
  ?install_updates_on_boot:bool ->
  ?instance_shutdown_timeout:float ->
  ?name:string ->
  ?stats_enabled:bool ->
  ?stats_url:string ->
  ?stats_user:string ->
  ?system_packages:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?use_ebs_optimized_instances:bool ->
  stack_id:string ->
  stats_password:string ->
  cloudwatch_configuration:
    aws_opsworks_haproxy_layer__cloudwatch_configuration list ->
  ebs_volume:aws_opsworks_haproxy_layer__ebs_volume list ->
  load_based_auto_scaling:
    aws_opsworks_haproxy_layer__load_based_auto_scaling list ->
  string ->
  unit
