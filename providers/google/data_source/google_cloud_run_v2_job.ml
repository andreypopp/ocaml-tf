(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type binary_authorization = {
  breakglass_justification : string prop;
  use_default : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_use_default in
         ("use_default", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_breakglass_justification
         in
         ("breakglass_justification", arg) :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

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

type template__template__vpc_access__network_interfaces = {
  network : string prop;
  subnetwork : string prop;
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : template__template__vpc_access__network_interfaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__vpc_access__network_interfaces

[@@@deriving.end]

type template__template__vpc_access = {
  connector : string prop;
  egress : string prop;
  network_interfaces :
    template__template__vpc_access__network_interfaces list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_network_interfaces then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__vpc_access__network_interfaces)
               v_network_interfaces
           in
           let bnd = "network_interfaces", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_egress in
         ("egress", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connector in
         ("connector", arg) :: bnds
       in
       `Assoc bnds
    : template__template__vpc_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__vpc_access

[@@@deriving.end]

type template__template__volumes__secret__items = {
  mode : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : template__template__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__secret__items

[@@@deriving.end]

type template__template__volumes__secret = {
  default_mode : float prop;
  items : template__template__volumes__secret__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__volumes__secret) -> ()

let yojson_of_template__template__volumes__secret =
  (function
   | {
       default_mode = v_default_mode;
       items = v_items;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__volumes__secret__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : template__template__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__secret

[@@@deriving.end]

type template__template__volumes__cloud_sql_instance = {
  instances : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_instances then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_instances
           in
           let bnd = "instances", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__template__volumes__cloud_sql_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes__cloud_sql_instance

[@@@deriving.end]

type template__template__volumes = {
  cloud_sql_instance :
    template__template__volumes__cloud_sql_instance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  secret : template__template__volumes__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__volumes) -> ()

let yojson_of_template__template__volumes =
  (function
   | {
       cloud_sql_instance = v_cloud_sql_instance;
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
                yojson_of_template__template__volumes__secret)
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
         if Stdlib.( = ) [] v_cloud_sql_instance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__volumes__cloud_sql_instance)
               v_cloud_sql_instance
           in
           let bnd = "cloud_sql_instance", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__template__volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__volumes

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

type template__template__containers__resources = {
  limits : string prop Tf_core.assoc;
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
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_limits
         in
         ("limits", arg) :: bnds
       in
       `Assoc bnds
    : template__template__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__resources

[@@@deriving.end]

type template__template__containers__ports = {
  container_port : float prop;
  name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       `Assoc bnds
    : template__template__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__ports

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_secret_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__containers__env__value_source__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__template__containers__env__value_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__env__value_source

[@@@deriving.end]

type template__template__containers__env = {
  name : string prop;
  value : string prop;
  value_source :
    template__template__containers__env__value_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_value_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__containers__env__value_source)
               v_value_source
           in
           let bnd = "value_source", arg in
           bnd :: bnds
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
    : template__template__containers__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers__env

[@@@deriving.end]

type template__template__containers = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env : template__template__containers__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : string prop;
  name : string prop;
  ports : template__template__containers__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resources : template__template__containers__resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_mounts : template__template__containers__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  working_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template__containers) -> ()

let yojson_of_template__template__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       image = v_image;
       name = v_name;
       ports = v_ports;
       resources = v_resources;
       volume_mounts = v_volume_mounts;
       working_dir = v_working_dir;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_working_dir in
         ("working_dir", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_volume_mounts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__containers__volume_mounts)
               v_volume_mounts
           in
           let bnd = "volume_mounts", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__containers__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__template__containers__ports)
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
                yojson_of_template__template__containers__env)
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
    : template__template__containers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template__containers

[@@@deriving.end]

type template__template = {
  containers : template__template__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_key : string prop;
  execution_environment : string prop;
  max_retries : float prop;
  service_account : string prop;
  timeout : string prop;
  volumes : template__template__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_access : template__template__vpc_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__template) -> ()

let yojson_of_template__template =
  (function
   | {
       containers = v_containers;
       encryption_key = v_encryption_key;
       execution_environment = v_execution_environment;
       max_retries = v_max_retries;
       service_account = v_service_account;
       timeout = v_timeout;
       volumes = v_volumes;
       vpc_access = v_vpc_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__template__vpc_access)
               v_vpc_access
           in
           let bnd = "vpc_access", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_volumes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__template__volumes)
               v_volumes
           in
           let bnd = "volumes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_environment
         in
         ("execution_environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_key
         in
         ("encryption_key", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_containers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__template__containers)
               v_containers
           in
           let bnd = "containers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__template

[@@@deriving.end]

type template = {
  annotations : string prop Tf_core.assoc;
  labels : string prop Tf_core.assoc;
  parallelism : float prop;
  task_count : float prop;
  template : template__template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__template) v_template
           in
           let bnd = "template", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_task_count in
         ("task_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_parallelism in
         ("parallelism", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_annotations
         in
         ("annotations", arg) :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

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
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_v2_job) -> ()

let yojson_of_google_cloud_run_v2_job =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
       `Assoc bnds
    : google_cloud_run_v2_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_v2_job

[@@@deriving.end]

let google_cloud_run_v2_job ?id ?location ?project ~name () :
    google_cloud_run_v2_job =
  { id; location; name; project }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  binary_authorization : binary_authorization list prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  delete_time : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  execution_count : float prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  last_modifier : string prop;
  latest_created_execution : latest_created_execution list prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  template : template list prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ?location ?project ~name __id =
  let __type = "google_cloud_run_v2_job" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       binary_authorization =
         Prop.computed __type __id "binary_authorization";
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
       template = Prop.computed __type __id "template";
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
        (google_cloud_run_v2_job ?id ?location ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
