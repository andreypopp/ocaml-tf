(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type eks_properties__pod_properties__containers__resources = {
  limits : (string * string prop) list option; [@option]
  requests : (string * string prop) list option; [@option]
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
         match v_requests with
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
             let bnd = "requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
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
             let bnd = "limits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eks_properties__pod_properties__containers__resources

[@@@deriving.end]

type eks_properties__pod_properties__containers__security_context = {
  privileged : bool prop option; [@option]
  read_only_root_file_system : bool prop option; [@option]
  run_as_group : float prop option; [@option]
  run_as_non_root : bool prop option; [@option]
  run_as_user : float prop option; [@option]
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
         match v_run_as_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "run_as_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_non_root with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "run_as_non_root", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_as_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "run_as_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only_root_file_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only_root_file_system", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privileged with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers__security_context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_eks_properties__pod_properties__containers__security_context

[@@@deriving.end]

type eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
  read_only : bool prop option; [@option]
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
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

type eks_properties__pod_properties__containers = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  image : string prop;
  image_pull_policy : string prop option; [@option]
  name : string prop option; [@option]
  env : eks_properties__pod_properties__containers__env list;
  resources :
    eks_properties__pod_properties__containers__resources list;
  security_context :
    eks_properties__pod_properties__containers__security_context list;
  volume_mounts :
    eks_properties__pod_properties__containers__volume_mounts list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties__containers) -> ()

let yojson_of_eks_properties__pod_properties__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       image = v_image;
       image_pull_policy = v_image_pull_policy;
       name = v_name;
       env = v_env;
       resources = v_resources;
       security_context = v_security_context;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__containers__volume_mounts
             v_volume_mounts
         in
         ("volume_mounts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__containers__security_context
             v_security_context
         in
         ("security_context", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__containers__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__containers__env
             v_env
         in
         ("env", arg) :: bnds
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
         match v_image_pull_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_pull_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__containers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__containers

[@@@deriving.end]

type eks_properties__pod_properties__metadata = {
  labels : (string * string prop) list option; [@option]
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
       `Assoc bnds
    : eks_properties__pod_properties__metadata ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__metadata

[@@@deriving.end]

type eks_properties__pod_properties__volumes__empty_dir = {
  medium : string prop option; [@option]
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
         match v_medium with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "medium", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes__empty_dir ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes__empty_dir

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

type eks_properties__pod_properties__volumes__secret = {
  optional : bool prop option; [@option]
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
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes__secret

[@@@deriving.end]

type eks_properties__pod_properties__volumes = {
  name : string prop option; [@option]
  empty_dir :
    eks_properties__pod_properties__volumes__empty_dir list;
  host_path :
    eks_properties__pod_properties__volumes__host_path list;
  secret : eks_properties__pod_properties__volumes__secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties__volumes) -> ()

let yojson_of_eks_properties__pod_properties__volumes =
  (function
   | {
       name = v_name;
       empty_dir = v_empty_dir;
       host_path = v_host_path;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__volumes__secret
             v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__volumes__host_path
             v_host_path
         in
         ("host_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__volumes__empty_dir
             v_empty_dir
         in
         ("empty_dir", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties__volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties__volumes

[@@@deriving.end]

type eks_properties__pod_properties = {
  dns_policy : string prop option; [@option]
  host_network : bool prop option; [@option]
  service_account_name : string prop option; [@option]
  containers : eks_properties__pod_properties__containers list;
  metadata : eks_properties__pod_properties__metadata list;
  volumes : eks_properties__pod_properties__volumes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eks_properties__pod_properties) -> ()

let yojson_of_eks_properties__pod_properties =
  (function
   | {
       dns_policy = v_dns_policy;
       host_network = v_host_network;
       service_account_name = v_service_account_name;
       containers = v_containers;
       metadata = v_metadata;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__volumes
             v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__metadata
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_eks_properties__pod_properties__containers
             v_containers
         in
         ("containers", arg) :: bnds
       in
       let bnds =
         match v_service_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eks_properties__pod_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties__pod_properties

[@@@deriving.end]

type eks_properties = {
  pod_properties : eks_properties__pod_properties list;
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
         let arg =
           yojson_of_list yojson_of_eks_properties__pod_properties
             v_pod_properties
         in
         ("pod_properties", arg) :: bnds
       in
       `Assoc bnds
    : eks_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eks_properties

[@@@deriving.end]

type retry_strategy__evaluate_on_exit = {
  action : string prop;
  on_exit_code : string prop option; [@option]
  on_reason : string prop option; [@option]
  on_status_reason : string prop option; [@option]
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
         match v_on_status_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_status_reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_exit_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_exit_code", arg in
             bnd :: bnds
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
  attempts : float prop option; [@option]
  evaluate_on_exit : retry_strategy__evaluate_on_exit list;
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
         let arg =
           yojson_of_list yojson_of_retry_strategy__evaluate_on_exit
             v_evaluate_on_exit
         in
         ("evaluate_on_exit", arg) :: bnds
       in
       let bnds =
         match v_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "attempts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : retry_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry_strategy

[@@@deriving.end]

type timeout = {
  attempt_duration_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeout) -> ()

let yojson_of_timeout =
  (function
   | { attempt_duration_seconds = v_attempt_duration_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_attempt_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "attempt_duration_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeout

[@@@deriving.end]

type aws_batch_job_definition = {
  container_properties : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  node_properties : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  platform_capabilities : string prop list option; [@option]
  propagate_tags : bool prop option; [@option]
  scheduling_priority : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  eks_properties : eks_properties list;
  retry_strategy : retry_strategy list;
  timeout : timeout list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_job_definition) -> ()

let yojson_of_aws_batch_job_definition =
  (function
   | {
       container_properties = v_container_properties;
       id = v_id;
       name = v_name;
       node_properties = v_node_properties;
       parameters = v_parameters;
       platform_capabilities = v_platform_capabilities;
       propagate_tags = v_propagate_tags;
       scheduling_priority = v_scheduling_priority;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       eks_properties = v_eks_properties;
       retry_strategy = v_retry_strategy;
       timeout = v_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_timeout v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retry_strategy v_retry_strategy
         in
         ("retry_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_eks_properties v_eks_properties
         in
         ("eks_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_scheduling_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scheduling_priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "platform_capabilities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_container_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_batch_job_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_job_definition

[@@@deriving.end]

let eks_properties__pod_properties__containers__env ~name ~value () :
    eks_properties__pod_properties__containers__env =
  { name; value }

let eks_properties__pod_properties__containers__resources ?limits
    ?requests () :
    eks_properties__pod_properties__containers__resources =
  { limits; requests }

let eks_properties__pod_properties__containers__security_context
    ?privileged ?read_only_root_file_system ?run_as_group
    ?run_as_non_root ?run_as_user () :
    eks_properties__pod_properties__containers__security_context =
  {
    privileged;
    read_only_root_file_system;
    run_as_group;
    run_as_non_root;
    run_as_user;
  }

let eks_properties__pod_properties__containers__volume_mounts
    ?read_only ~mount_path ~name () :
    eks_properties__pod_properties__containers__volume_mounts =
  { mount_path; name; read_only }

let eks_properties__pod_properties__containers ?args ?command
    ?image_pull_policy ?name ~image ~env ~resources ~security_context
    ~volume_mounts () : eks_properties__pod_properties__containers =
  {
    args;
    command;
    image;
    image_pull_policy;
    name;
    env;
    resources;
    security_context;
    volume_mounts;
  }

let eks_properties__pod_properties__metadata ?labels () :
    eks_properties__pod_properties__metadata =
  { labels }

let eks_properties__pod_properties__volumes__empty_dir ?medium
    ~size_limit () :
    eks_properties__pod_properties__volumes__empty_dir =
  { medium; size_limit }

let eks_properties__pod_properties__volumes__host_path ~path () :
    eks_properties__pod_properties__volumes__host_path =
  { path }

let eks_properties__pod_properties__volumes__secret ?optional
    ~secret_name () : eks_properties__pod_properties__volumes__secret
    =
  { optional; secret_name }

let eks_properties__pod_properties__volumes ?name ~empty_dir
    ~host_path ~secret () : eks_properties__pod_properties__volumes =
  { name; empty_dir; host_path; secret }

let eks_properties__pod_properties ?dns_policy ?host_network
    ?service_account_name ~containers ~metadata ~volumes () :
    eks_properties__pod_properties =
  {
    dns_policy;
    host_network;
    service_account_name;
    containers;
    metadata;
    volumes;
  }

let eks_properties ~pod_properties () : eks_properties =
  { pod_properties }

let retry_strategy__evaluate_on_exit ?on_exit_code ?on_reason
    ?on_status_reason ~action () : retry_strategy__evaluate_on_exit =
  { action; on_exit_code; on_reason; on_status_reason }

let retry_strategy ?attempts ~evaluate_on_exit () : retry_strategy =
  { attempts; evaluate_on_exit }

let timeout ?attempt_duration_seconds () : timeout =
  { attempt_duration_seconds }

let aws_batch_job_definition ?container_properties ?id
    ?node_properties ?parameters ?platform_capabilities
    ?propagate_tags ?scheduling_priority ?tags ?tags_all ~name ~type_
    ~eks_properties ~retry_strategy ~timeout () :
    aws_batch_job_definition =
  {
    container_properties;
    id;
    name;
    node_properties;
    parameters;
    platform_capabilities;
    propagate_tags;
    scheduling_priority;
    tags;
    tags_all;
    type_;
    eks_properties;
    retry_strategy;
    timeout;
  }

type t = {
  arn : string prop;
  arn_prefix : string prop;
  container_properties : string prop;
  id : string prop;
  name : string prop;
  node_properties : string prop;
  parameters : (string * string) list prop;
  platform_capabilities : string list prop;
  propagate_tags : bool prop;
  revision : float prop;
  scheduling_priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?container_properties ?id ?node_properties ?parameters
    ?platform_capabilities ?propagate_tags ?scheduling_priority ?tags
    ?tags_all ~name ~type_ ~eks_properties ~retry_strategy ~timeout
    __id =
  let __type = "aws_batch_job_definition" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       arn_prefix = Prop.computed __type __id "arn_prefix";
       container_properties =
         Prop.computed __type __id "container_properties";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_properties = Prop.computed __type __id "node_properties";
       parameters = Prop.computed __type __id "parameters";
       platform_capabilities =
         Prop.computed __type __id "platform_capabilities";
       propagate_tags = Prop.computed __type __id "propagate_tags";
       revision = Prop.computed __type __id "revision";
       scheduling_priority =
         Prop.computed __type __id "scheduling_priority";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_job_definition
        (aws_batch_job_definition ?container_properties ?id
           ?node_properties ?parameters ?platform_capabilities
           ?propagate_tags ?scheduling_priority ?tags ?tags_all ~name
           ~type_ ~eks_properties ~retry_strategy ~timeout ());
    attrs = __attrs;
  }

let register ?tf_module ?container_properties ?id ?node_properties
    ?parameters ?platform_capabilities ?propagate_tags
    ?scheduling_priority ?tags ?tags_all ~name ~type_ ~eks_properties
    ~retry_strategy ~timeout __id =
  let (r : _ Tf_core.resource) =
    make ?container_properties ?id ?node_properties ?parameters
      ?platform_capabilities ?propagate_tags ?scheduling_priority
      ?tags ?tags_all ~name ~type_ ~eks_properties ~retry_strategy
      ~timeout __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
