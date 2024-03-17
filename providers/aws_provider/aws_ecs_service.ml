(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ecs_service__alarms = {
  alarm_names : string list;  (** alarm_names *)
  enable : bool;  (** enable *)
  rollback : bool;  (** rollback *)
}
[@@deriving yojson_of]
(** aws_ecs_service__alarms *)

type aws_ecs_service__capacity_provider_strategy = {
  base : float option; [@option]  (** base *)
  capacity_provider : string;  (** capacity_provider *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_ecs_service__capacity_provider_strategy *)

type aws_ecs_service__deployment_circuit_breaker = {
  enable : bool;  (** enable *)
  rollback : bool;  (** rollback *)
}
[@@deriving yojson_of]
(** aws_ecs_service__deployment_circuit_breaker *)

type aws_ecs_service__deployment_controller = {
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__deployment_controller *)

type aws_ecs_service__load_balancer = {
  container_name : string;  (** container_name *)
  container_port : float;  (** container_port *)
  elb_name : string option; [@option]  (** elb_name *)
  target_group_arn : string option; [@option]  (** target_group_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__load_balancer *)

type aws_ecs_service__network_configuration = {
  assign_public_ip : bool option; [@option]  (** assign_public_ip *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_ecs_service__network_configuration *)

type aws_ecs_service__ordered_placement_strategy = {
  field : string option; [@option]  (** field *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__ordered_placement_strategy *)

type aws_ecs_service__placement_constraints = {
  expression : string option; [@option]  (** expression *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_service__placement_constraints *)

type aws_ecs_service__service_connect_configuration__log_configuration__secret_option = {
  name : string;  (** name *)
  value_from : string;  (** value_from *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__log_configuration__secret_option *)

type aws_ecs_service__service_connect_configuration__log_configuration = {
  log_driver : string;  (** log_driver *)
  options : (string * string) list option; [@option]  (** options *)
  secret_option :
    aws_ecs_service__service_connect_configuration__log_configuration__secret_option
    list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__log_configuration *)

type aws_ecs_service__service_connect_configuration__service__client_alias = {
  dns_name : string option; [@option]  (** dns_name *)
  port : float;  (** port *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__client_alias *)

type aws_ecs_service__service_connect_configuration__service__timeout = {
  idle_timeout_seconds : float option; [@option]
      (** idle_timeout_seconds *)
  per_request_timeout_seconds : float option; [@option]
      (** per_request_timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__timeout *)

type aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority = {
  aws_pca_authority_arn : string;  (** aws_pca_authority_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority *)

type aws_ecs_service__service_connect_configuration__service__tls = {
  kms_key : string option; [@option]  (** kms_key *)
  role_arn : string option; [@option]  (** role_arn *)
  issuer_cert_authority :
    aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority
    list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration__service__tls *)

type aws_ecs_service__service_connect_configuration__service = {
  discovery_name : string option; [@option]  (** discovery_name *)
  ingress_port_override : float option; [@option]
      (** ingress_port_override *)
  port_name : string;  (** port_name *)
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
  enabled : bool;  (** enabled *)
  namespace : string option; [@option]  (** namespace *)
  log_configuration :
    aws_ecs_service__service_connect_configuration__log_configuration
    list;
  service :
    aws_ecs_service__service_connect_configuration__service list;
}
[@@deriving yojson_of]
(** aws_ecs_service__service_connect_configuration *)

type aws_ecs_service__service_registries = {
  container_name : string option; [@option]  (** container_name *)
  container_port : float option; [@option]  (** container_port *)
  port : float option; [@option]  (** port *)
  registry_arn : string;  (** registry_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_service__service_registries *)

type aws_ecs_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ecs_service__timeouts *)

type aws_ecs_service = {
  deployment_maximum_percent : float option; [@option]
      (** deployment_maximum_percent *)
  deployment_minimum_healthy_percent : float option; [@option]
      (** deployment_minimum_healthy_percent *)
  desired_count : float option; [@option]  (** desired_count *)
  enable_ecs_managed_tags : bool option; [@option]
      (** enable_ecs_managed_tags *)
  enable_execute_command : bool option; [@option]
      (** enable_execute_command *)
  force_new_deployment : bool option; [@option]
      (** force_new_deployment *)
  health_check_grace_period_seconds : float option; [@option]
      (** health_check_grace_period_seconds *)
  name : string;  (** name *)
  propagate_tags : string option; [@option]  (** propagate_tags *)
  scheduling_strategy : string option; [@option]
      (** scheduling_strategy *)
  tags : (string * string) list option; [@option]  (** tags *)
  task_definition : string option; [@option]  (** task_definition *)
  wait_for_steady_state : bool option; [@option]
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

let aws_ecs_service ?deployment_maximum_percent
    ?deployment_minimum_healthy_percent ?desired_count
    ?enable_ecs_managed_tags ?enable_execute_command
    ?force_new_deployment ?health_check_grace_period_seconds
    ?propagate_tags ?scheduling_strategy ?tags ?task_definition
    ?wait_for_steady_state ?timeouts ~name ~alarms
    ~capacity_provider_strategy ~deployment_circuit_breaker
    ~deployment_controller ~load_balancer ~network_configuration
    ~ordered_placement_strategy ~placement_constraints
    ~service_connect_configuration ~service_registries __resource_id
    =
  let __resource_type = "aws_ecs_service" in
  let __resource =
    {
      deployment_maximum_percent;
      deployment_minimum_healthy_percent;
      desired_count;
      enable_ecs_managed_tags;
      enable_execute_command;
      force_new_deployment;
      health_check_grace_period_seconds;
      name;
      propagate_tags;
      scheduling_strategy;
      tags;
      task_definition;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_service __resource);
  ()
