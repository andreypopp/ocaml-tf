(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_service__alarms = {
  alarm_names : string prop list;  (** alarm_names *)
  enable : bool prop;  (** enable *)
  rollback : bool prop;  (** rollback *)
}
[@@deriving yojson_of]
(** aws_ecs_service__alarms *)

type aws_ecs_service__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_ecs_service__capacity_provider_strategy *)

type aws_ecs_service__deployment_circuit_breaker = {
  enable : bool prop;  (** enable *)
  rollback : bool prop;  (** rollback *)
}
[@@deriving yojson_of]
(** aws_ecs_service__deployment_circuit_breaker *)

type aws_ecs_service__deployment_controller = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__deployment_controller *)

type aws_ecs_service__load_balancer = {
  container_name : string prop;  (** container_name *)
  container_port : float prop;  (** container_port *)
  elb_name : string prop option; [@option]  (** elb_name *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__load_balancer *)

type aws_ecs_service__network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_ecs_service__network_configuration *)

type aws_ecs_service__ordered_placement_strategy = {
  field : string prop option; [@option]  (** field *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__ordered_placement_strategy *)

type aws_ecs_service__placement_constraints = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__placement_constraints *)

type aws_ecs_service__service_connect_configuration__log_configuration__secret_option = {
  name : string prop;  (** name *)
  value_from : string prop;  (** value_from *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__log_configuration__secret_option *)

type aws_ecs_service__service_connect_configuration__log_configuration = {
  log_driver : string prop;  (** log_driver *)
  options : (string * string prop) list option; [@option]
      (** options *)
  secret_option :
    aws_ecs_service__service_connect_configuration__log_configuration__secret_option
    list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__log_configuration *)

type aws_ecs_service__service_connect_configuration__service__client_alias = {
  dns_name : string prop option; [@option]  (** dns_name *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__client_alias *)

type aws_ecs_service__service_connect_configuration__service__timeout = {
  idle_timeout_seconds : float prop option; [@option]
      (** idle_timeout_seconds *)
  per_request_timeout_seconds : float prop option; [@option]
      (** per_request_timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__timeout *)

type aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority = {
  aws_pca_authority_arn : string prop;  (** aws_pca_authority_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority *)

type aws_ecs_service__service_connect_configuration__service__tls = {
  kms_key : string prop option; [@option]  (** kms_key *)
  role_arn : string prop option; [@option]  (** role_arn *)
  issuer_cert_authority :
    aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority
    list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__tls *)

type aws_ecs_service__service_connect_configuration__service = {
  discovery_name : string prop option; [@option]
      (** discovery_name *)
  ingress_port_override : float prop option; [@option]
      (** ingress_port_override *)
  port_name : string prop;  (** port_name *)
  client_alias :
    aws_ecs_service__service_connect_configuration__service__client_alias
    list;
  timeout :
    aws_ecs_service__service_connect_configuration__service__timeout
    list;
  tls :
    aws_ecs_service__service_connect_configuration__service__tls list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service *)

type aws_ecs_service__service_connect_configuration = {
  enabled : bool prop;  (** enabled *)
  namespace : string prop option; [@option]  (** namespace *)
  log_configuration :
    aws_ecs_service__service_connect_configuration__log_configuration
    list;
  service :
    aws_ecs_service__service_connect_configuration__service list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration *)

type aws_ecs_service__service_registries = {
  container_name : string prop option; [@option]
      (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  port : float prop option; [@option]  (** port *)
  registry_arn : string prop;  (** registry_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_registries *)

type aws_ecs_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ecs_service__timeouts *)

type aws_ecs_service = {
  cluster : string prop option; [@option]  (** cluster *)
  deployment_maximum_percent : float prop option; [@option]
      (** deployment_maximum_percent *)
  deployment_minimum_healthy_percent : float prop option; [@option]
      (** deployment_minimum_healthy_percent *)
  desired_count : float prop option; [@option]  (** desired_count *)
  enable_ecs_managed_tags : bool prop option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool prop option; [@option]
      (** enable_execute_command *)
  force_new_deployment : bool prop option; [@option]
      (** force_new_deployment *)
  health_check_grace_period_seconds : float prop option; [@option]
      (** health_check_grace_period_seconds *)
  iam_role : string prop option; [@option]  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  launch_type : string prop option; [@option]  (** launch_type *)
  name : string prop;  (** name *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  propagate_tags : string prop option; [@option]
      (** propagate_tags *)
  scheduling_strategy : string prop option; [@option]
      (** scheduling_strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  task_definition : string prop option; [@option]
      (** task_definition *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  wait_for_steady_state : bool prop option; [@option]
      (** wait_for_steady_state *)
  alarms : aws_ecs_service__alarms list;
  capacity_provider_strategy :
    aws_ecs_service__capacity_provider_strategy list;
  deployment_circuit_breaker :
    aws_ecs_service__deployment_circuit_breaker list;
  deployment_controller :
    aws_ecs_service__deployment_controller list;
  load_balancer : aws_ecs_service__load_balancer list;
  network_configuration :
    aws_ecs_service__network_configuration list;
  ordered_placement_strategy :
    aws_ecs_service__ordered_placement_strategy list;
  placement_constraints :
    aws_ecs_service__placement_constraints list;
  service_connect_configuration :
    aws_ecs_service__service_connect_configuration list;
  service_registries : aws_ecs_service__service_registries list;
  timeouts : aws_ecs_service__timeouts option;
}
[@@deriving yojson_of]
(** aws_ecs_service *)

type t = {
  cluster : string prop;
  deployment_maximum_percent : float prop;
  deployment_minimum_healthy_percent : float prop;
  desired_count : float prop;
  enable_ecs_managed_tags : bool prop;
  enable_execute_command : bool prop;
  force_new_deployment : bool prop;
  health_check_grace_period_seconds : float prop;
  iam_role : string prop;
  id : string prop;
  launch_type : string prop;
  name : string prop;
  platform_version : string prop;
  propagate_tags : string prop;
  scheduling_strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_definition : string prop;
  triggers : (string * string) list prop;
  wait_for_steady_state : bool prop;
}

let aws_ecs_service ?cluster ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?iam_role ?id ?launch_type ?platform_version ?propagate_tags
    ?scheduling_strategy ?tags ?tags_all ?task_definition ?triggers
    ?wait_for_steady_state ?timeouts ~name ~alarms
    ~capacity_provider_strategy ~deployment_circuit_breaker
    ~deployment_controller ~load_balancer ~network_configuration
    ~ordered_placement_strategy ~placement_constraints
    ~service_connect_configuration ~service_registries __resource_id
    =
  let __resource_type = "aws_ecs_service" in
  let __resource =
    ({
       cluster;
       deployment_maximum_percent;
       deployment_minimum_healthy_percent;
       desired_count;
       enable_ecs_managed_tags;
       enable_execute_command;
       force_new_deployment;
       health_check_grace_period_seconds;
       iam_role;
       id;
       launch_type;
       name;
       platform_version;
       propagate_tags;
       scheduling_strategy;
       tags;
       tags_all;
       task_definition;
       triggers;
       wait_for_steady_state;
       alarms;
       capacity_provider_strategy;
       deployment_circuit_breaker;
       deployment_controller;
       load_balancer;
       network_configuration;
       ordered_placement_strategy;
       placement_constraints;
       service_connect_configuration;
       service_registries;
       timeouts;
     }
      : aws_ecs_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_service __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       deployment_maximum_percent =
         Prop.computed __resource_type __resource_id
           "deployment_maximum_percent";
       deployment_minimum_healthy_percent =
         Prop.computed __resource_type __resource_id
           "deployment_minimum_healthy_percent";
       desired_count =
         Prop.computed __resource_type __resource_id "desired_count";
       enable_ecs_managed_tags =
         Prop.computed __resource_type __resource_id
           "enable_ecs_managed_tags";
       enable_execute_command =
         Prop.computed __resource_type __resource_id
           "enable_execute_command";
       force_new_deployment =
         Prop.computed __resource_type __resource_id
           "force_new_deployment";
       health_check_grace_period_seconds =
         Prop.computed __resource_type __resource_id
           "health_check_grace_period_seconds";
       iam_role =
         Prop.computed __resource_type __resource_id "iam_role";
       id = Prop.computed __resource_type __resource_id "id";
       launch_type =
         Prop.computed __resource_type __resource_id "launch_type";
       name = Prop.computed __resource_type __resource_id "name";
       platform_version =
         Prop.computed __resource_type __resource_id
           "platform_version";
       propagate_tags =
         Prop.computed __resource_type __resource_id "propagate_tags";
       scheduling_strategy =
         Prop.computed __resource_type __resource_id
           "scheduling_strategy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       task_definition =
         Prop.computed __resource_type __resource_id
           "task_definition";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
       wait_for_steady_state =
         Prop.computed __resource_type __resource_id
           "wait_for_steady_state";
     }
      : t)
  in
  __resource_attributes
