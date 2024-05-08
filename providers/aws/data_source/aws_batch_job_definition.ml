(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type eks_properties__pod_properties__volumes__secret = {
  optional : bool prop;
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__volumes__secret) -> ()

let yojson_of_eks_properties__pod_properties__volumes__secret =
  (function
   | { optional = v_optional; secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes__secret

[@@@deriving.end]

type eks_properties__pod_properties__volumes__host_path = {
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__volumes__host_path) -> ()

let yojson_of_eks_properties__pod_properties__volumes__host_path =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes__host_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes__host_path

[@@@deriving.end]

type eks_properties__pod_properties__volumes__empty_dir = {
  medium : string prop;
  size_limit : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__volumes__empty_dir) -> ()

let yojson_of_eks_properties__pod_properties__volumes__empty_dir =
  (function
   | { medium = v_medium; size_limit = v_size_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_size_limit in
         ("size_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_medium in
         ("medium", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes__empty_dir ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes__empty_dir

[@@@deriving.end]

type eks_properties__pod_properties__volumes = {
  empty_dir :
    eks_properties__pod_properties__volumes__empty_dir list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host_path :
    eks_properties__pod_properties__volumes__host_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  secret : eks_properties__pod_properties__volumes__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties__volumes) -> ()

let yojson_of_eks_properties__pod_properties__volumes =
  (function
   | {
       empty_dir = v_empty_dir;
       host_path = v_host_path;
       name = v_name;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__volumes__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__volumes__host_path)
               v_host_path
           in
           let bnd = "host_path", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_empty_dir then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__volumes__empty_dir)
               v_empty_dir
           in
           let bnd = "empty_dir", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes

[@@@deriving.end]

type eks_properties__pod_properties__metadata = {
  labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties__metadata) -> ()

let yojson_of_eks_properties__pod_properties__metadata =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__metadata ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__metadata

[@@@deriving.end]

type eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__containers__volume_mounts) ->
  ()

let yojson_of_eks_properties__pod_properties__containers__volume_mounts
    =
  (function
   | {
       mount_path = v_mount_path;
       name = v_name;
       read_only = v_read_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eks_properties__pod_properties__containers__volume_mounts

[@@@deriving.end]

type eks_properties__pod_properties__containers__security_context = {
  privileged : bool prop;
  read_only_root_file_system : bool prop;
  run_as_group : float prop;
  run_as_non_root : bool prop;
  run_as_user : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       eks_properties__pod_properties__containers__security_context) ->
  ()

let yojson_of_eks_properties__pod_properties__containers__security_context
    =
  (function
   | {
       privileged = v_privileged;
       read_only_root_file_system = v_read_only_root_file_system;
       run_as_group = v_run_as_group;
       run_as_non_root = v_run_as_non_root;
       run_as_user = v_run_as_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_run_as_user in
         ("run_as_user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_run_as_non_root in
         ("run_as_non_root", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_run_as_group in
         ("run_as_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_read_only_root_file_system
         in
         ("read_only_root_file_system", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_privileged in
         ("privileged", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eks_properties__pod_properties__containers__security_context

[@@@deriving.end]

type eks_properties__pod_properties__containers__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__containers__resources) ->
  ()

let yojson_of_eks_properties__pod_properties__containers__resources =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_requests
         in
         ("requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eks_properties__pod_properties__containers__resources

[@@@deriving.end]

type eks_properties__pod_properties__containers__env = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : eks_properties__pod_properties__containers__env) -> ()

let yojson_of_eks_properties__pod_properties__containers__env =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__containers__env

[@@@deriving.end]

type eks_properties__pod_properties__containers = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env : eks_properties__pod_properties__containers__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : string prop;
  image_pull_policy : string prop;
  name : string prop;
  resources :
    eks_properties__pod_properties__containers__resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_context :
    eks_properties__pod_properties__containers__security_context list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_mounts :
    eks_properties__pod_properties__containers__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties__containers) -> ()

let yojson_of_eks_properties__pod_properties__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       name = v_name;
       resources = v_resources;
       security_context = v_security_context;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume_mounts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__containers__volume_mounts)
               v_volume_mounts
           in
           let bnd = "volume_mounts", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__containers__security_context)
               v_security_context
           in
           let bnd = "security_context", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__containers__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_pull_policy
         in
         ("image_pull_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__containers__env)
               v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__containers

[@@@deriving.end]

type eks_properties__pod_properties = {
  containers : eks_properties__pod_properties__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_policy : string prop;
  host_network : bool prop;
  metadata : eks_properties__pod_properties__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account_name : bool prop;
  volumes : eks_properties__pod_properties__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties) -> ()

let yojson_of_eks_properties__pod_properties =
  (function
   | {
       containers = v_containers;
       dns_policy = v_dns_policy;
       host_network = v_host_network;
       metadata = v_metadata;
       service_account_name = v_service_account_name;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volumes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__volumes)
               v_volumes
           in
           let bnd = "volumes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_service_account_name
         in
         ("service_account_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__metadata)
               v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_host_network in
         ("host_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_policy in
         ("dns_policy", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_containers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_eks_properties__pod_properties__containers)
               v_containers
           in
           let bnd = "containers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties

[@@@deriving.end]

type eks_properties = {
  pod_properties : eks_properties__pod_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties) -> ()

let yojson_of_eks_properties =
  (function
   | { pod_properties = v_pod_properties } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_properties then bnds
         else
           let arg =
             (yojson_of_list yojson_of_eks_properties__pod_properties)
               v_pod_properties
           in
           let bnd = "pod_properties", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : eks_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties

[@@@deriving.end]

type node_properties__node_range_properties__container__volumes__host = {
  source_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__volumes__host) ->
  ()

let yojson_of_node_properties__node_range_properties__container__volumes__host
    =
  (function
   | { source_path = v_source_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_path in
         ("source_path", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__volumes__host ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__volumes__host

[@@@deriving.end]

type node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config = {
  access_point_id : string prop;
  iam : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config) ->
  ()

let yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config
    =
  (function
   | { access_point_id = v_access_point_id; iam = v_iam } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam in
         ("iam", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_access_point_id
         in
         ("access_point_id", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config

[@@@deriving.end]

type node_properties__node_range_properties__container__volumes__efs_volume_configuration = {
  authorization_config :
    node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_system_id : string prop;
  root_directory : string prop;
  transit_encryption : string prop;
  transit_encryption_port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__volumes__efs_volume_configuration) ->
  ()

let yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration
    =
  (function
   | {
       authorization_config = v_authorization_config;
       file_system_id = v_file_system_id;
       root_directory = v_root_directory;
       transit_encryption = v_transit_encryption;
       transit_encryption_port = v_transit_encryption_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_transit_encryption_port
         in
         ("transit_encryption_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_encryption
         in
         ("transit_encryption", arg) :: bnds
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
       let bnds =
         if Stdlib.( = ) [] v_authorization_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration__authorization_config)
               v_authorization_config
           in
           let bnd = "authorization_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__volumes__efs_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration

[@@@deriving.end]

type node_properties__node_range_properties__container__volumes = {
  efs_volume_configuration :
    node_properties__node_range_properties__container__volumes__efs_volume_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  host :
    node_properties__node_range_properties__container__volumes__host
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_properties__node_range_properties__container__volumes) ->
  ()

let yojson_of_node_properties__node_range_properties__container__volumes
    =
  (function
   | {
       efs_volume_configuration = v_efs_volume_configuration;
       host = v_host;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__volumes__host)
               v_host
           in
           let bnd = "host", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_efs_volume_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__volumes__efs_volume_configuration)
               v_efs_volume_configuration
           in
           let bnd = "efs_volume_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__volumes

[@@@deriving.end]

type node_properties__node_range_properties__container__ulimits = {
  hard_limit : float prop;
  name : string prop;
  soft_limit : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_properties__node_range_properties__container__ulimits) ->
  ()

let yojson_of_node_properties__node_range_properties__container__ulimits
    =
  (function
   | {
       hard_limit = v_hard_limit;
       name = v_name;
       soft_limit = v_soft_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_soft_limit in
         ("soft_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hard_limit in
         ("hard_limit", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__ulimits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__ulimits

[@@@deriving.end]

type node_properties__node_range_properties__container__secrets = {
  name : string prop;
  value_from : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_properties__node_range_properties__container__secrets) ->
  ()

let yojson_of_node_properties__node_range_properties__container__secrets
    =
  (function
   | { name = v_name; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_from in
         ("value_from", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__secrets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__secrets

[@@@deriving.end]

type node_properties__node_range_properties__container__runtime_platform = {
  cpu_architecture : string prop;
  operating_system_family : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__runtime_platform) ->
  ()

let yojson_of_node_properties__node_range_properties__container__runtime_platform
    =
  (function
   | {
       cpu_architecture = v_cpu_architecture;
       operating_system_family = v_operating_system_family;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_operating_system_family
         in
         ("operating_system_family", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cpu_architecture
         in
         ("cpu_architecture", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__runtime_platform ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__runtime_platform

[@@@deriving.end]

type node_properties__node_range_properties__container__resource_requirements = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__resource_requirements) ->
  ()

let yojson_of_node_properties__node_range_properties__container__resource_requirements
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__resource_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__resource_requirements

[@@@deriving.end]

type node_properties__node_range_properties__container__network_configuration = {
  assign_public_ip : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__network_configuration) ->
  ()

let yojson_of_node_properties__node_range_properties__container__network_configuration
    =
  (function
   | { assign_public_ip = v_assign_public_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_assign_public_ip
         in
         ("assign_public_ip", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__network_configuration

[@@@deriving.end]

type node_properties__node_range_properties__container__mount_points = {
  container_path : string prop;
  read_only : bool prop;
  source_volume : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__mount_points) ->
  ()

let yojson_of_node_properties__node_range_properties__container__mount_points
    =
  (function
   | {
       container_path = v_container_path;
       read_only = v_read_only;
       source_volume = v_source_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_volume in
         ("source_volume", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_path
         in
         ("container_path", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__mount_points ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__mount_points

[@@@deriving.end]

type node_properties__node_range_properties__container__log_configuration__secret_options = {
  name : string prop;
  value_from : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__log_configuration__secret_options) ->
  ()

let yojson_of_node_properties__node_range_properties__container__log_configuration__secret_options
    =
  (function
   | { name = v_name; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_from in
         ("value_from", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__log_configuration__secret_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__log_configuration__secret_options

[@@@deriving.end]

type node_properties__node_range_properties__container__log_configuration = {
  log_driver : string prop;
  options : (string * string prop) list;
  secret_options :
    node_properties__node_range_properties__container__log_configuration__secret_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__log_configuration) ->
  ()

let yojson_of_node_properties__node_range_properties__container__log_configuration
    =
  (function
   | {
       log_driver = v_log_driver;
       options = v_options;
       secret_options = v_secret_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__log_configuration__secret_options)
               v_secret_options
           in
           let bnd = "secret_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_options
         in
         ("options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_driver in
         ("log_driver", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__log_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__log_configuration

[@@@deriving.end]

type node_properties__node_range_properties__container__linux_parameters__tmpfs = {
  container_path : string prop;
  mount_options : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__linux_parameters__tmpfs) ->
  ()

let yojson_of_node_properties__node_range_properties__container__linux_parameters__tmpfs
    =
  (function
   | {
       container_path = v_container_path;
       mount_options = v_mount_options;
       size = v_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mount_options then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_mount_options
           in
           let bnd = "mount_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_path
         in
         ("container_path", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__linux_parameters__tmpfs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__linux_parameters__tmpfs

[@@@deriving.end]

type node_properties__node_range_properties__container__linux_parameters__devices = {
  container_path : string prop;
  host_path : string prop;
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__linux_parameters__devices) ->
  ()

let yojson_of_node_properties__node_range_properties__container__linux_parameters__devices
    =
  (function
   | {
       container_path = v_container_path;
       host_path = v_host_path;
       permissions = v_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_path in
         ("host_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_path
         in
         ("container_path", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__linux_parameters__devices ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__linux_parameters__devices

[@@@deriving.end]

type node_properties__node_range_properties__container__linux_parameters = {
  devices :
    node_properties__node_range_properties__container__linux_parameters__devices
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  init_process_enabled : bool prop;
  max_swap : float prop;
  shared_memory_size : float prop;
  swappiness : float prop;
  tmpfs :
    node_properties__node_range_properties__container__linux_parameters__tmpfs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__linux_parameters) ->
  ()

let yojson_of_node_properties__node_range_properties__container__linux_parameters
    =
  (function
   | {
       devices = v_devices;
       init_process_enabled = v_init_process_enabled;
       max_swap = v_max_swap;
       shared_memory_size = v_shared_memory_size;
       swappiness = v_swappiness;
       tmpfs = v_tmpfs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tmpfs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__linux_parameters__tmpfs)
               v_tmpfs
           in
           let bnd = "tmpfs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_swappiness in
         ("swappiness", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_shared_memory_size
         in
         ("shared_memory_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_swap in
         ("max_swap", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_init_process_enabled
         in
         ("init_process_enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_devices then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__linux_parameters__devices)
               v_devices
           in
           let bnd = "devices", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__linux_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__linux_parameters

[@@@deriving.end]

type node_properties__node_range_properties__container__fargate_platform_configuration = {
  platform_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__fargate_platform_configuration) ->
  ()

let yojson_of_node_properties__node_range_properties__container__fargate_platform_configuration
    =
  (function
   | { platform_version = v_platform_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_platform_version
         in
         ("platform_version", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__fargate_platform_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__fargate_platform_configuration

[@@@deriving.end]

type node_properties__node_range_properties__container__ephemeral_storage = {
  size_in_gib : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__ephemeral_storage) ->
  ()

let yojson_of_node_properties__node_range_properties__container__ephemeral_storage
    =
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
    : node_properties__node_range_properties__container__ephemeral_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__ephemeral_storage

[@@@deriving.end]

type node_properties__node_range_properties__container__environment = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       node_properties__node_range_properties__container__environment) ->
  ()

let yojson_of_node_properties__node_range_properties__container__environment
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_node_properties__node_range_properties__container__environment

[@@@deriving.end]

type node_properties__node_range_properties__container = {
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment :
    node_properties__node_range_properties__container__environment
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_storage :
    node_properties__node_range_properties__container__ephemeral_storage
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  execution_role_arn : string prop;
  fargate_platform_configuration :
    node_properties__node_range_properties__container__fargate_platform_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : string prop;
  instance_type : string prop;
  job_role_arn : string prop;
  linux_parameters :
    node_properties__node_range_properties__container__linux_parameters
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_configuration :
    node_properties__node_range_properties__container__log_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mount_points :
    node_properties__node_range_properties__container__mount_points
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_configuration :
    node_properties__node_range_properties__container__network_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  privileged : bool prop;
  readonly_root_filesystem : bool prop;
  resource_requirements :
    node_properties__node_range_properties__container__resource_requirements
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  runtime_platform :
    node_properties__node_range_properties__container__runtime_platform
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secrets :
    node_properties__node_range_properties__container__secrets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ulimits :
    node_properties__node_range_properties__container__ulimits list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user : string prop;
  volumes :
    node_properties__node_range_properties__container__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : node_properties__node_range_properties__container) -> ()

let yojson_of_node_properties__node_range_properties__container =
  (function
   | {
       command = v_command;
       environment = v_environment;
       ephemeral_storage = v_ephemeral_storage;
       execution_role_arn = v_execution_role_arn;
       fargate_platform_configuration =
         v_fargate_platform_configuration;
       image = v_image;
       instance_type = v_instance_type;
       job_role_arn = v_job_role_arn;
       linux_parameters = v_linux_parameters;
       log_configuration = v_log_configuration;
       mount_points = v_mount_points;
       network_configuration = v_network_configuration;
       privileged = v_privileged;
       readonly_root_filesystem = v_readonly_root_filesystem;
       resource_requirements = v_resource_requirements;
       runtime_platform = v_runtime_platform;
       secrets = v_secrets;
       ulimits = v_ulimits;
       user = v_user;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volumes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__volumes)
               v_volumes
           in
           let bnd = "volumes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ulimits then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__ulimits)
               v_ulimits
           in
           let bnd = "ulimits", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secrets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__secrets)
               v_secrets
           in
           let bnd = "secrets", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_runtime_platform then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__runtime_platform)
               v_runtime_platform
           in
           let bnd = "runtime_platform", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_requirements then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__resource_requirements)
               v_resource_requirements
           in
           let bnd = "resource_requirements", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_readonly_root_filesystem
         in
         ("readonly_root_filesystem", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_privileged in
         ("privileged", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mount_points then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__mount_points)
               v_mount_points
           in
           let bnd = "mount_points", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__log_configuration)
               v_log_configuration
           in
           let bnd = "log_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__linux_parameters)
               v_linux_parameters
           in
           let bnd = "linux_parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_role_arn in
         ("job_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fargate_platform_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__fargate_platform_configuration)
               v_fargate_platform_configuration
           in
           let bnd = "fargate_platform_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role_arn
         in
         ("execution_role_arn", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__ephemeral_storage)
               v_ephemeral_storage
           in
           let bnd = "ephemeral_storage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_environment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container__environment)
               v_environment
           in
           let bnd = "environment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_command then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_command
           in
           let bnd = "command", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties__container ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_properties__node_range_properties__container

[@@@deriving.end]

type node_properties__node_range_properties = {
  container : node_properties__node_range_properties__container list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_nodes : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_properties__node_range_properties) -> ()

let yojson_of_node_properties__node_range_properties =
  (function
   | { container = v_container; target_nodes = v_target_nodes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_nodes in
         ("target_nodes", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties__container)
               v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : node_properties__node_range_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_properties__node_range_properties

[@@@deriving.end]

type node_properties = {
  main_node : float prop;
  node_range_properties :
    node_properties__node_range_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  num_nodes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_properties) -> ()

let yojson_of_node_properties =
  (function
   | {
       main_node = v_main_node;
       node_range_properties = v_node_range_properties;
       num_nodes = v_num_nodes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_num_nodes in
         ("num_nodes", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_range_properties then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_node_properties__node_range_properties)
               v_node_range_properties
           in
           let bnd = "node_range_properties", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_main_node in
         ("main_node", arg) :: bnds
       in
       `Assoc bnds
    : node_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_properties

[@@@deriving.end]

type retry_strategy__evaluate_on_exit = {
  action : string prop;
  on_exit_code : string prop;
  on_reason : string prop;
  on_status_reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_strategy__evaluate_on_exit) -> ()

let yojson_of_retry_strategy__evaluate_on_exit =
  (function
   | {
       action = v_action;
       on_exit_code = v_on_exit_code;
       on_reason = v_on_reason;
       on_status_reason = v_on_status_reason;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_on_status_reason
         in
         ("on_status_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_on_reason in
         ("on_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_on_exit_code in
         ("on_exit_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : retry_strategy__evaluate_on_exit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_strategy__evaluate_on_exit

[@@@deriving.end]

type retry_strategy = {
  attempts : float prop;
  evaluate_on_exit : retry_strategy__evaluate_on_exit list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry_strategy) -> ()

let yojson_of_retry_strategy =
  (function
   | { attempts = v_attempts; evaluate_on_exit = v_evaluate_on_exit }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_evaluate_on_exit then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_retry_strategy__evaluate_on_exit)
               v_evaluate_on_exit
           in
           let bnd = "evaluate_on_exit", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_attempts in
         ("attempts", arg) :: bnds
       in
       `Assoc bnds
    : retry_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_strategy

[@@@deriving.end]

type timeout = { attempt_duration_seconds : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeout) -> ()

let yojson_of_timeout =
  (function
   | { attempt_duration_seconds = v_attempt_duration_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_attempt_duration_seconds
         in
         ("attempt_duration_seconds", arg) :: bnds
       in
       `Assoc bnds
    : timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeout

[@@@deriving.end]

type aws_batch_job_definition = {
  arn : string prop option; [@option]
  name : string prop option; [@option]
  revision : float prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_job_definition) -> ()

let yojson_of_aws_batch_job_definition =
  (function
   | {
       arn = v_arn;
       name = v_name;
       revision = v_revision;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_batch_job_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_job_definition

[@@@deriving.end]

let aws_batch_job_definition ?arn ?name ?revision ?status () :
    aws_batch_job_definition =
  { arn; name; revision; status }

type t = {
  tf_name : string;
  arn : string prop;
  arn_prefix : string prop;
  container_orchestration_type : string prop;
  eks_properties : eks_properties list prop;
  id : string prop;
  name : string prop;
  node_properties : node_properties list prop;
  retry_strategy : retry_strategy list prop;
  revision : float prop;
  scheduling_priority : float prop;
  status : string prop;
  tags : (string * string) list prop;
  timeout : timeout list prop;
  type_ : string prop;
}

let make ?arn ?name ?revision ?status __id =
  let __type = "aws_batch_job_definition" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       arn_prefix = Prop.computed __type __id "arn_prefix";
       container_orchestration_type =
         Prop.computed __type __id "container_orchestration_type";
       eks_properties = Prop.computed __type __id "eks_properties";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_properties = Prop.computed __type __id "node_properties";
       retry_strategy = Prop.computed __type __id "retry_strategy";
       revision = Prop.computed __type __id "revision";
       scheduling_priority =
         Prop.computed __type __id "scheduling_priority";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_job_definition
        (aws_batch_job_definition ?arn ?name ?revision ?status ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?name ?revision ?status __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?name ?revision ?status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
