(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codedeploy_deployment_group__alarm_configuration = {
  alarms : string prop list option; [@option]  (** alarms *)
  enabled : bool prop option; [@option]  (** enabled *)
  ignore_poll_alarm_failure : bool prop option; [@option]
      (** ignore_poll_alarm_failure *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__alarm_configuration *)

type aws_codedeploy_deployment_group__auto_rollback_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  events : string prop list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__auto_rollback_configuration *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__deployment_ready_option = {
  action_on_timeout : string prop option; [@option]
      (** action_on_timeout *)
  wait_time_in_minutes : float prop option; [@option]
      (** wait_time_in_minutes *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config__deployment_ready_option *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__green_fleet_provisioning_option = {
  action : string prop option; [@option]  (** action *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__blue_green_deployment_config__green_fleet_provisioning_option *)

type aws_codedeploy_deployment_group__blue_green_deployment_config__terminate_blue_instances_on_deployment_success = {
  action : string prop option; [@option]  (** action *)
  termination_wait_time_in_minutes : float prop option; [@option]
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
  deployment_option : string prop option; [@option]
      (** deployment_option *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__deployment_style *)

type aws_codedeploy_deployment_group__ec2_tag_filter = {
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ec2_tag_filter *)

type aws_codedeploy_deployment_group__ec2_tag_set__ec2_tag_filter = {
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
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
  cluster_name : string prop;  (** cluster_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__ecs_service *)

type aws_codedeploy_deployment_group__load_balancer_info__elb_info = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__elb_info *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_info = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_info *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__prod_traffic_route = {
  listener_arns : string prop list;  (** listener_arns *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__prod_traffic_route *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__target_group = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__target_group *)

type aws_codedeploy_deployment_group__load_balancer_info__target_group_pair_info__test_traffic_route = {
  listener_arns : string prop list;  (** listener_arns *)
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
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__on_premises_instance_tag_filter *)

type aws_codedeploy_deployment_group__trigger_configuration = {
  trigger_events : string prop list;  (** trigger_events *)
  trigger_name : string prop;  (** trigger_name *)
  trigger_target_arn : string prop;  (** trigger_target_arn *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group__trigger_configuration *)

type aws_codedeploy_deployment_group = {
  app_name : string prop;  (** app_name *)
  autoscaling_groups : string prop list option; [@option]
      (** autoscaling_groups *)
  deployment_config_name : string prop option; [@option]
      (** deployment_config_name *)
  deployment_group_name : string prop;  (** deployment_group_name *)
  id : string prop option; [@option]  (** id *)
  outdated_instances_strategy : string prop option; [@option]
      (** outdated_instances_strategy *)
  service_role_arn : string prop;  (** service_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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

type t = {
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

let aws_codedeploy_deployment_group ?autoscaling_groups
    ?deployment_config_name ?id ?outdated_instances_strategy ?tags
    ?tags_all ~app_name ~deployment_group_name ~service_role_arn
    ~alarm_configuration ~auto_rollback_configuration
    ~blue_green_deployment_config ~deployment_style ~ec2_tag_filter
    ~ec2_tag_set ~ecs_service ~load_balancer_info
    ~on_premises_instance_tag_filter ~trigger_configuration
    __resource_id =
  let __resource_type = "aws_codedeploy_deployment_group" in
  let __resource =
    ({
       app_name;
       autoscaling_groups;
       deployment_config_name;
       deployment_group_name;
       id;
       outdated_instances_strategy;
       service_role_arn;
       tags;
       tags_all;
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
      : aws_codedeploy_deployment_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_deployment_group __resource);
  let __resource_attributes =
    ({
       app_name =
         Prop.computed __resource_type __resource_id "app_name";
       arn = Prop.computed __resource_type __resource_id "arn";
       autoscaling_groups =
         Prop.computed __resource_type __resource_id
           "autoscaling_groups";
       compute_platform =
         Prop.computed __resource_type __resource_id
           "compute_platform";
       deployment_config_name =
         Prop.computed __resource_type __resource_id
           "deployment_config_name";
       deployment_group_id =
         Prop.computed __resource_type __resource_id
           "deployment_group_id";
       deployment_group_name =
         Prop.computed __resource_type __resource_id
           "deployment_group_name";
       id = Prop.computed __resource_type __resource_id "id";
       outdated_instances_strategy =
         Prop.computed __resource_type __resource_id
           "outdated_instances_strategy";
       service_role_arn =
         Prop.computed __resource_type __resource_id
           "service_role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
