(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_task_definition__ephemeral_storage = {
  size_in_gib : float prop;  (** size_in_gib *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__ephemeral_storage *)

type aws_ecs_task_definition__inference_accelerator = {
  device_name : string prop;  (** device_name *)
  device_type : string prop;  (** device_type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__inference_accelerator *)

type aws_ecs_task_definition__placement_constraints = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__placement_constraints *)

type aws_ecs_task_definition__proxy_configuration = {
  container_name : string prop;  (** container_name *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__proxy_configuration *)

type aws_ecs_task_definition__runtime_platform = {
  cpu_architecture : string prop option; [@option]
      (** cpu_architecture *)
  operating_system_family : string prop option; [@option]
      (** operating_system_family *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__runtime_platform *)

type aws_ecs_task_definition__volume__docker_volume_configuration = {
  autoprovision : bool prop option; [@option]  (** autoprovision *)
  driver : string prop option; [@option]  (** driver *)
  driver_opts : (string * string prop) list option; [@option]
      (** driver_opts *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__docker_volume_configuration *)

type aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config = {
  access_point_id : string prop option; [@option]
      (** access_point_id *)
  iam : string prop option; [@option]  (** iam *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config *)

type aws_ecs_task_definition__volume__efs_volume_configuration = {
  file_system_id : string prop;  (** file_system_id *)
  root_directory : string prop option; [@option]
      (** root_directory *)
  transit_encryption : string prop option; [@option]
      (** transit_encryption *)
  transit_encryption_port : float prop option; [@option]
      (** transit_encryption_port *)
  authorization_config :
    aws_ecs_task_definition__volume__efs_volume_configuration__authorization_config
    list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__efs_volume_configuration *)

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config = {
  credentials_parameter : string prop;  (** credentials_parameter *)
  domain : string prop;  (** domain *)
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config *)

type aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration = {
  file_system_id : string prop;  (** file_system_id *)
  root_directory : string prop;  (** root_directory *)
  authorization_config :
    aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration__authorization_config
    list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition__volume__fsx_windows_file_server_volume_configuration *)

type aws_ecs_task_definition__volume = {
  host_path : string prop option; [@option]  (** host_path *)
  name : string prop;  (** name *)
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
  container_definitions : string prop;  (** container_definitions *)
  cpu : string prop option; [@option]  (** cpu *)
  execution_role_arn : string prop option; [@option]
      (** execution_role_arn *)
  family : string prop;  (** family *)
  id : string prop option; [@option]  (** id *)
  ipc_mode : string prop option; [@option]  (** ipc_mode *)
  memory : string prop option; [@option]  (** memory *)
  network_mode : string prop option; [@option]  (** network_mode *)
  pid_mode : string prop option; [@option]  (** pid_mode *)
  requires_compatibilities : string prop list option; [@option]
      (** requires_compatibilities *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  task_role_arn : string prop option; [@option]  (** task_role_arn *)
  track_latest : bool prop option; [@option]  (** track_latest *)
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
