(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type alarm_configuration = {
  alarms : string prop list option; [@option]  (** alarms *)
  enabled : bool prop option; [@option]  (** enabled *)
  ignore_poll_alarm_failure : bool prop option; [@option]
      (** ignore_poll_alarm_failure *)
}
[@@deriving yojson_of]
(** alarm_configuration *)

type auto_rollback_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
  events : string prop list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** auto_rollback_configuration *)

type blue_green_deployment_config__deployment_ready_option = {
  action_on_timeout : string prop option; [@option]
      (** action_on_timeout *)
  wait_time_in_minutes : float prop option; [@option]
      (** wait_time_in_minutes *)
}
[@@deriving yojson_of]
(** blue_green_deployment_config__deployment_ready_option *)

type blue_green_deployment_config__green_fleet_provisioning_option = {
  action : string prop option; [@option]  (** action *)
}
[@@deriving yojson_of]
(** blue_green_deployment_config__green_fleet_provisioning_option *)

type blue_green_deployment_config__terminate_blue_instances_on_deployment_success = {
  action : string prop option; [@option]  (** action *)
  termination_wait_time_in_minutes : float prop option; [@option]
      (** termination_wait_time_in_minutes *)
}
[@@deriving yojson_of]
(** blue_green_deployment_config__terminate_blue_instances_on_deployment_success *)

type blue_green_deployment_config = {
  deployment_ready_option :
    blue_green_deployment_config__deployment_ready_option list;
  green_fleet_provisioning_option :
    blue_green_deployment_config__green_fleet_provisioning_option
    list;
  terminate_blue_instances_on_deployment_success :
    blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    list;
}
[@@deriving yojson_of]
(** blue_green_deployment_config *)

type deployment_style = {
  deployment_option : string prop option; [@option]
      (** deployment_option *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
}
[@@deriving yojson_of]
(** deployment_style *)

type ec2_tag_filter = {
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** ec2_tag_filter *)

type ec2_tag_set__ec2_tag_filter = {
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** ec2_tag_set__ec2_tag_filter *)

type ec2_tag_set = {
  ec2_tag_filter : ec2_tag_set__ec2_tag_filter list;
}
[@@deriving yojson_of]
(** ec2_tag_set *)

type ecs_service = {
  cluster_name : string prop;  (** cluster_name *)
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** ecs_service *)

type load_balancer_info__elb_info = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** load_balancer_info__elb_info *)

type load_balancer_info__target_group_info = {
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** load_balancer_info__target_group_info *)

type load_balancer_info__target_group_pair_info__prod_traffic_route = {
  listener_arns : string prop list;  (** listener_arns *)
}
[@@deriving yojson_of]
(** load_balancer_info__target_group_pair_info__prod_traffic_route *)

type load_balancer_info__target_group_pair_info__target_group = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** load_balancer_info__target_group_pair_info__target_group *)

type load_balancer_info__target_group_pair_info__test_traffic_route = {
  listener_arns : string prop list;  (** listener_arns *)
}
[@@deriving yojson_of]
(** load_balancer_info__target_group_pair_info__test_traffic_route *)

type load_balancer_info__target_group_pair_info = {
  prod_traffic_route :
    load_balancer_info__target_group_pair_info__prod_traffic_route
    list;
  target_group :
    load_balancer_info__target_group_pair_info__target_group list;
  test_traffic_route :
    load_balancer_info__target_group_pair_info__test_traffic_route
    list;
}
[@@deriving yojson_of]
(** load_balancer_info__target_group_pair_info *)

type load_balancer_info = {
  elb_info : load_balancer_info__elb_info list;
  target_group_info : load_balancer_info__target_group_info list;
  target_group_pair_info :
    load_balancer_info__target_group_pair_info list;
}
[@@deriving yojson_of]
(** load_balancer_info *)

type on_premises_instance_tag_filter = {
  key : string prop option; [@option]  (** key *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** on_premises_instance_tag_filter *)

type trigger_configuration = {
  trigger_events : string prop list;  (** trigger_events *)
  trigger_name : string prop;  (** trigger_name *)
  trigger_target_arn : string prop;  (** trigger_target_arn *)
}
[@@deriving yojson_of]
(** trigger_configuration *)

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
  alarm_configuration : alarm_configuration list;
  auto_rollback_configuration : auto_rollback_configuration list;
  blue_green_deployment_config : blue_green_deployment_config list;
  deployment_style : deployment_style list;
  ec2_tag_filter : ec2_tag_filter list;
  ec2_tag_set : ec2_tag_set list;
  ecs_service : ecs_service list;
  load_balancer_info : load_balancer_info list;
  on_premises_instance_tag_filter :
    on_premises_instance_tag_filter list;
  trigger_configuration : trigger_configuration list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_group *)

