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

type template__vpc_access__network_interfaces = {
  network : string prop;
  subnetwork : string prop;
  tags : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__vpc_access__network_interfaces) -> ()

let yojson_of_template__vpc_access__network_interfaces =
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
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
    : template__vpc_access__network_interfaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__vpc_access__network_interfaces

[@@@deriving.end]

type template__vpc_access = {
  connector : string prop;
  egress : string prop;
  network_interfaces : template__vpc_access__network_interfaces list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__vpc_access) -> ()

let yojson_of_template__vpc_access =
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
             yojson_of_template__vpc_access__network_interfaces
             v_network_interfaces
         in
         ("network_interfaces", arg) :: bnds
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
    : template__vpc_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__vpc_access

[@@@deriving.end]

type template__volumes__secret__items = {
  mode : float prop;
  path : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__secret__items) -> ()

let yojson_of_template__volumes__secret__items =
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
    : template__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__secret__items

[@@@deriving.end]

type template__volumes__secret = {
  default_mode : float prop;
  items : template__volumes__secret__items list;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__secret) -> ()

let yojson_of_template__volumes__secret =
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
         let arg =
           yojson_of_list yojson_of_template__volumes__secret__items
             v_items
         in
         ("items", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default_mode in
         ("default_mode", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__secret

[@@@deriving.end]

type template__volumes__nfs = {
  path : string prop;
  read_only : bool prop;
  server : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__nfs) -> ()

let yojson_of_template__volumes__nfs =
  (function
   | { path = v_path; read_only = v_read_only; server = v_server } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__nfs

[@@@deriving.end]

type template__volumes__gcs = {
  bucket : string prop;
  read_only : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__gcs) -> ()

let yojson_of_template__volumes__gcs =
  (function
   | { bucket = v_bucket; read_only = v_read_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read_only in
         ("read_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__gcs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__gcs

[@@@deriving.end]

type template__volumes__cloud_sql_instance = {
  instances : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__cloud_sql_instance) -> ()

let yojson_of_template__volumes__cloud_sql_instance =
  (function
   | { instances = v_instances } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_instances
         in
         ("instances", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__cloud_sql_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__cloud_sql_instance

[@@@deriving.end]

type template__volumes = {
  cloud_sql_instance : template__volumes__cloud_sql_instance list;
  gcs : template__volumes__gcs list;
  name : string prop;
  nfs : template__volumes__nfs list;
  secret : template__volumes__secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes) -> ()

let yojson_of_template__volumes =
  (function
   | {
       cloud_sql_instance = v_cloud_sql_instance;
       gcs = v_gcs;
       name = v_name;
       nfs = v_nfs;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__volumes__secret
             v_secret
         in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__volumes__nfs v_nfs
         in
         ("nfs", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__volumes__gcs v_gcs
         in
         ("gcs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__volumes__cloud_sql_instance
             v_cloud_sql_instance
         in
         ("cloud_sql_instance", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes

[@@@deriving.end]

type template__scaling = {
  max_instance_count : float prop;
  min_instance_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__scaling) -> ()

let yojson_of_template__scaling =
  (function
   | {
       max_instance_count = v_max_instance_count;
       min_instance_count = v_min_instance_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_instance_count
         in
         ("min_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_instance_count
         in
         ("max_instance_count", arg) :: bnds
       in
       `Assoc bnds
    : template__scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__scaling

[@@@deriving.end]

type template__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__volume_mounts) -> ()

let yojson_of_template__containers__volume_mounts =
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
    : template__containers__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__volume_mounts

[@@@deriving.end]

type template__containers__startup_probe__tcp_socket = {
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__containers__startup_probe__tcp_socket) -> ()

let yojson_of_template__containers__startup_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__tcp_socket

[@@@deriving.end]

type template__containers__startup_probe__http_get__http_headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__containers__startup_probe__http_get__http_headers) ->
  ()

let yojson_of_template__containers__startup_probe__http_get__http_headers
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
    : template__containers__startup_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__containers__startup_probe__http_get__http_headers

[@@@deriving.end]

type template__containers__startup_probe__http_get = {
  http_headers :
    template__containers__startup_probe__http_get__http_headers list;
  path : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__startup_probe__http_get) -> ()

let yojson_of_template__containers__startup_probe__http_get =
  (function
   | { http_headers = v_http_headers; path = v_path; port = v_port }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__startup_probe__http_get__http_headers
             v_http_headers
         in
         ("http_headers", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__http_get

[@@@deriving.end]

type template__containers__startup_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__startup_probe__grpc) -> ()

let yojson_of_template__containers__startup_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__grpc

[@@@deriving.end]

type template__containers__startup_probe = {
  failure_threshold : float prop;
  grpc : template__containers__startup_probe__grpc list;
  http_get : template__containers__startup_probe__http_get list;
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  tcp_socket : template__containers__startup_probe__tcp_socket list;
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__startup_probe) -> ()

let yojson_of_template__containers__startup_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__startup_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__startup_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__startup_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe

[@@@deriving.end]

type template__containers__resources = {
  cpu_idle : bool prop;
  limits : (string * string prop) list;
  startup_cpu_boost : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__resources) -> ()

let yojson_of_template__containers__resources =
  (function
   | {
       cpu_idle = v_cpu_idle;
       limits = v_limits;
       startup_cpu_boost = v_startup_cpu_boost;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_startup_cpu_boost
         in
         ("startup_cpu_boost", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_cpu_idle in
         ("cpu_idle", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__resources

[@@@deriving.end]

type template__containers__ports = {
  container_port : float prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__ports) -> ()

let yojson_of_template__containers__ports =
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
    : template__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__ports

[@@@deriving.end]

type template__containers__liveness_probe__tcp_socket = {
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__containers__liveness_probe__tcp_socket) -> ()

let yojson_of_template__containers__liveness_probe__tcp_socket =
  (function
   | { port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe__tcp_socket

[@@@deriving.end]

type template__containers__liveness_probe__http_get__http_headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__containers__liveness_probe__http_get__http_headers) ->
  ()

let yojson_of_template__containers__liveness_probe__http_get__http_headers
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
    : template__containers__liveness_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__containers__liveness_probe__http_get__http_headers

[@@@deriving.end]

type template__containers__liveness_probe__http_get = {
  http_headers :
    template__containers__liveness_probe__http_get__http_headers list;
  path : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__containers__liveness_probe__http_get) -> ()

let yojson_of_template__containers__liveness_probe__http_get =
  (function
   | { http_headers = v_http_headers; path = v_path; port = v_port }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__liveness_probe__http_get__http_headers
             v_http_headers
         in
         ("http_headers", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe__http_get

[@@@deriving.end]

type template__containers__liveness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__liveness_probe__grpc) -> ()

let yojson_of_template__containers__liveness_probe__grpc =
  (function
   | { port = v_port; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe__grpc

[@@@deriving.end]

type template__containers__liveness_probe = {
  failure_threshold : float prop;
  grpc : template__containers__liveness_probe__grpc list;
  http_get : template__containers__liveness_probe__http_get list;
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  tcp_socket : template__containers__liveness_probe__tcp_socket list;
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__liveness_probe) -> ()

let yojson_of_template__containers__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       tcp_socket = v_tcp_socket;
       timeout_seconds = v_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__liveness_probe__tcp_socket
             v_tcp_socket
         in
         ("tcp_socket", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_period_seconds in
         ("period_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_seconds
         in
         ("initial_delay_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__liveness_probe__http_get
             v_http_get
         in
         ("http_get", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__liveness_probe__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe

[@@@deriving.end]

type template__containers__env__value_source__secret_key_ref = {
  secret : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__containers__env__value_source__secret_key_ref) ->
  ()

let yojson_of_template__containers__env__value_source__secret_key_ref
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
    : template__containers__env__value_source__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__containers__env__value_source__secret_key_ref

[@@@deriving.end]

type template__containers__env__value_source = {
  secret_key_ref :
    template__containers__env__value_source__secret_key_ref list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__env__value_source) -> ()

let yojson_of_template__containers__env__value_source =
  (function
   | { secret_key_ref = v_secret_key_ref } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__env__value_source__secret_key_ref
             v_secret_key_ref
         in
         ("secret_key_ref", arg) :: bnds
       in
       `Assoc bnds
    : template__containers__env__value_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__env__value_source

[@@@deriving.end]

type template__containers__env = {
  name : string prop;
  value : string prop;
  value_source : template__containers__env__value_source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__env) -> ()

let yojson_of_template__containers__env =
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
             yojson_of_template__containers__env__value_source
             v_value_source
         in
         ("value_source", arg) :: bnds
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
    : template__containers__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__env

[@@@deriving.end]

type template__containers = {
  args : string prop list;
  command : string prop list;
  depends_on : string prop list;
  env : template__containers__env list;
  image : string prop;
  liveness_probe : template__containers__liveness_probe list;
  name : string prop;
  ports : template__containers__ports list;
  resources : template__containers__resources list;
  startup_probe : template__containers__startup_probe list;
  volume_mounts : template__containers__volume_mounts list;
  working_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers) -> ()

let yojson_of_template__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       depends_on = v_depends_on;
       env = v_env;
       image = v_image;
       liveness_probe = v_liveness_probe;
       name = v_name;
       ports = v_ports;
       resources = v_resources;
       startup_probe = v_startup_probe;
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
         let arg =
           yojson_of_list
             yojson_of_template__containers__volume_mounts
             v_volume_mounts
         in
         ("volume_mounts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__startup_probe
             v_startup_probe
         in
         ("startup_probe", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__containers__resources
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__containers__ports
             v_ports
         in
         ("ports", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_template__containers__liveness_probe
             v_liveness_probe
         in
         ("liveness_probe", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__containers__env v_env
         in
         ("env", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_depends_on
         in
         ("depends_on", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_command
         in
         ("command", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_args
         in
         ("args", arg) :: bnds
       in
       `Assoc bnds
    : template__containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers

[@@@deriving.end]

type template = {
  annotations : (string * string prop) list;
  containers : template__containers list;
  encryption_key : string prop;
  execution_environment : string prop;
  labels : (string * string prop) list;
  max_instance_request_concurrency : float prop;
  revision : string prop;
  scaling : template__scaling list;
  service_account : string prop;
  session_affinity : bool prop;
  timeout : string prop;
  volumes : template__volumes list;
  vpc_access : template__vpc_access list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       annotations = v_annotations;
       containers = v_containers;
       encryption_key = v_encryption_key;
       execution_environment = v_execution_environment;
       labels = v_labels;
       max_instance_request_concurrency =
         v_max_instance_request_concurrency;
       revision = v_revision;
       scaling = v_scaling;
       service_account = v_service_account;
       session_affinity = v_session_affinity;
       timeout = v_timeout;
       volumes = v_volumes;
       vpc_access = v_vpc_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__vpc_access v_vpc_access
         in
         ("vpc_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__volumes v_volumes
         in
         ("volumes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_session_affinity
         in
         ("session_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_template__scaling v_scaling
         in
         ("scaling", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_instance_request_concurrency
         in
         ("max_instance_request_concurrency", arg) :: bnds
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
         let arg =
           yojson_of_list yojson_of_template__containers v_containers
         in
         ("containers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
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

type traffic = {
  percent : float prop;
  revision : string prop;
  tag : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic) -> ()

let yojson_of_traffic =
  (function
   | {
       percent = v_percent;
       revision = v_revision;
       tag = v_tag;
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
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       `Assoc bnds
    : traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic

[@@@deriving.end]

type traffic_statuses = {
  percent : float prop;
  revision : string prop;
  tag : string prop;
  type_ : string prop; [@key "type"]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_statuses) -> ()

let yojson_of_traffic_statuses =
  (function
   | {
       percent = v_percent;
       revision = v_revision;
       tag = v_tag;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       `Assoc bnds
    : traffic_statuses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_statuses

[@@@deriving.end]

type google_cloud_run_v2_service = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_v2_service) -> ()

let yojson_of_google_cloud_run_v2_service =
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
    : google_cloud_run_v2_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_v2_service

[@@@deriving.end]

let google_cloud_run_v2_service ?id ?location ?project ~name () :
    google_cloud_run_v2_service =
  { id; location; name; project }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  binary_authorization : binary_authorization list prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  custom_audiences : string list prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  ingress : string prop;
  labels : (string * string) list prop;
  last_modifier : string prop;
  latest_created_revision : string prop;
  latest_ready_revision : string prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  template : template list prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : (string * string) list prop;
  traffic : traffic list prop;
  traffic_statuses : traffic_statuses list prop;
  uid : string prop;
  update_time : string prop;
  uri : string prop;
}

let make ?id ?location ?project ~name __id =
  let __type = "google_cloud_run_v2_service" in
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
       custom_audiences =
         Prop.computed __type __id "custom_audiences";
       delete_time = Prop.computed __type __id "delete_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       expire_time = Prop.computed __type __id "expire_time";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       ingress = Prop.computed __type __id "ingress";
       labels = Prop.computed __type __id "labels";
       last_modifier = Prop.computed __type __id "last_modifier";
       latest_created_revision =
         Prop.computed __type __id "latest_created_revision";
       latest_ready_revision =
         Prop.computed __type __id "latest_ready_revision";
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
       traffic = Prop.computed __type __id "traffic";
       traffic_statuses =
         Prop.computed __type __id "traffic_statuses";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_v2_service
        (google_cloud_run_v2_service ?id ?location ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
