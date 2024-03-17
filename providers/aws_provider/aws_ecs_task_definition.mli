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
  ?cpu:string prop ->
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?ipc_mode:string prop ->
  ?memory:string prop ->
  ?network_mode:string prop ->
  ?pid_mode:string prop ->
  ?requires_compatibilities:string prop list ->
  ?skip_destroy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?task_role_arn:string prop ->
  ?track_latest:bool prop ->
  container_definitions:string prop ->
  family:string prop ->
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
