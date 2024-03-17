(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_task_definition__ephemeral_storage
type aws_ecs_task_definition__inference_accelerator
type aws_ecs_task_definition__placement_constraints
type aws_ecs_task_definition__proxy_configuration
type aws_ecs_task_definition__runtime_platform
type aws_ecs_task_definition__volume__docker_volume_configuration

type aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config

type aws_ecs_task_definition__volume__efs_volume_configuration

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration

type aws_ecs_task_definition__volume
type aws_ecs_task_definition

val aws_ecs_task_definition :
  ?cpu:string ->
  ?execution_role_arn:string ->
  ?ipc_mode:string ->
  ?memory:string ->
  ?pid_mode:string ->
  ?requires_compatibilities:string list ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  ?task_role_arn:string ->
  ?track_latest:bool ->
  container_definitions:string ->
  family:string ->
  ephemeral_storage:aws_ecs_task_definition__ephemeral_storage list ->
  inference_accelerator:
    aws_ecs_task_definition__inference_accelerator list ->
  placement_constraints:
    aws_ecs_task_definition__placement_constraints list ->
  proxy_configuration:
    aws_ecs_task_definition__proxy_configuration list ->
  runtime_platform:aws_ecs_task_definition__runtime_platform list ->
  volume:aws_ecs_task_definition__volume list ->
  string ->
  unit
