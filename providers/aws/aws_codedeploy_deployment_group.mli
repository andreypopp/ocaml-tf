(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type alarm_configuration

val alarm_configuration :
  ?alarms:string prop list ->
  ?enabled:bool prop ->
  ?ignore_poll_alarm_failure:bool prop ->
  unit ->
  alarm_configuration

type auto_rollback_configuration

val auto_rollback_configuration :
  ?enabled:bool prop ->
  ?events:string prop list ->
  unit ->
  auto_rollback_configuration

type blue_green_deployment_config__deployment_ready_option

val blue_green_deployment_config__deployment_ready_option :
  ?action_on_timeout:string prop ->
  ?wait_time_in_minutes:float prop ->
  unit ->
  blue_green_deployment_config__deployment_ready_option

type blue_green_deployment_config__green_fleet_provisioning_option

val blue_green_deployment_config__green_fleet_provisioning_option :
  ?action:string prop ->
  unit ->
  blue_green_deployment_config__green_fleet_provisioning_option

type blue_green_deployment_config__terminate_blue_instances_on_deployment_success

val blue_green_deployment_config__terminate_blue_instances_on_deployment_success :
  ?action:string prop ->
  ?termination_wait_time_in_minutes:float prop ->
  unit ->
  blue_green_deployment_config__terminate_blue_instances_on_deployment_success

type blue_green_deployment_config

val blue_green_deployment_config :
  ?deployment_ready_option:
    blue_green_deployment_config__deployment_ready_option list ->
  ?green_fleet_provisioning_option:
    blue_green_deployment_config__green_fleet_provisioning_option
    list ->
  ?terminate_blue_instances_on_deployment_success:
    blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    list ->
  unit ->
  blue_green_deployment_config

type deployment_style

val deployment_style :
  ?deployment_option:string prop ->
  ?deployment_type:string prop ->
  unit ->
  deployment_style

type ec2_tag_filter

val ec2_tag_filter :
  ?key:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  ec2_tag_filter

type ec2_tag_set__ec2_tag_filter

val ec2_tag_set__ec2_tag_filter :
  ?key:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  ec2_tag_set__ec2_tag_filter

type ec2_tag_set

val ec2_tag_set :
  ec2_tag_filter:ec2_tag_set__ec2_tag_filter list ->
  unit ->
  ec2_tag_set

type ecs_service

val ecs_service :
  cluster_name:string prop ->
  service_name:string prop ->
  unit ->
  ecs_service

type load_balancer_info__elb_info

val load_balancer_info__elb_info :
  ?name:string prop -> unit -> load_balancer_info__elb_info

type load_balancer_info__target_group_info

val load_balancer_info__target_group_info :
  ?name:string prop -> unit -> load_balancer_info__target_group_info

type load_balancer_info__target_group_pair_info__prod_traffic_route

val load_balancer_info__target_group_pair_info__prod_traffic_route :
  listener_arns:string prop list ->
  unit ->
  load_balancer_info__target_group_pair_info__prod_traffic_route

type load_balancer_info__target_group_pair_info__target_group

val load_balancer_info__target_group_pair_info__target_group :
  name:string prop ->
  unit ->
  load_balancer_info__target_group_pair_info__target_group

type load_balancer_info__target_group_pair_info__test_traffic_route

val load_balancer_info__target_group_pair_info__test_traffic_route :
  listener_arns:string prop list ->
  unit ->
  load_balancer_info__target_group_pair_info__test_traffic_route

type load_balancer_info__target_group_pair_info

val load_balancer_info__target_group_pair_info :
  ?test_traffic_route:
    load_balancer_info__target_group_pair_info__test_traffic_route
    list ->
  prod_traffic_route:
    load_balancer_info__target_group_pair_info__prod_traffic_route
    list ->
  target_group:
    load_balancer_info__target_group_pair_info__target_group list ->
  unit ->
  load_balancer_info__target_group_pair_info

type load_balancer_info

val load_balancer_info :
  ?target_group_pair_info:
    load_balancer_info__target_group_pair_info list ->
  elb_info:load_balancer_info__elb_info list ->
  target_group_info:load_balancer_info__target_group_info list ->
  unit ->
  load_balancer_info

type on_premises_instance_tag_filter

val on_premises_instance_tag_filter :
  ?key:string prop ->
  ?type_:string prop ->
  ?value:string prop ->
  unit ->
  on_premises_instance_tag_filter

type trigger_configuration

val trigger_configuration :
  trigger_events:string prop list ->
  trigger_name:string prop ->
  trigger_target_arn:string prop ->
  unit ->
  trigger_configuration

type aws_codedeploy_deployment_group

val aws_codedeploy_deployment_group :
  ?autoscaling_groups:string prop list ->
  ?deployment_config_name:string prop ->
  ?id:string prop ->
  ?outdated_instances_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?alarm_configuration:alarm_configuration list ->
  ?auto_rollback_configuration:auto_rollback_configuration list ->
  ?blue_green_deployment_config:blue_green_deployment_config list ->
  ?deployment_style:deployment_style list ->
  ?ecs_service:ecs_service list ->
  ?load_balancer_info:load_balancer_info list ->
  app_name:string prop ->
  deployment_group_name:string prop ->
  service_role_arn:string prop ->
  ec2_tag_filter:ec2_tag_filter list ->
  ec2_tag_set:ec2_tag_set list ->
  on_premises_instance_tag_filter:
    on_premises_instance_tag_filter list ->
  trigger_configuration:trigger_configuration list ->
  unit ->
  aws_codedeploy_deployment_group

val yojson_of_aws_codedeploy_deployment_group :
  aws_codedeploy_deployment_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_name : string prop;
  arn : string prop;
  autoscaling_groups : string list prop;
  compute_platform : string prop;
  deployment_config_name : string prop;
  deployment_group_id : string prop;
  deployment_group_name : string prop;
  id : string prop;
  outdated_instances_strategy : string prop;
  service_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?autoscaling_groups:string prop list ->
  ?deployment_config_name:string prop ->
  ?id:string prop ->
  ?outdated_instances_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?alarm_configuration:alarm_configuration list ->
  ?auto_rollback_configuration:auto_rollback_configuration list ->
  ?blue_green_deployment_config:blue_green_deployment_config list ->
  ?deployment_style:deployment_style list ->
  ?ecs_service:ecs_service list ->
  ?load_balancer_info:load_balancer_info list ->
  app_name:string prop ->
  deployment_group_name:string prop ->
  service_role_arn:string prop ->
  ec2_tag_filter:ec2_tag_filter list ->
  ec2_tag_set:ec2_tag_set list ->
  on_premises_instance_tag_filter:
    on_premises_instance_tag_filter list ->
  trigger_configuration:trigger_configuration list ->
  string ->
  t

val make :
  ?autoscaling_groups:string prop list ->
  ?deployment_config_name:string prop ->
  ?id:string prop ->
  ?outdated_instances_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?alarm_configuration:alarm_configuration list ->
  ?auto_rollback_configuration:auto_rollback_configuration list ->
  ?blue_green_deployment_config:blue_green_deployment_config list ->
  ?deployment_style:deployment_style list ->
  ?ecs_service:ecs_service list ->
  ?load_balancer_info:load_balancer_info list ->
  app_name:string prop ->
  deployment_group_name:string prop ->
  service_role_arn:string prop ->
  ec2_tag_filter:ec2_tag_filter list ->
  ec2_tag_set:ec2_tag_set list ->
  on_premises_instance_tag_filter:
    on_premises_instance_tag_filter list ->
  trigger_configuration:trigger_configuration list ->
  string ->
  t Tf_core.resource
