(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type binary_authorization = {
  breakglass_justification : string prop option; [@option]
  use_default : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binary_authorization) -> ()

let yojson_of_binary_authorization =
  (function
   | {
       breakglass_justification = v_breakglass_justification;
       use_default = v_use_default;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_breakglass_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "breakglass_justification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

[@@@deriving.end]

type template__template__containers__env__value_source__secret_key_ref = {
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__template__containers__env__value_source__secret_key_ref) ->
  ()

let yojson_of_template__template__containers__env__value_source__secret_key_ref
    =
  (function
   | { secret = v_secret; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       `Assoc bnds
    : template__template__containers__env__value_source__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__template__containers__env__value_source__secret_key_ref

[@@@deriving.end]

type template__template__containers__env__value_source = {
  secret_key_ref :
    template__template__containers__env__value_source__secret_key_ref
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__template__containers__env__value_source) -> ()

let yojson_of_template__template__containers__env__value_source =
  (function
   | { secret_key_ref = v_secret_key_ref } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__env__value_source__secret_key_ref
             v_secret_key_ref
         in
         ("secret_key_ref", arg) :: bnds
       in
       `Assoc bnds
    : template__template__containers__env__value_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__env__value_source

[@@@deriving.end]

type template__template__containers__env = {
  name : string prop;
  value : string prop option; [@option]
  value_source :
    template__template__containers__env__value_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers__env) -> ()

let yojson_of_template__template__containers__env =
  (function
   | {
       name = v_name;
       value = v_value;
       value_source = v_value_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__env__value_source
             v_value_source
         in
         ("value_source", arg) :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__template__containers__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__env

[@@@deriving.end]

type template__template__containers__ports = {
  container_port : float prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers__ports) -> ()

let yojson_of_template__template__containers__ports =
  (function
   | { container_port = v_container_port; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_container_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__ports

[@@@deriving.end]

type template__template__containers__resources = {
  limits : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers__resources) -> ()

let yojson_of_template__template__containers__resources =
  (function
   | { limits = v_limits } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : template__template__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__resources

[@@@deriving.end]

type template__template__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers__volume_mounts) -> ()

let yojson_of_template__template__containers__volume_mounts =
  (function
   | { mount_path = v_mount_path; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : template__template__containers__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__volume_mounts

[@@@deriving.end]

type template__template__containers = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  image : string prop;
  name : string prop option; [@option]
  working_dir : string prop option; [@option]
  env : template__template__containers__env list;
  ports : template__template__containers__ports list;
  resources : template__template__containers__resources list;
  volume_mounts : template__template__containers__volume_mounts list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers) -> ()

let yojson_of_template__template__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       image = v_image;
       name = v_name;
       working_dir = v_working_dir;
       env = v_env;
       ports = v_ports;
       resources = v_resources;
       volume_mounts = v_volume_mounts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__volume_mounts
             v_volume_mounts
         in
         ("volume_mounts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__ports v_ports
         in
         ("ports", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__containers__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         match v_working_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_dir", arg in
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
    : template__template__containers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers

[@@@deriving.end]

type template__template__volumes__cloud_sql_instance = {
  instances : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__template__volumes__cloud_sql_instance) -> ()

let yojson_of_template__template__volumes__cloud_sql_instance =
  (function
   | { instances = v_instances } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instances", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__volumes__cloud_sql_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__cloud_sql_instance

[@@@deriving.end]

type template__template__volumes__secret__items = {
  mode : float prop option; [@option]
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__volumes__secret__items) -> ()

let yojson_of_template__template__volumes__secret__items =
  (function
   | { mode = v_mode; path = v_path; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__secret__items

[@@@deriving.end]

type template__template__volumes__secret = {
  default_mode : float prop option; [@option]
  secret : string prop;
  items : template__template__volumes__secret__items list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__volumes__secret) -> ()

let yojson_of_template__template__volumes__secret =
  (function
   | {
       default_mode = v_default_mode;
       secret = v_secret;
       items = v_items;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__volumes__secret__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         match v_default_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__secret

[@@@deriving.end]

type template__template__volumes = {
  name : string prop;
  cloud_sql_instance :
    template__template__volumes__cloud_sql_instance list;
  secret : template__template__volumes__secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__volumes) -> ()

let yojson_of_template__template__volumes =
  (function
   | {
       name = v_name;
       cloud_sql_instance = v_cloud_sql_instance;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__volumes__secret v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__volumes__cloud_sql_instance
             v_cloud_sql_instance
         in
         ("cloud_sql_instance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__template__volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes

[@@@deriving.end]

type template__template__vpc_access__network_interfaces = {
  network : string prop option; [@option]
  subnetwork : string prop option; [@option]
  tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__template__vpc_access__network_interfaces) -> ()

let yojson_of_template__template__vpc_access__network_interfaces =
  (function
   | {
       network = v_network;
       subnetwork = v_subnetwork;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__vpc_access__network_interfaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__vpc_access__network_interfaces

[@@@deriving.end]

type template__template__vpc_access = {
  connector : string prop option; [@option]
  egress : string prop option; [@option]
  network_interfaces :
    template__template__vpc_access__network_interfaces list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__vpc_access) -> ()

let yojson_of_template__template__vpc_access =
  (function
   | {
       connector = v_connector;
       egress = v_egress;
       network_interfaces = v_network_interfaces;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__template__vpc_access__network_interfaces
             v_network_interfaces
         in
         ("network_interfaces", arg) :: bnds
       in
       let bnds =
         match v_egress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "egress", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connector", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template__vpc_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__vpc_access

[@@@deriving.end]

type template__template = {
  encryption_key : string prop option; [@option]
  execution_environment : string prop option; [@option]
  max_retries : float prop option; [@option]
  service_account : string prop option; [@option]
  timeout : string prop option; [@option]
  containers : template__template__containers list;
  volumes : template__template__volumes list;
  vpc_access : template__template__vpc_access list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template) -> ()

let yojson_of_template__template =
  (function
   | {
       encryption_key = v_encryption_key;
       execution_environment = v_execution_environment;
       max_retries = v_max_retries;
       service_account = v_service_account;
       timeout = v_timeout;
       containers = v_containers;
       volumes = v_volumes;
       vpc_access = v_vpc_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__template__vpc_access
             v_vpc_access
         in
         ("vpc_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__template__volumes
             v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__template__containers
             v_containers
         in
         ("containers", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template

[@@@deriving.end]

type template = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  parallelism : float prop option; [@option]
  task_count : float prop option; [@option]
  template : template__template list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       parallelism = v_parallelism;
       task_count = v_task_count;
       template = v_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__template v_template
         in
         ("template", arg) :: bnds
       in
       let bnds =
         match v_task_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parallelism with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelism", arg in
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
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type conditions = {
  execution_reason : string prop;
  last_transition_time : string prop;
  message : string prop;
  reason : string prop;
  revision_reason : string prop;
  severity : string prop;
  state : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions) -> ()

let yojson_of_conditions =
  (function
   | {
       execution_reason = v_execution_reason;
       last_transition_time = v_last_transition_time;
       message = v_message;
       reason = v_reason;
       revision_reason = v_revision_reason;
       severity = v_severity;
       state = v_state;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revision_reason
         in
         ("revision_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transition_time
         in
         ("last_transition_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_reason
         in
         ("execution_reason", arg) :: bnds
       in
       `Assoc bnds
    : conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions

[@@@deriving.end]

type latest_created_execution = {
  completion_time : string prop;
  create_time : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : latest_created_execution) -> ()

let yojson_of_latest_created_execution =
  (function
   | {
       completion_time = v_completion_time;
       create_time = v_create_time;
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
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_completion_time
         in
         ("completion_time", arg) :: bnds
       in
       `Assoc bnds
    : latest_created_execution -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_latest_created_execution

[@@@deriving.end]

type terminal_condition = {
  execution_reason : string prop;
  last_transition_time : string prop;
  message : string prop;
  reason : string prop;
  revision_reason : string prop;
  severity : string prop;
  state : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : terminal_condition) -> ()

let yojson_of_terminal_condition =
  (function
   | {
       execution_reason = v_execution_reason;
       last_transition_time = v_last_transition_time;
       message = v_message;
       reason = v_reason;
       revision_reason = v_revision_reason;
       severity = v_severity;
       state = v_state;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_revision_reason
         in
         ("revision_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transition_time
         in
         ("last_transition_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_reason
         in
         ("execution_reason", arg) :: bnds
       in
       `Assoc bnds
    : terminal_condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_terminal_condition

[@@@deriving.end]

type google_cloud_run_v2_job = {
  annotations : (string * string prop) list option; [@option]
  client : string prop option; [@option]
  client_version : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  launch_stage : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  binary_authorization : binary_authorization list;
  template : template list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_v2_job) -> ()

let yojson_of_google_cloud_run_v2_job =
  (function
   | {
       annotations = v_annotations;
       client = v_client;
       client_version = v_client_version;
       id = v_id;
       labels = v_labels;
       launch_stage = v_launch_stage;
       location = v_location;
       name = v_name;
       project = v_project;
       binary_authorization = v_binary_authorization;
       template = v_template;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_template v_template in
         ("template", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_binary_authorization
             v_binary_authorization
         in
         ("binary_authorization", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_launch_stage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_stage", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_run_v2_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_v2_job

[@@@deriving.end]

let binary_authorization ?breakglass_justification ?use_default () :
    binary_authorization =
  { breakglass_justification; use_default }

let template__template__containers__env__value_source__secret_key_ref
    ~secret ~version () :
    template__template__containers__env__value_source__secret_key_ref
    =
  { secret; version }

let template__template__containers__env__value_source
    ?(secret_key_ref = []) () :
    template__template__containers__env__value_source =
  { secret_key_ref }

let template__template__containers__env ?value ?(value_source = [])
    ~name () : template__template__containers__env =
  { name; value; value_source }

let template__template__containers__ports ?container_port ?name () :
    template__template__containers__ports =
  { container_port; name }

let template__template__containers__resources ?limits () :
    template__template__containers__resources =
  { limits }

let template__template__containers__volume_mounts ~mount_path ~name
    () : template__template__containers__volume_mounts =
  { mount_path; name }

let template__template__containers ?args ?command ?name ?working_dir
    ?(env = []) ?(ports = []) ?(resources = []) ?(volume_mounts = [])
    ~image () : template__template__containers =
  {
    args;
    command;
    image;
    name;
    working_dir;
    env;
    ports;
    resources;
    volume_mounts;
  }

let template__template__volumes__cloud_sql_instance ?instances () :
    template__template__volumes__cloud_sql_instance =
  { instances }

let template__template__volumes__secret__items ?mode ~path ~version
    () : template__template__volumes__secret__items =
  { mode; path; version }

let template__template__volumes__secret ?default_mode ?(items = [])
    ~secret () : template__template__volumes__secret =
  { default_mode; secret; items }

let template__template__volumes ?(cloud_sql_instance = [])
    ?(secret = []) ~name () : template__template__volumes =
  { name; cloud_sql_instance; secret }

let template__template__vpc_access__network_interfaces ?network
    ?subnetwork ?tags () :
    template__template__vpc_access__network_interfaces =
  { network; subnetwork; tags }

let template__template__vpc_access ?connector ?egress
    ?(network_interfaces = []) () : template__template__vpc_access =
  { connector; egress; network_interfaces }

let template__template ?encryption_key ?execution_environment
    ?max_retries ?service_account ?timeout ?(containers = [])
    ?(volumes = []) ?(vpc_access = []) () : template__template =
  {
    encryption_key;
    execution_environment;
    max_retries;
    service_account;
    timeout;
    containers;
    volumes;
    vpc_access;
  }

let template ?annotations ?labels ?parallelism ?task_count ~template
    () : template =
  { annotations; labels; parallelism; task_count; template }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_run_v2_job ?annotations ?client ?client_version ?id
    ?labels ?launch_stage ?project ?(binary_authorization = [])
    ?timeouts ~location ~name ~template () : google_cloud_run_v2_job
    =
  {
    annotations;
    client;
    client_version;
    id;
    labels;
    launch_stage;
    location;
    name;
    project;
    binary_authorization;
    template;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  delete_time : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  execution_count : float prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  labels : (string * string) list prop;
  last_modifier : string prop;
  latest_created_execution : latest_created_execution list prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?client ?client_version ?id ?labels
    ?launch_stage ?project ?(binary_authorization = []) ?timeouts
    ~location ~name ~template __id =
  let __type = "google_cloud_run_v2_job" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       client = Prop.computed __type __id "client";
       client_version = Prop.computed __type __id "client_version";
       conditions = Prop.computed __type __id "conditions";
       create_time = Prop.computed __type __id "create_time";
       creator = Prop.computed __type __id "creator";
       delete_time = Prop.computed __type __id "delete_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       execution_count = Prop.computed __type __id "execution_count";
       expire_time = Prop.computed __type __id "expire_time";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       last_modifier = Prop.computed __type __id "last_modifier";
       latest_created_execution =
         Prop.computed __type __id "latest_created_execution";
       launch_stage = Prop.computed __type __id "launch_stage";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       observed_generation =
         Prop.computed __type __id "observed_generation";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       terminal_condition =
         Prop.computed __type __id "terminal_condition";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_v2_job
        (google_cloud_run_v2_job ?annotations ?client ?client_version
           ?id ?labels ?launch_stage ?project ~binary_authorization
           ?timeouts ~location ~name ~template ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?client ?client_version ?id
    ?labels ?launch_stage ?project ?(binary_authorization = [])
    ?timeouts ~location ~name ~template __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?client ?client_version ?id ?labels
      ?launch_stage ?project ~binary_authorization ?timeouts
      ~location ~name ~template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
