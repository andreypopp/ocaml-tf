(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_service__alarms
type aws_ecs_service__capacity_provider_strategy
type aws_ecs_service__deployment_circuit_breaker
type aws_ecs_service__deployment_controller
type aws_ecs_service__load_balancer
type aws_ecs_service__network_configuration
type aws_ecs_service__ordered_placement_strategy
type aws_ecs_service__placement_constraints

type aws_ecs_service__service_connect_configuration__log_configuration__secret_option

type aws_ecs_service__service_connect_configuration__log_configuration

type aws_ecs_service__service_connect_configuration__service__client_alias

type aws_ecs_service__service_connect_configuration__service__timeout

type aws_ecs_service__service_connect_configuration__service__tls__issuer_cert_authority

type aws_ecs_service__service_connect_configuration__service__tls
type aws_ecs_service__service_connect_configuration__service
type aws_ecs_service__service_connect_configuration
type aws_ecs_service__service_registries
type aws_ecs_service__timeouts
type aws_ecs_service

val aws_ecs_service :
  ?cluster:string ->
  ?deployment_maximum_percent:float ->
  ?deployment_minimum_healthy_percent:float ->
  ?desired_count:float ->
  ?enable_ecs_managed_tags:bool ->
  ?enable_execute_command:bool ->
  ?force_new_deployment:bool ->
  ?health_check_grace_period_seconds:float ->
  ?iam_role:string ->
  ?id:string ->
  ?launch_type:string ->
  ?platform_version:string ->
  ?propagate_tags:string ->
  ?scheduling_strategy:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?task_definition:string ->
  ?triggers:(string * string) list ->
  ?wait_for_steady_state:bool ->
  ?timeouts:aws_ecs_service__timeouts ->
  name:string ->
  alarms:aws_ecs_service__alarms list ->
  capacity_provider_strategy:
    aws_ecs_service__capacity_provider_strategy list ->
  deployment_circuit_breaker:
    aws_ecs_service__deployment_circuit_breaker list ->
  deployment_controller:aws_ecs_service__deployment_controller list ->
  load_balancer:aws_ecs_service__load_balancer list ->
  network_configuration:aws_ecs_service__network_configuration list ->
  ordered_placement_strategy:
    aws_ecs_service__ordered_placement_strategy list ->
  placement_constraints:aws_ecs_service__placement_constraints list ->
  service_connect_configuration:
    aws_ecs_service__service_connect_configuration list ->
  service_registries:aws_ecs_service__service_registries list ->
  string ->
  unit
