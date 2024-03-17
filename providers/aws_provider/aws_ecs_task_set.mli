(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_task_set__capacity_provider_strategy
type aws_ecs_task_set__load_balancer
type aws_ecs_task_set__network_configuration
type aws_ecs_task_set__scale
type aws_ecs_task_set__service_registries
type aws_ecs_task_set

val aws_ecs_task_set :
  ?external_id:string ->
  ?force_delete:bool ->
  ?id:string ->
  ?launch_type:string ->
  ?platform_version:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?wait_until_stable:bool ->
  ?wait_until_stable_timeout:string ->
  cluster:string ->
  service:string ->
  task_definition:string ->
  capacity_provider_strategy:
    aws_ecs_task_set__capacity_provider_strategy list ->
  load_balancer:aws_ecs_task_set__load_balancer list ->
  network_configuration:aws_ecs_task_set__network_configuration list ->
  scale:aws_ecs_task_set__scale list ->
  service_registries:aws_ecs_task_set__service_registries list ->
  string ->
  unit
