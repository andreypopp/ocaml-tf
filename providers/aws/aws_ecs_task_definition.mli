(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ephemeral_storage

val ephemeral_storage :
  size_in_gib:float prop -> unit -> ephemeral_storage

type inference_accelerator

val inference_accelerator :
  device_name:string prop ->
  device_type:string prop ->
  unit ->
  inference_accelerator

type placement_constraints

val placement_constraints :
  ?expression:string prop ->
  type_:string prop ->
  unit ->
  placement_constraints

type proxy_configuration

val proxy_configuration :
  ?properties:string prop Tf_core.assoc ->
  ?type_:string prop ->
  container_name:string prop ->
  unit ->
  proxy_configuration

type runtime_platform

val runtime_platform :
  ?cpu_architecture:string prop ->
  ?operating_system_family:string prop ->
  unit ->
  runtime_platform

type volume__docker_volume_configuration

val volume__docker_volume_configuration :
  ?autoprovision:bool prop ->
  ?driver:string prop ->
  ?driver_opts:string prop Tf_core.assoc ->
  ?labels:string prop Tf_core.assoc ->
  ?scope:string prop ->
  unit ->
  volume__docker_volume_configuration

type volume__efs_volume_configuration__authorization_config

val volume__efs_volume_configuration__authorization_config :
  ?access_point_id:string prop ->
  ?iam:string prop ->
  unit ->
  volume__efs_volume_configuration__authorization_config

type volume__efs_volume_configuration

val volume__efs_volume_configuration :
  ?root_directory:string prop ->
  ?transit_encryption:string prop ->
  ?transit_encryption_port:float prop ->
  ?authorization_config:
    volume__efs_volume_configuration__authorization_config list ->
  file_system_id:string prop ->
  unit ->
  volume__efs_volume_configuration

type volume__fsx_windows_file_server_volume_configuration__authorization_config

val volume__fsx_windows_file_server_volume_configuration__authorization_config :
  credentials_parameter:string prop ->
  domain:string prop ->
  unit ->
  volume__fsx_windows_file_server_volume_configuration__authorization_config

type volume__fsx_windows_file_server_volume_configuration

val volume__fsx_windows_file_server_volume_configuration :
  file_system_id:string prop ->
  root_directory:string prop ->
  authorization_config:
    volume__fsx_windows_file_server_volume_configuration__authorization_config
    list ->
  unit ->
  volume__fsx_windows_file_server_volume_configuration

type volume

val volume :
  ?configure_at_launch:bool prop ->
  ?host_path:string prop ->
  ?docker_volume_configuration:
    volume__docker_volume_configuration list ->
  ?efs_volume_configuration:volume__efs_volume_configuration list ->
  ?fsx_windows_file_server_volume_configuration:
    volume__fsx_windows_file_server_volume_configuration list ->
  name:string prop ->
  unit ->
  volume

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_role_arn:string prop ->
  ?track_latest:bool prop ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?proxy_configuration:proxy_configuration list ->
  ?runtime_platform:runtime_platform list ->
  container_definitions:string prop ->
  family:string prop ->
  inference_accelerator:inference_accelerator list ->
  placement_constraints:placement_constraints list ->
  volume:volume list ->
  unit ->
  aws_ecs_task_definition

val yojson_of_aws_ecs_task_definition :
  aws_ecs_task_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  arn_without_revision : string prop;
  container_definitions : string prop;
  cpu : string prop;
  execution_role_arn : string prop;
  family : string prop;
  id : string prop;
  ipc_mode : string prop;
  memory : string prop;
  network_mode : string prop;
  pid_mode : string prop;
  requires_compatibilities : string list prop;
  revision : float prop;
  skip_destroy : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  task_role_arn : string prop;
  track_latest : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?cpu:string prop ->
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?ipc_mode:string prop ->
  ?memory:string prop ->
  ?network_mode:string prop ->
  ?pid_mode:string prop ->
  ?requires_compatibilities:string prop list ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_role_arn:string prop ->
  ?track_latest:bool prop ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?proxy_configuration:proxy_configuration list ->
  ?runtime_platform:runtime_platform list ->
  container_definitions:string prop ->
  family:string prop ->
  inference_accelerator:inference_accelerator list ->
  placement_constraints:placement_constraints list ->
  volume:volume list ->
  string ->
  t

val make :
  ?cpu:string prop ->
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?ipc_mode:string prop ->
  ?memory:string prop ->
  ?network_mode:string prop ->
  ?pid_mode:string prop ->
  ?requires_compatibilities:string prop list ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?task_role_arn:string prop ->
  ?track_latest:bool prop ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?proxy_configuration:proxy_configuration list ->
  ?runtime_platform:runtime_platform list ->
  container_definitions:string prop ->
  family:string prop ->
  inference_accelerator:inference_accelerator list ->
  placement_constraints:placement_constraints list ->
  volume:volume list ->
  string ->
  t Tf_core.resource
