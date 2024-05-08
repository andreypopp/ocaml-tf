(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list;
  effective_annotations : (string * string prop) list;
  effective_labels : (string * string prop) list;
  generation : float prop;
  labels : (string * string prop) list;
  namespace : string prop;
  resource_version : string prop;
  self_link : string prop;
  terraform_labels : (string * string prop) list;
  uid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       effective_annotations = v_effective_annotations;
       effective_labels = v_effective_labels;
       generation = v_generation;
       labels = v_labels;
       namespace = v_namespace;
       resource_version = v_resource_version;
       self_link = v_self_link;
       terraform_labels = v_terraform_labels;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_terraform_labels
         in
         ("terraform_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_version
         in
         ("resource_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_generation in
         ("generation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_effective_labels
         in
         ("effective_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_effective_annotations
         in
         ("effective_annotations", arg) :: bnds
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
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type status__traffic = {
  latest_revision : bool prop;
  percent : float prop;
  revision_name : string prop;
  tag : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__traffic) -> ()

let yojson_of_status__traffic =
  (function
   | {
       latest_revision = v_latest_revision;
       percent = v_percent;
       revision_name = v_revision_name;
       tag = v_tag;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision_name in
         ("revision_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_latest_revision in
         ("latest_revision", arg) :: bnds
       in
       `Assoc bnds
    : status__traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__traffic

[@@@deriving.end]

type status__conditions = {
  message : string prop;
  reason : string prop;
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__conditions) -> ()

let yojson_of_status__conditions =
  (function
   | {
       message = v_message;
       reason = v_reason;
       status = v_status;
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
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : status__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__conditions

[@@@deriving.end]

type status = {
  conditions : status__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  latest_created_revision_name : string prop;
  latest_ready_revision_name : string prop;
  observed_generation : float prop;
  traffic : status__traffic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       conditions = v_conditions;
       latest_created_revision_name = v_latest_created_revision_name;
       latest_ready_revision_name = v_latest_ready_revision_name;
       observed_generation = v_observed_generation;
       traffic = v_traffic;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_traffic then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__traffic) v_traffic
           in
           let bnd = "traffic", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_observed_generation
         in
         ("observed_generation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_ready_revision_name
         in
         ("latest_ready_revision_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_latest_created_revision_name
         in
         ("latest_created_revision_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type template__spec__volumes__secret__items = {
  key : string prop;
  mode : float prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes__secret__items) -> ()

let yojson_of_template__spec__volumes__secret__items =
  (function
   | { key = v_key; mode = v_mode; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes__secret__items

[@@@deriving.end]

type template__spec__volumes__secret = {
  default_mode : float prop;
  items : template__spec__volumes__secret__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes__secret) -> ()

let yojson_of_template__spec__volumes__secret =
  (function
   | {
       default_mode = v_default_mode;
       items = v_items;
       secret_name = v_secret_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__volumes__secret__items)
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
    : template__spec__volumes__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes__secret

[@@@deriving.end]

type template__spec__volumes = {
  name : string prop;
  secret : template__spec__volumes__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__volumes) -> ()

let yojson_of_template__spec__volumes =
  (function
   | { name = v_name; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__volumes__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__volumes

[@@@deriving.end]

type template__spec__containers__volume_mounts = {
  mount_path : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__volume_mounts) -> ()

let yojson_of_template__spec__containers__volume_mounts =
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
    : template__spec__containers__volume_mounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__volume_mounts

[@@@deriving.end]

type template__spec__containers__startup_probe__tcp_socket = {
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__tcp_socket) ->
  ()

let yojson_of_template__spec__containers__startup_probe__tcp_socket =
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
    : template__spec__containers__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__startup_probe__tcp_socket

[@@@deriving.end]

type template__spec__containers__startup_probe__http_get__http_headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__startup_probe__http_get__http_headers) ->
  ()

let yojson_of_template__spec__containers__startup_probe__http_get__http_headers
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
    : template__spec__containers__startup_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__startup_probe__http_get__http_headers

[@@@deriving.end]

type template__spec__containers__startup_probe__http_get = {
  http_headers :
    template__spec__containers__startup_probe__http_get__http_headers
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__http_get) -> ()

let yojson_of_template__spec__containers__startup_probe__http_get =
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
         if Stdlib.( = ) [] v_http_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__startup_probe__http_get__http_headers)
               v_http_headers
           in
           let bnd = "http_headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe__http_get

[@@@deriving.end]

type template__spec__containers__startup_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__startup_probe__grpc) -> ()

let yojson_of_template__spec__containers__startup_probe__grpc =
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
    : template__spec__containers__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe__grpc

[@@@deriving.end]

type template__spec__containers__startup_probe = {
  failure_threshold : float prop;
  grpc : template__spec__containers__startup_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_get :
    template__spec__containers__startup_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  tcp_socket :
    template__spec__containers__startup_probe__tcp_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__startup_probe) -> ()

let yojson_of_template__spec__containers__startup_probe =
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
         if Stdlib.( = ) [] v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__startup_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__startup_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__startup_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__startup_probe

[@@@deriving.end]

type template__spec__containers__resources = {
  limits : (string * string prop) list;
  requests : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__resources) -> ()

let yojson_of_template__spec__containers__resources =
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
    : template__spec__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__resources

[@@@deriving.end]

type template__spec__containers__ports = {
  container_port : float prop;
  name : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__ports) -> ()

let yojson_of_template__spec__containers__ports =
  (function
   | {
       container_port = v_container_port;
       name = v_name;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
    : template__spec__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__ports

[@@@deriving.end]

type template__spec__containers__liveness_probe__http_get__http_headers = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__liveness_probe__http_get__http_headers) ->
  ()

let yojson_of_template__spec__containers__liveness_probe__http_get__http_headers
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
    : template__spec__containers__liveness_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__liveness_probe__http_get__http_headers

[@@@deriving.end]

type template__spec__containers__liveness_probe__http_get = {
  http_headers :
    template__spec__containers__liveness_probe__http_get__http_headers
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__liveness_probe__http_get) -> ()

let yojson_of_template__spec__containers__liveness_probe__http_get =
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
         if Stdlib.( = ) [] v_http_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__liveness_probe__http_get__http_headers)
               v_http_headers
           in
           let bnd = "http_headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__liveness_probe__http_get

[@@@deriving.end]

type template__spec__containers__liveness_probe__grpc = {
  port : float prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__liveness_probe__grpc) -> ()

let yojson_of_template__spec__containers__liveness_probe__grpc =
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
    : template__spec__containers__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__liveness_probe__grpc

[@@@deriving.end]

type template__spec__containers__liveness_probe = {
  failure_threshold : float prop;
  grpc : template__spec__containers__liveness_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_get :
    template__spec__containers__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  initial_delay_seconds : float prop;
  period_seconds : float prop;
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__liveness_probe) -> ()

let yojson_of_template__spec__containers__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       grpc = v_grpc;
       http_get = v_http_get;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
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
         if Stdlib.( = ) [] v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__liveness_probe__http_get)
               v_http_get
           in
           let bnd = "http_get", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__liveness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__liveness_probe

[@@@deriving.end]

type template__spec__containers__env_from__secret_ref__local_object_reference = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env_from__secret_ref__local_object_reference) ->
  ()

let yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__secret_ref__local_object_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference

[@@@deriving.end]

type template__spec__containers__env_from__secret_ref = {
  local_object_reference :
    template__spec__containers__env_from__secret_ref__local_object_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__env_from__secret_ref) -> ()

let yojson_of_template__spec__containers__env_from__secret_ref =
  (function
   | {
       local_object_reference = v_local_object_reference;
       optional = v_optional;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_object_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env_from__secret_ref__local_object_reference)
               v_local_object_reference
           in
           let bnd = "local_object_reference", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__secret_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env_from__secret_ref

[@@@deriving.end]

type template__spec__containers__env_from__config_map_ref__local_object_reference = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env_from__config_map_ref__local_object_reference) ->
  ()

let yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__config_map_ref__local_object_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference

[@@@deriving.end]

type template__spec__containers__env_from__config_map_ref = {
  local_object_reference :
    template__spec__containers__env_from__config_map_ref__local_object_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  optional : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__spec__containers__env_from__config_map_ref) -> ()

let yojson_of_template__spec__containers__env_from__config_map_ref =
  (function
   | {
       local_object_reference = v_local_object_reference;
       optional = v_optional;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_optional in
         ("optional", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_object_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env_from__config_map_ref__local_object_reference)
               v_local_object_reference
           in
           let bnd = "local_object_reference", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from__config_map_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env_from__config_map_ref

[@@@deriving.end]

type template__spec__containers__env_from = {
  config_map_ref :
    template__spec__containers__env_from__config_map_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix : string prop;
  secret_ref : template__spec__containers__env_from__secret_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env_from) -> ()

let yojson_of_template__spec__containers__env_from =
  (function
   | {
       config_map_ref = v_config_map_ref;
       prefix = v_prefix;
       secret_ref = v_secret_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env_from__secret_ref)
               v_secret_ref
           in
           let bnd = "secret_ref", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config_map_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env_from__config_map_ref)
               v_config_map_ref
           in
           let bnd = "config_map_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env_from

[@@@deriving.end]

type template__spec__containers__env__value_from__secret_key_ref = {
  key : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       template__spec__containers__env__value_from__secret_key_ref) ->
  ()

let yojson_of_template__spec__containers__env__value_from__secret_key_ref
    =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env__value_from__secret_key_ref ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__spec__containers__env__value_from__secret_key_ref

[@@@deriving.end]

type template__spec__containers__env__value_from = {
  secret_key_ref :
    template__spec__containers__env__value_from__secret_key_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env__value_from) -> ()

let yojson_of_template__spec__containers__env__value_from =
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
                yojson_of_template__spec__containers__env__value_from__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__spec__containers__env__value_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env__value_from

[@@@deriving.end]

type template__spec__containers__env = {
  name : string prop;
  value : string prop;
  value_from : template__spec__containers__env__value_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers__env) -> ()

let yojson_of_template__spec__containers__env =
  (function
   | { name = v_name; value = v_value; value_from = v_value_from } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_value_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env__value_from)
               v_value_from
           in
           let bnd = "value_from", arg in
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
    : template__spec__containers__env ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers__env

[@@@deriving.end]

type template__spec__containers = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  command : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env : template__spec__containers__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  env_from : template__spec__containers__env_from list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  image : string prop;
  liveness_probe : template__spec__containers__liveness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  ports : template__spec__containers__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resources : template__spec__containers__resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  startup_probe : template__spec__containers__startup_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_mounts : template__spec__containers__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  working_dir : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec__containers) -> ()

let yojson_of_template__spec__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       env = v_env;
       env_from = v_env_from;
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
         if Stdlib.( = ) [] v_volume_mounts then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__volume_mounts)
               v_volume_mounts
           in
           let bnd = "volume_mounts", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_startup_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__startup_probe)
               v_startup_probe
           in
           let bnd = "startup_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__resources)
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
                yojson_of_template__spec__containers__ports)
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
         if Stdlib.( = ) [] v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env_from)
               v_env_from
           in
           let bnd = "env_from", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__spec__containers__env)
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
    : template__spec__containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec__containers

[@@@deriving.end]

type template__spec = {
  container_concurrency : float prop;
  containers : template__spec__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account_name : string prop;
  serving_state : string prop;
  timeout_seconds : float prop;
  volumes : template__spec__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__spec) -> ()

let yojson_of_template__spec =
  (function
   | {
       container_concurrency = v_container_concurrency;
       containers = v_containers;
       service_account_name = v_service_account_name;
       serving_state = v_serving_state;
       timeout_seconds = v_timeout_seconds;
       volumes = v_volumes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volumes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__spec__volumes)
               v_volumes
           in
           let bnd = "volumes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_serving_state in
         ("serving_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_name
         in
         ("service_account_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_containers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__spec__containers)
               v_containers
           in
           let bnd = "containers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_container_concurrency
         in
         ("container_concurrency", arg) :: bnds
       in
       `Assoc bnds
    : template__spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__spec

[@@@deriving.end]

type template__metadata = {
  annotations : (string * string prop) list;
  generation : float prop;
  labels : (string * string prop) list;
  name : string prop;
  namespace : string prop;
  resource_version : string prop;
  self_link : string prop;
  uid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__metadata) -> ()

let yojson_of_template__metadata =
  (function
   | {
       annotations = v_annotations;
       generation = v_generation;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
       resource_version = v_resource_version;
       self_link = v_self_link;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_version
         in
         ("resource_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_generation in
         ("generation", arg) :: bnds
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
    : template__metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__metadata

[@@@deriving.end]

type template = {
  metadata : template__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : template__spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | { metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__spec) v_spec
           in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template

[@@@deriving.end]

type traffic = {
  latest_revision : bool prop;
  percent : float prop;
  revision_name : string prop;
  tag : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic) -> ()

let yojson_of_traffic =
  (function
   | {
       latest_revision = v_latest_revision;
       percent = v_percent;
       revision_name = v_revision_name;
       tag = v_tag;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision_name in
         ("revision_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_latest_revision in
         ("latest_revision", arg) :: bnds
       in
       `Assoc bnds
    : traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic

[@@@deriving.end]

type google_cloud_run_service = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_service) -> ()

let yojson_of_google_cloud_run_service =
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_cloud_run_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_service

[@@@deriving.end]

let google_cloud_run_service ?id ?project ~location ~name () :
    google_cloud_run_service =
  { id; location; name; project }

type t = {
  tf_name : string;
  autogenerate_revision_name : bool prop;
  id : string prop;
  location : string prop;
  metadata : metadata list prop;
  name : string prop;
  project : string prop;
  status : status list prop;
  template : template list prop;
  traffic : traffic list prop;
}

let make ?id ?project ~location ~name __id =
  let __type = "google_cloud_run_service" in
  let __attrs =
    ({
       tf_name = __id;
       autogenerate_revision_name =
         Prop.computed __type __id "autogenerate_revision_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
       template = Prop.computed __type __id "template";
       traffic = Prop.computed __type __id "traffic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_run_service
        (google_cloud_run_service ?id ?project ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
