(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codedeploy_deployment_group__alarm_configuration = {
  alarms : string list option; [@option]  (** alarms *)
  enabled : bool option; [@option]  (** enabled *)
  ignore_poll_alarm_failure : bool option; [@option]
      (** ignore_poll_alarm_failure *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__alarm_configuration *)

type aws_codedeploy_deployment_group__auto_rollback_configuration = {
  enabled : bool option; [@option]  (** enabled *)
  events : string list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__auto_rollback_configuration *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__deployment_ready_option = {
  action_on_timeout : string option; [@option]
      (** action_on_timeout *)
  wait_time_in_minutes : float option; [@option]
      (** wait_time_in_minutes *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config__deployment_ready_option *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__green_fleet_provisioning_option = {
  action : string option; [@option]  (** action *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config__green_fleet_provisioning_option *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__terminate_blue_instances_on_deployment_success = {
  action : string option; [@option]  (** action *)
  termination_wait_time_in_minutes : float option; [@option]
      (** termination_wait_time_in_minutes *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config__terminate_blue_instances_on_deployment_success *)

type aws_codedeploy_deployment_group__blue_green_deployment_config = {
  deployment_ready_option :
    aws_codedeploy_deployment_group__blue_green_deployment_config__deployment_ready_option
    list;
  green_fleet_provisioning_option :
    aws_codedeploy_deployment_group__blue_green_deployment_config__green_fleet_provisioning_option
    list;
  terminate_blue_instances_on_deployment_success :
    aws_codedeploy_deployment_group__blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config *)

type aws_codedeploy_deployment_group__deployment_style = {
  deployment_option : string option; [@option]
      (** deployment_option *)
  deployment_type : string option; [@option]  (** deployment_type *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__deployment_style *)

type aws_codedeploy_deployment_group__ec2_tag_filter = {
  key : string option; [@option]  (** key *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ec2_tag_filter *)

type aws_codedeploy_deployment_group__ec2_tag_set__ec2_tag_filter = {
  key : string option; [@option]  (** key *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ec2_tag_set__ec2_tag_filter *)

type aws_codedeploy_deployment_group__ec2_tag_set = {
  ec2_tag_filter :
    aws_codedeploy_deployment_group__ec2_tag_set__ec2_tag_filter list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ec2_tag_set *)

type aws_codedeploy_deployment_group__ecs_service = {
  cluster_name : string;  (** cluster_name *)
  service_name : string;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ecs_service *)

type aws_codedeploy_deployment_group__load_balancer_info__elb_info = {
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__elb_info *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_info = {
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_info *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__prod_traffic_route = {
  listener_arns : string list;  (** listener_arns *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__prod_traffic_route *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__target_group = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__target_group *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__test_traffic_route = {
  listener_arns : string list;  (** listener_arns *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__test_traffic_route *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info = {
  prod_traffic_route :
    aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__prod_traffic_route
    list;
  target_group :
    aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__target_group
    list;
  test_traffic_route :
    aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__test_traffic_route
    list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info *)

type aws_codedeploy_deployment_group__load_balancer_info = {
  elb_info :
    aws_codedeploy_deployment_group__load_balancer_info__elb_info
    list;
  target_group_info :
    aws_codedeploy_deployment_group__load_balancer_info__target_group_info
    list;
  target_group_pair_info :
    aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info
    list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info *)

type aws_codedeploy_deployment_group__on_premises_instance_tag_filter = {
  key : string option; [@option]  (** key *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__on_premises_instance_tag_filter *)

type aws_codedeploy_deployment_group__trigger_configuration = {
  trigger_events : string list;  (** trigger_events *)
  trigger_name : string;  (** trigger_name *)
  trigger_target_arn : string;  (** trigger_target_arn *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__trigger_configuration *)

type aws_codedeploy_deployment_group = {
  app_name : string;  (** app_name *)
  autoscaling_groups : string list option; [@option]
      (** autoscaling_groups *)
  deployment_config_name : string option; [@option]
      (** deployment_config_name *)
  deployment_group_name : string;  (** deployment_group_name *)
  outdated_instances_strategy : string option; [@option]
      (** outdated_instances_strategy *)
  service_role_arn : string;  (** service_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  alarm_configuration :
    aws_codedeploy_deployment_group__alarm_configuration list;
  auto_rollback_configuration :
    aws_codedeploy_deployment_group__auto_rollback_configuration list;
  blue_green_deployment_config :
    aws_codedeploy_deployment_group__blue_green_deployment_config
    list;
  deployment_style :
    aws_codedeploy_deployment_group__deployment_style list;
  ec2_tag_filter :
    aws_codedeploy_deployment_group__ec2_tag_filter list;
  ec2_tag_set : aws_codedeploy_deployment_group__ec2_tag_set list;
  ecs_service : aws_codedeploy_deployment_group__ecs_service list;
  load_balancer_info :
    aws_codedeploy_deployment_group__load_balancer_info list;
  on_premises_instance_tag_filter :
    aws_codedeploy_deployment_group__on_premises_instance_tag_filter
    list;
  trigger_configuration :
    aws_codedeploy_deployment_group__trigger_configuration list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group *)

let aws_codedeploy_deployment_group ?autoscaling_groups
    ?deployment_config_name ?outdated_instances_strategy ?tags
    ~app_name ~deployment_group_name ~service_role_arn
    ~alarm_configuration ~auto_rollback_configuration
    ~blue_green_deployment_config ~deployment_style ~ec2_tag_filter
    ~ec2_tag_set ~ecs_service ~load_balancer_info
    ~on_premises_instance_tag_filter ~trigger_configuration
    __resource_id =
  let __resource_type = "aws_codedeploy_deployment_group" in
  let __resource =
    {
      app_name;
      autoscaling_groups;
      deployment_config_name;
      deployment_group_name;
      outdated_instances_strategy;
      service_role_arn;
      tags;
      alarm_configuration;
      auto_rollback_configuration;
      blue_green_deployment_config;
      deployment_style;
      ec2_tag_filter;
      ec2_tag_set;
      ecs_service;
      load_balancer_info;
      on_premises_instance_tag_filter;
      trigger_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_deployment_group __resource);
  ()