let alarm_configuration ?alarms ?enabled ?ignore_poll_alarm_failure
    () : alarm_configuration =
  { alarms; enabled; ignore_poll_alarm_failure }

let auto_rollback_configuration ?enabled ?events () :
    auto_rollback_configuration =
  { enabled; events }

let blue_green_deployment_config__deployment_ready_option
    ?action_on_timeout ?wait_time_in_minutes () :
    blue_green_deployment_config__deployment_ready_option =
  { action_on_timeout; wait_time_in_minutes }

let blue_green_deployment_config__green_fleet_provisioning_option
    ?action () :
    blue_green_deployment_config__green_fleet_provisioning_option =
  { action }

let blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    ?action ?termination_wait_time_in_minutes () :
    blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    =
  { action; termination_wait_time_in_minutes }

let blue_green_deployment_config ~deployment_ready_option
    ~green_fleet_provisioning_option
    ~terminate_blue_instances_on_deployment_success () :
    blue_green_deployment_config =
  {
    deployment_ready_option;
    green_fleet_provisioning_option;
    terminate_blue_instances_on_deployment_success;
  }

let deployment_style ?deployment_option ?deployment_type () :
    deployment_style =
  { deployment_option; deployment_type }

let ec2_tag_filter ?key ?type_ ?value () : ec2_tag_filter =
  { key; type_; value }

let ec2_tag_set__ec2_tag_filter ?key ?type_ ?value () :
    ec2_tag_set__ec2_tag_filter =
  { key; type_; value }

let ec2_tag_set ~ec2_tag_filter () : ec2_tag_set = { ec2_tag_filter }

let ecs_service ~cluster_name ~service_name () : ecs_service =
  { cluster_name; service_name }

let load_balancer_info__elb_info ?name () :
    load_balancer_info__elb_info =
  { name }

let load_balancer_info__target_group_info ?name () :
    load_balancer_info__target_group_info =
  { name }

let load_balancer_info__target_group_pair_info__prod_traffic_route
    ~listener_arns () :
    load_balancer_info__target_group_pair_info__prod_traffic_route =
  { listener_arns }

let load_balancer_info__target_group_pair_info__target_group ~name ()
    : load_balancer_info__target_group_pair_info__target_group =
  { name }

let load_balancer_info__target_group_pair_info__test_traffic_route
    ~listener_arns () :
    load_balancer_info__target_group_pair_info__test_traffic_route =
  { listener_arns }

let load_balancer_info__target_group_pair_info ~prod_traffic_route
    ~target_group ~test_traffic_route () :
    load_balancer_info__target_group_pair_info =
  { prod_traffic_route; target_group; test_traffic_route }

let load_balancer_info ~elb_info ~target_group_info
    ~target_group_pair_info () : load_balancer_info =
  { elb_info; target_group_info; target_group_pair_info }

let on_premises_instance_tag_filter ?key ?type_ ?value () :
    on_premises_instance_tag_filter =
  { key; type_; value }

let trigger_configuration ~trigger_events ~trigger_name
    ~trigger_target_arn () : trigger_configuration =
  { trigger_events; trigger_name; trigger_target_arn }

let aws_codedeploy_deployment_group ?autoscaling_groups
    ?deployment_config_name ?id ?outdated_instances_strategy ?tags
    ?tags_all ~app_name ~deployment_group_name ~service_role_arn
    ~alarm_configuration ~auto_rollback_configuration
    ~blue_green_deployment_config ~deployment_style ~ec2_tag_filter
    ~ec2_tag_set ~ecs_service ~load_balancer_info
    ~on_premises_instance_tag_filter ~trigger_configuration () :
    aws_codedeploy_deployment_group =
  {
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

let register ?tf_module ?autoscaling_groups ?deployment_config_name
    ?id ?outdated_instances_strategy ?tags ?tags_all ~app_name
    ~deployment_group_name ~service_role_arn ~alarm_configuration
    ~auto_rollback_configuration ~blue_green_deployment_config
    ~deployment_style ~ec2_tag_filter ~ec2_tag_set ~ecs_service
    ~load_balancer_info ~on_premises_instance_tag_filter
    ~trigger_configuration __resource_id =
  let __resource_type = "aws_codedeploy_deployment_group" in
  let __resource =
    aws_codedeploy_deployment_group ?autoscaling_groups
      ?deployment_config_name ?id ?outdated_instances_strategy ?tags
      ?tags_all ~app_name ~deployment_group_name ~service_role_arn
      ~alarm_configuration ~auto_rollback_configuration
      ~blue_green_deployment_config ~deployment_style ~ec2_tag_filter
      ~ec2_tag_set ~ecs_service ~load_balancer_info
      ~on_premises_instance_tag_filter ~trigger_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
