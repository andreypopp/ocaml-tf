(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ephemeral_storage = {
  size_in_gib : float prop;  (** size_in_gib *)
}
[@@deriving yojson_of]
(** ephemeral_storage *)

type inference_accelerator = {
  device_name : string prop;  (** device_name *)
  device_type : string prop;  (** device_type *)
}
[@@deriving yojson_of]
(** inference_accelerator *)

type placement_constraints = {
  expression : string prop option; [@option]  (** expression *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** placement_constraints *)

type proxy_configuration = {
  container_name : string prop;  (** container_name *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** proxy_configuration *)

type runtime_platform = {
  cpu_architecture : string prop option; [@option]
      (** cpu_architecture *)
  operating_system_family : string prop option; [@option]
      (** operating_system_family *)
}
[@@deriving yojson_of]
(** runtime_platform *)

type volume__docker_volume_configuration = {
  autoprovision : bool prop option; [@option]  (** autoprovision *)
  driver : string prop option; [@option]  (** driver *)
  driver_opts : (string * string prop) list option; [@option]
      (** driver_opts *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** volume__docker_volume_configuration *)

type volume__efs_volume_configuration__authorization_config = {
  access_point_id : string prop option; [@option]
      (** access_point_id *)
  iam : string prop option; [@option]  (** iam *)
}
[@@deriving yojson_of]
(** volume__efs_volume_configuration__authorization_config *)

type volume__efs_volume_configuration = {
  file_system_id : string prop;  (** file_system_id *)
  root_directory : string prop option; [@option]
      (** root_directory *)
  transit_encryption : string prop option; [@option]
      (** transit_encryption *)
  transit_encryption_port : float prop option; [@option]
      (** transit_encryption_port *)
  authorization_config :
    volume__efs_volume_configuration__authorization_config list;
}
[@@deriving yojson_of]
(** volume__efs_volume_configuration *)

type volume__fsx_windows_file_server_volume_configuration__authorization_config = {
  credentials_parameter : string prop;  (** credentials_parameter *)
  domain : string prop;  (** domain *)
}
[@@deriving yojson_of]
(** volume__fsx_windows_file_server_volume_configuration__authorization_config *)

type volume__fsx_windows_file_server_volume_configuration = {
  file_system_id : string prop;  (** file_system_id *)
  root_directory : string prop;  (** root_directory *)
  authorization_config :
    volume__fsx_windows_file_server_volume_configuration__authorization_config
    list;
}
[@@deriving yojson_of]
(** volume__fsx_windows_file_server_volume_configuration *)

type volume = {
  host_path : string prop option; [@option]  (** host_path *)
  name : string prop;  (** name *)
  docker_volume_configuration :
    volume__docker_volume_configuration list;
  efs_volume_configuration : volume__efs_volume_configuration list;
  fsx_windows_file_server_volume_configuration :
    volume__fsx_windows_file_server_volume_configuration list;
}
[@@deriving yojson_of]
(** volume *)

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
  ephemeral_storage : ephemeral_storage list;
  inference_accelerator : inference_accelerator list;
  placement_constraints : placement_constraints list;
  proxy_configuration : proxy_configuration list;
  runtime_platform : runtime_platform list;
  volume : volume list;
}
[@@deriving yojson_of]
(** aws_ecs_task_definition *)

let ephemeral_storage ~size_in_gib () : ephemeral_storage =
  { size_in_gib }

let inference_accelerator ~device_name ~device_type () :
    inference_accelerator =
  { device_name; device_type }

let placement_constraints ?expression ~type_ () :
    placement_constraints =
  { expression; type_ }

let proxy_configuration ?properties ?type_ ~container_name () :
    proxy_configuration =
  { container_name; properties; type_ }

let runtime_platform ?cpu_architecture ?operating_system_family () :
    runtime_platform =
  { cpu_architecture; operating_system_family }

let volume__docker_volume_configuration ?autoprovision ?driver
    ?driver_opts ?labels ?scope () :
    volume__docker_volume_configuration =
  { autoprovision; driver; driver_opts; labels; scope }

let volume__efs_volume_configuration__authorization_config
    ?access_point_id ?iam () :
    volume__efs_volume_configuration__authorization_config =
  { access_point_id; iam }

let volume__efs_volume_configuration ?root_directory
    ?transit_encryption ?transit_encryption_port ~file_system_id
    ~authorization_config () : volume__efs_volume_configuration =
  {
    file_system_id;
    root_directory;
    transit_encryption;
    transit_encryption_port;
    authorization_config;
  }

let volume__fsx_windows_file_server_volume_configuration__authorization_config
    ~credentials_parameter ~domain () :
    volume__fsx_windows_file_server_volume_configuration__authorization_config
    =
  { credentials_parameter; domain }

let volume__fsx_windows_file_server_volume_configuration
    ~file_system_id ~root_directory ~authorization_config () :
    volume__fsx_windows_file_server_volume_configuration =
  { file_system_id; root_directory; authorization_config }

let volume ?host_path ~name ~docker_volume_configuration
    ~efs_volume_configuration
    ~fsx_windows_file_server_volume_configuration () : volume =
  {
    host_path;
    name;
    docker_volume_configuration;
    efs_volume_configuration;
    fsx_windows_file_server_volume_configuration;
  }

let aws_ecs_task_definition ?cpu ?execution_role_arn ?id ?ipc_mode
    ?memory ?network_mode ?pid_mode ?requires_compatibilities
    ?skip_destroy ?tags ?tags_all ?task_role_arn ?track_latest
    ~container_definitions ~family ~ephemeral_storage
    ~inference_accelerator ~placement_constraints
    ~proxy_configuration ~runtime_platform ~volume () :
    aws_ecs_task_definition =
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

type t = {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_role_arn : string prop;
  track_latest : bool prop;
}

let register ?tf_module ?cpu ?execution_role_arn ?id ?ipc_mode
    ?memory ?network_mode ?pid_mode ?requires_compatibilities
    ?skip_destroy ?tags ?tags_all ?task_role_arn ?track_latest
    ~container_definitions ~family ~ephemeral_storage
    ~inference_accelerator ~placement_constraints
    ~proxy_configuration ~runtime_platform ~volume __resource_id =
  let __resource_type = "aws_ecs_task_definition" in
  let __resource =
    aws_ecs_task_definition ?cpu ?execution_role_arn ?id ?ipc_mode
      ?memory ?network_mode ?pid_mode ?requires_compatibilities
      ?skip_destroy ?tags ?tags_all ?task_role_arn ?track_latest
      ~container_definitions ~family ~ephemeral_storage
      ~inference_accelerator ~placement_constraints
      ~proxy_configuration ~runtime_platform ~volume ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_task_definition __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       arn_without_revision =
         Prop.computed __resource_type __resource_id
           "arn_without_revision";
       container_definitions =
         Prop.computed __resource_type __resource_id
           "container_definitions";
       cpu = Prop.computed __resource_type __resource_id "cpu";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       family = Prop.computed __resource_type __resource_id "family";
       id = Prop.computed __resource_type __resource_id "id";
       ipc_mode =
         Prop.computed __resource_type __resource_id "ipc_mode";
       memory = Prop.computed __resource_type __resource_id "memory";
       network_mode =
         Prop.computed __resource_type __resource_id "network_mode";
       pid_mode =
         Prop.computed __resource_type __resource_id "pid_mode";
       requires_compatibilities =
         Prop.computed __resource_type __resource_id
           "requires_compatibilities";
       revision =
         Prop.computed __resource_type __resource_id "revision";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       task_role_arn =
         Prop.computed __resource_type __resource_id "task_role_arn";
       track_latest =
         Prop.computed __resource_type __resource_id "track_latest";
     }
      : t)
  in
  __resource_attributes
