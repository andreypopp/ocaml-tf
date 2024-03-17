(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_task_definition__ephemeral_storage = {
  size_in_gib : float;  (** size_in_gib *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__ephemeral_storage *)

type aws_ecs_task_definition__inference_accelerator = {
  device_name : string;  (** device_name *)
  device_type : string;  (** device_type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__inference_accelerator *)

type aws_ecs_task_definition__placement_constraints = {
  expression : string option; [@option]  (** expression *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__placement_constraints *)

type aws_ecs_task_definition__proxy_configuration = {
  container_name : string;  (** container_name *)
  properties : (string * string) list option; [@option]
      (** properties *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__proxy_configuration *)

type aws_ecs_task_definition__runtime_platform = {
  cpu_architecture : string option; [@option]
      (** cpu_architecture *)
  operating_system_family : string option; [@option]
      (** operating_system_family *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__runtime_platform *)

type aws_ecs_task_definition__volume__docker_volume_configuration = {
  autoprovision : bool option; [@option]  (** autoprovision *)
  driver : string option; [@option]  (** driver *)
  driver_opts : (string * string) list option; [@option]
      (** driver_opts *)
  labels : (string * string) list option; [@option]  (** labels *)
  scope : string option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__docker_volume_configuration *)

type aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config = {
  access_point_id : string option; [@option]  (** access_point_id *)
  iam : string option; [@option]  (** iam *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config *)

type aws_ecs_task_definition__volume__efs_volume_configuration = {
  file_system_id : string;  (** file_system_id *)
  root_directory : string option; [@option]  (** root_directory *)
  transit_encryption : string option; [@option]
      (** transit_encryption *)
  transit_encryption_port : float option; [@option]
      (** transit_encryption_port *)
  authorization_config :
    aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config
    list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__efs_volume_configuration *)

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config = {
  credentials_parameter : string;  (** credentials_parameter *)
  domain : string;  (** domain *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config *)

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration = {
  file_system_id : string;  (** file_system_id *)
  root_directory : string;  (** root_directory *)
  authorization_config :
    aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config
    list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration *)

type aws_ecs_task_definition__volume = {
  host_path : string option; [@option]  (** host_path *)
  name : string;  (** name *)
  docker_volume_configuration :
    aws_ecs_task_definition__volume__docker_volume_configuration list;
  efs_volume_configuration :
    aws_ecs_task_definition__volume__efs_volume_configuration list;
  fsx_windows_file_server_volume_configuration :
    aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume *)

type aws_ecs_task_definition = {
  container_definitions : string;  (** container_definitions *)
  cpu : string option; [@option]  (** cpu *)
  execution_role_arn : string option; [@option]
      (** execution_role_arn *)
  family : string;  (** family *)
  id : string option; [@option]  (** id *)
  ipc_mode : string option; [@option]  (** ipc_mode *)
  memory : string option; [@option]  (** memory *)
  network_mode : string option; [@option]  (** network_mode *)
  pid_mode : string option; [@option]  (** pid_mode *)
  requires_compatibilities : string list option; [@option]
      (** requires_compatibilities *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  task_role_arn : string option; [@option]  (** task_role_arn *)
  track_latest : bool option; [@option]  (** track_latest *)
  ephemeral_storage :
    aws_ecs_task_definition__ephemeral_storage list;
  inference_accelerator :
    aws_ecs_task_definition__inference_accelerator list;
  placement_constraints :
    aws_ecs_task_definition__placement_constraints list;
  proxy_configuration :
    aws_ecs_task_definition__proxy_configuration list;
  runtime_platform : aws_ecs_task_definition__runtime_platform list;
  volume : aws_ecs_task_definition__volume list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition *)

let aws_ecs_task_definition ?cpu ?execution_role_arn ?id ?ipc_mode
    ?memory ?network_mode ?pid_mode ?requires_compatibilities
    ?skip_destroy ?tags ?tags_all ?task_role_arn ?track_latest
    ~container_definitions ~family ~ephemeral_storage
    ~inference_accelerator ~placement_constraints
    ~proxy_configuration ~runtime_platform ~volume __resource_id =
  let __resource_type = "aws_ecs_task_definition" in
  let __resource =
    {
      container_definitions;
      cpu;
      execution_role_arn;
      family;
      id;
      ipc_mode;
      memory;
      network_mode;
      pid_mode;
      requires_compatibilities;
      skip_destroy;
      tags;
      tags_all;
      task_role_arn;
      track_latest;
      ephemeral_storage;
      inference_accelerator;
      placement_constraints;
      proxy_configuration;
      runtime_platform;
      volume;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_task_definition __resource);
  ()
