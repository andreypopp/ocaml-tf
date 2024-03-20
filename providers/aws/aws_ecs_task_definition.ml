(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ephemeral_storage = { size_in_gib : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_storage) -> ()

let yojson_of_ephemeral_storage =
  (function
   | { size_in_gib = v_size_in_gib } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gib in
         ("size_in_gib", arg) :: bnds
       in
       `Assoc bnds
    : ephemeral_storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_storage

[@@@deriving.end]

type inference_accelerator = {
  device_name : string prop;
  device_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inference_accelerator) -> ()

let yojson_of_inference_accelerator =
  (function
   | { device_name = v_device_name; device_type = v_device_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_type in
         ("device_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : inference_accelerator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inference_accelerator

[@@@deriving.end]

type placement_constraints = {
  expression : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_constraints) -> ()

let yojson_of_placement_constraints =
  (function
   | { expression = v_expression; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_constraints

[@@@deriving.end]

type proxy_configuration = {
  container_name : string prop;
  properties : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy_configuration) -> ()

let yojson_of_proxy_configuration =
  (function
   | {
       container_name = v_container_name;
       properties = v_properties;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : proxy_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy_configuration

[@@@deriving.end]

type runtime_platform = {
  cpu_architecture : string prop option; [@option]
  operating_system_family : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : runtime_platform) -> ()

let yojson_of_runtime_platform =
  (function
   | {
       cpu_architecture = v_cpu_architecture;
       operating_system_family = v_operating_system_family;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operating_system_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system_family", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_architecture", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : runtime_platform -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_runtime_platform

[@@@deriving.end]

type volume__docker_volume_configuration = {
  autoprovision : bool prop option; [@option]
  driver : string prop option; [@option]
  driver_opts : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  scope : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume__docker_volume_configuration) -> ()

let yojson_of_volume__docker_volume_configuration =
  (function
   | {
       autoprovision = v_autoprovision;
       driver = v_driver;
       driver_opts = v_driver_opts;
       labels = v_labels;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_driver_opts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "driver_opts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_driver with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "driver", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoprovision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "autoprovision", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : volume__docker_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume__docker_volume_configuration

[@@@deriving.end]

type volume__efs_volume_configuration__authorization_config = {
  access_point_id : string prop option; [@option]
  iam : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : volume__efs_volume_configuration__authorization_config) ->
  ()

let yojson_of_volume__efs_volume_configuration__authorization_config
    =
  (function
   | { access_point_id = v_access_point_id; iam = v_iam } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_iam with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_point_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_point_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : volume__efs_volume_configuration__authorization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_volume__efs_volume_configuration__authorization_config

[@@@deriving.end]

type volume__efs_volume_configuration = {
  file_system_id : string prop;
  root_directory : string prop option; [@option]
  transit_encryption : string prop option; [@option]
  transit_encryption_port : float prop option; [@option]
  authorization_config :
    volume__efs_volume_configuration__authorization_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume__efs_volume_configuration) -> ()

let yojson_of_volume__efs_volume_configuration =
  (function
   | {
       file_system_id = v_file_system_id;
       root_directory = v_root_directory;
       transit_encryption = v_transit_encryption;
       transit_encryption_port = v_transit_encryption_port;
       authorization_config = v_authorization_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_volume__efs_volume_configuration__authorization_config
             v_authorization_config
         in
         ("authorization_config", arg) :: bnds
       in
       let bnds =
         match v_transit_encryption_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "transit_encryption_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transit_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_directory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : volume__efs_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume__efs_volume_configuration

[@@@deriving.end]

type volume__fsx_windows_file_server_volume_configuration__authorization_config = {
  credentials_parameter : string prop;
  domain : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       volume__fsx_windows_file_server_volume_configuration__authorization_config) ->
  ()

let yojson_of_volume__fsx_windows_file_server_volume_configuration__authorization_config
    =
  (function
   | {
       credentials_parameter = v_credentials_parameter;
       domain = v_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credentials_parameter
         in
         ("credentials_parameter", arg) :: bnds
       in
       `Assoc bnds
    : volume__fsx_windows_file_server_volume_configuration__authorization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_volume__fsx_windows_file_server_volume_configuration__authorization_config

[@@@deriving.end]

type volume__fsx_windows_file_server_volume_configuration = {
  file_system_id : string prop;
  root_directory : string prop;
  authorization_config :
    volume__fsx_windows_file_server_volume_configuration__authorization_config
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : volume__fsx_windows_file_server_volume_configuration) -> ()

let yojson_of_volume__fsx_windows_file_server_volume_configuration =
  (function
   | {
       file_system_id = v_file_system_id;
       root_directory = v_root_directory;
       authorization_config = v_authorization_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_volume__fsx_windows_file_server_volume_configuration__authorization_config
             v_authorization_config
         in
         ("authorization_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_root_directory
         in
         ("root_directory", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : volume__fsx_windows_file_server_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_volume__fsx_windows_file_server_volume_configuration

[@@@deriving.end]

type volume = {
  host_path : string prop option; [@option]
  name : string prop;
  docker_volume_configuration :
    volume__docker_volume_configuration list;
  efs_volume_configuration : volume__efs_volume_configuration list;
  fsx_windows_file_server_volume_configuration :
    volume__fsx_windows_file_server_volume_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume) -> ()

let yojson_of_volume =
  (function
   | {
       host_path = v_host_path;
       name = v_name;
       docker_volume_configuration = v_docker_volume_configuration;
       efs_volume_configuration = v_efs_volume_configuration;
       fsx_windows_file_server_volume_configuration =
         v_fsx_windows_file_server_volume_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_volume__fsx_windows_file_server_volume_configuration
             v_fsx_windows_file_server_volume_configuration
         in
         ("fsx_windows_file_server_volume_configuration", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_volume__efs_volume_configuration
             v_efs_volume_configuration
         in
         ("efs_volume_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_volume__docker_volume_configuration
             v_docker_volume_configuration
         in
         ("docker_volume_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_host_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume

[@@@deriving.end]

type aws_ecs_task_definition = {
  container_definitions : string prop;
  cpu : string prop option; [@option]
  execution_role_arn : string prop option; [@option]
  family : string prop;
  id : string prop option; [@option]
  ipc_mode : string prop option; [@option]
  memory : string prop option; [@option]
  network_mode : string prop option; [@option]
  pid_mode : string prop option; [@option]
  requires_compatibilities : string prop list option; [@option]
  skip_destroy : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  task_role_arn : string prop option; [@option]
  track_latest : bool prop option; [@option]
  ephemeral_storage : ephemeral_storage list;
  inference_accelerator : inference_accelerator list;
  placement_constraints : placement_constraints list;
  proxy_configuration : proxy_configuration list;
  runtime_platform : runtime_platform list;
  volume : volume list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_task_definition) -> ()

let yojson_of_aws_ecs_task_definition =
  (function
   | {
       container_definitions = v_container_definitions;
       cpu = v_cpu;
       execution_role_arn = v_execution_role_arn;
       family = v_family;
       id = v_id;
       ipc_mode = v_ipc_mode;
       memory = v_memory;
       network_mode = v_network_mode;
       pid_mode = v_pid_mode;
       requires_compatibilities = v_requires_compatibilities;
       skip_destroy = v_skip_destroy;
       tags = v_tags;
       tags_all = v_tags_all;
       task_role_arn = v_task_role_arn;
       track_latest = v_track_latest;
       ephemeral_storage = v_ephemeral_storage;
       inference_accelerator = v_inference_accelerator;
       placement_constraints = v_placement_constraints;
       proxy_configuration = v_proxy_configuration;
       runtime_platform = v_runtime_platform;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_volume v_volume in
         ("volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_runtime_platform
             v_runtime_platform
         in
         ("runtime_platform", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_proxy_configuration
             v_proxy_configuration
         in
         ("proxy_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_placement_constraints
             v_placement_constraints
         in
         ("placement_constraints", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_inference_accelerator
             v_inference_accelerator
         in
         ("inference_accelerator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ephemeral_storage
             v_ephemeral_storage
         in
         ("ephemeral_storage", arg) :: bnds
       in
       let bnds =
         match v_track_latest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "track_latest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_task_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_requires_compatibilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "requires_compatibilities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pid_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pid_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipc_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipc_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       let bnds =
         match v_execution_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_definitions
         in
         ("container_definitions", arg) :: bnds
       in
       `Assoc bnds
    : aws_ecs_task_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_task_definition

[@@@deriving.end]

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

let make ?cpu ?execution_role_arn ?id ?ipc_mode ?memory ?network_mode
    ?pid_mode ?requires_compatibilities ?skip_destroy ?tags ?tags_all
    ?task_role_arn ?track_latest ~container_definitions ~family
    ~ephemeral_storage ~inference_accelerator ~placement_constraints
    ~proxy_configuration ~runtime_platform ~volume __id =
  let __type = "aws_ecs_task_definition" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       arn_without_revision =
         Prop.computed __type __id "arn_without_revision";
       container_definitions =
         Prop.computed __type __id "container_definitions";
       cpu = Prop.computed __type __id "cpu";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       ipc_mode = Prop.computed __type __id "ipc_mode";
       memory = Prop.computed __type __id "memory";
       network_mode = Prop.computed __type __id "network_mode";
       pid_mode = Prop.computed __type __id "pid_mode";
       requires_compatibilities =
         Prop.computed __type __id "requires_compatibilities";
       revision = Prop.computed __type __id "revision";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       task_role_arn = Prop.computed __type __id "task_role_arn";
       track_latest = Prop.computed __type __id "track_latest";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_task_definition
        (aws_ecs_task_definition ?cpu ?execution_role_arn ?id
           ?ipc_mode ?memory ?network_mode ?pid_mode
           ?requires_compatibilities ?skip_destroy ?tags ?tags_all
           ?task_role_arn ?track_latest ~container_definitions
           ~family ~ephemeral_storage ~inference_accelerator
           ~placement_constraints ~proxy_configuration
           ~runtime_platform ~volume ());
    attrs = __attrs;
  }

let register ?tf_module ?cpu ?execution_role_arn ?id ?ipc_mode
    ?memory ?network_mode ?pid_mode ?requires_compatibilities
    ?skip_destroy ?tags ?tags_all ?task_role_arn ?track_latest
    ~container_definitions ~family ~ephemeral_storage
    ~inference_accelerator ~placement_constraints
    ~proxy_configuration ~runtime_platform ~volume __id =
  let (r : _ Tf_core.resource) =
    make ?cpu ?execution_role_arn ?id ?ipc_mode ?memory ?network_mode
      ?pid_mode ?requires_compatibilities ?skip_destroy ?tags
      ?tags_all ?task_role_arn ?track_latest ~container_definitions
      ~family ~ephemeral_storage ~inference_accelerator
      ~placement_constraints ~proxy_configuration ~runtime_platform
      ~volume __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
