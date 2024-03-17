(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_task_set__capacity_provider_strategy
type aws_ecs_task_set__load_balancer
type aws_ecs_task_set__network_configuration
type aws_ecs_task_set__scale
type aws_ecs_task_set__service_registries
type aws_ecs_task_set

val aws_ecs_task_set :
  ?external_id:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_until_stable:bool prop ->
  ?wait_until_stable_timeout:string prop ->
  cluster:string prop ->
  service:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:
    aws_ecs_task_set__capacity_provider_strategy list ->
  load_balancer:aws_ecs_task_set__load_balancer list ->
  network_configuration:aws_ecs_task_set__network_configuration list ->
  scale:aws_ecs_task_set__scale list ->
  service_registries:aws_ecs_task_set__service_registries list ->
  string ->
  unit
