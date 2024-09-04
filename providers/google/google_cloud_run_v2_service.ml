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

type template__containers__env__value_source__secret_key_ref = {
  secret : string prop;
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_secret_key_ref then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__env__value_source__secret_key_ref)
               v_secret_key_ref
           in
           let bnd = "secret_key_ref", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : template__containers__env__value_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__env__value_source

[@@@deriving.end]

type template__containers__env = {
  name : string prop;
  value : string prop option; [@option]
  value_source : template__containers__env__value_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_value_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__env__value_source)
               v_value_source
           in
           let bnd = "value_source", arg in
           bnd :: bnds
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
    : template__containers__env -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__env

[@@@deriving.end]

type template__containers__liveness_probe__grpc = {
  port : float prop option; [@option]
  service : string prop option; [@option]
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
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe__grpc

[@@@deriving.end]

type template__containers__liveness_probe__http_get__http_headers = {
  name : string prop;
  value : string prop option; [@option]
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
    : template__containers__liveness_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__containers__liveness_probe__http_get__http_headers

[@@@deriving.end]

type template__containers__liveness_probe__http_get = {
  path : string prop option; [@option]
  port : float prop option; [@option]
  http_headers :
    template__containers__liveness_probe__http_get__http_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : template__containers__liveness_probe__http_get) -> ()

let yojson_of_template__containers__liveness_probe__http_get =
  (function
   | { path = v_path; port = v_port; http_headers = v_http_headers }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__liveness_probe__http_get__http_headers)
               v_http_headers
           in
           let bnd = "http_headers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe__http_get

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

type template__containers__liveness_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  grpc : template__containers__liveness_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_get : template__containers__liveness_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_socket : template__containers__liveness_probe__tcp_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__liveness_probe) -> ()

let yojson_of_template__containers__liveness_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       timeout_seconds = v_timeout_seconds;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__liveness_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__liveness_probe__http_get)
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
                yojson_of_template__containers__liveness_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__liveness_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__liveness_probe

[@@@deriving.end]

type template__containers__ports = {
  container_port : float prop option; [@option]
  name : string prop option; [@option]
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
    : template__containers__ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__ports

[@@@deriving.end]

type template__containers__resources = {
  cpu_idle : bool prop option; [@option]
  limits : string prop Tf_core.assoc option; [@option]
  startup_cpu_boost : bool prop option; [@option]
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
         match v_startup_cpu_boost with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "startup_cpu_boost", arg in
             bnd :: bnds
       in
       let bnds =
         match v_limits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "limits", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_idle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_idle", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__resources

[@@@deriving.end]

type template__containers__startup_probe__grpc = {
  port : float prop option; [@option]
  service : string prop option; [@option]
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
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__grpc

[@@@deriving.end]

type template__containers__startup_probe__http_get__http_headers = {
  name : string prop;
  value : string prop option; [@option]
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
    : template__containers__startup_probe__http_get__http_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_template__containers__startup_probe__http_get__http_headers

[@@@deriving.end]

type template__containers__startup_probe__http_get = {
  path : string prop option; [@option]
  port : float prop option; [@option]
  http_headers :
    template__containers__startup_probe__http_get__http_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__startup_probe__http_get) -> ()

let yojson_of_template__containers__startup_probe__http_get =
  (function
   | { path = v_path; port = v_port; http_headers = v_http_headers }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__startup_probe__http_get__http_headers)
               v_http_headers
           in
           let bnd = "http_headers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__http_get ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__http_get

[@@@deriving.end]

type template__containers__startup_probe__tcp_socket = {
  port : float prop option; [@option]
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe__tcp_socket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe__tcp_socket

[@@@deriving.end]

type template__containers__startup_probe = {
  failure_threshold : float prop option; [@option]
  initial_delay_seconds : float prop option; [@option]
  period_seconds : float prop option; [@option]
  timeout_seconds : float prop option; [@option]
  grpc : template__containers__startup_probe__grpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_get : template__containers__startup_probe__http_get list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_socket : template__containers__startup_probe__tcp_socket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers__startup_probe) -> ()

let yojson_of_template__containers__startup_probe =
  (function
   | {
       failure_threshold = v_failure_threshold;
       initial_delay_seconds = v_initial_delay_seconds;
       period_seconds = v_period_seconds;
       timeout_seconds = v_timeout_seconds;
       grpc = v_grpc;
       http_get = v_http_get;
       tcp_socket = v_tcp_socket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tcp_socket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__startup_probe__tcp_socket)
               v_tcp_socket
           in
           let bnd = "tcp_socket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_get then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__startup_probe__http_get)
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
                yojson_of_template__containers__startup_probe__grpc)
               v_grpc
           in
           let bnd = "grpc", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "period_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__containers__startup_probe ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers__startup_probe

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

type template__containers = {
  args : string prop list option; [@option]
  command : string prop list option; [@option]
  depends_on : string prop list option; [@option]
  image : string prop;
  name : string prop option; [@option]
  working_dir : string prop option; [@option]
  env : template__containers__env list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  liveness_probe : template__containers__liveness_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ports : template__containers__ports list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resources : template__containers__resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  startup_probe : template__containers__startup_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_mounts : template__containers__volume_mounts list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__containers) -> ()

let yojson_of_template__containers =
  (function
   | {
       args = v_args;
       command = v_command;
       depends_on = v_depends_on;
       image = v_image;
       name = v_name;
       working_dir = v_working_dir;
       env = v_env;
       liveness_probe = v_liveness_probe;
       ports = v_ports;
       resources = v_resources;
       startup_probe = v_startup_probe;
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
                yojson_of_template__containers__volume_mounts)
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
                yojson_of_template__containers__startup_probe)
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
                yojson_of_template__containers__resources)
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__containers__ports)
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_liveness_probe then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__containers__liveness_probe)
               v_liveness_probe
           in
           let bnd = "liveness_probe", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_env then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__containers__env)
               v_env
           in
           let bnd = "env", arg in
           bnd :: bnds
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
         match v_depends_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "depends_on", arg in
             bnd :: bnds
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
    : template__containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__containers

[@@@deriving.end]

type template__scaling = {
  max_instance_count : float prop option; [@option]
  min_instance_count : float prop option; [@option]
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
         match v_min_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instance_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : template__scaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__scaling

[@@@deriving.end]

type template__volumes__cloud_sql_instance = {
  instances : string prop list option; [@option]
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
    : template__volumes__cloud_sql_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__cloud_sql_instance

[@@@deriving.end]

type template__volumes__gcs = {
  bucket : string prop;
  read_only : bool prop option; [@option]
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__gcs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__gcs

[@@@deriving.end]

type template__volumes__nfs = {
  path : string prop;
  read_only : bool prop option; [@option]
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
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes__nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__nfs

[@@@deriving.end]

type template__volumes__secret__items = {
  mode : float prop option; [@option]
  path : string prop;
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
    : template__volumes__secret__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__secret__items

[@@@deriving.end]

type template__volumes__secret = {
  default_mode : float prop option; [@option]
  secret : string prop;
  items : template__volumes__secret__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes__secret) -> ()

let yojson_of_template__volumes__secret =
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
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__volumes__secret__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
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
    : template__volumes__secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes__secret

[@@@deriving.end]

type template__volumes = {
  name : string prop;
  cloud_sql_instance : template__volumes__cloud_sql_instance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcs : template__volumes__gcs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  nfs : template__volumes__nfs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : template__volumes__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template__volumes) -> ()

let yojson_of_template__volumes =
  (function
   | {
       name = v_name;
       cloud_sql_instance = v_cloud_sql_instance;
       gcs = v_gcs;
       nfs = v_nfs;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__volumes__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nfs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__volumes__nfs) v_nfs
           in
           let bnd = "nfs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__volumes__gcs) v_gcs
           in
           let bnd = "gcs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_sql_instance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__volumes__cloud_sql_instance)
               v_cloud_sql_instance
           in
           let bnd = "cloud_sql_instance", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : template__volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__volumes

[@@@deriving.end]

type template__vpc_access__network_interfaces = {
  network : string prop option; [@option]
  subnetwork : string prop option; [@option]
  tags : string prop list option; [@option]
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
    : template__vpc_access__network_interfaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__vpc_access__network_interfaces

[@@@deriving.end]

type template__vpc_access = {
  connector : string prop option; [@option]
  egress : string prop option; [@option]
  network_interfaces : template__vpc_access__network_interfaces list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_network_interfaces then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_template__vpc_access__network_interfaces)
               v_network_interfaces
           in
           let bnd = "network_interfaces", arg in
           bnd :: bnds
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
    : template__vpc_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_template__vpc_access

[@@@deriving.end]

type template = {
  annotations : string prop Tf_core.assoc option; [@option]
  encryption_key : string prop option; [@option]
  execution_environment : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  max_instance_request_concurrency : float prop option; [@option]
  revision : string prop option; [@option]
  service_account : string prop option; [@option]
  session_affinity : bool prop option; [@option]
  timeout : string prop option; [@option]
  containers : template__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling : template__scaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volumes : template__volumes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_access : template__vpc_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : template) -> ()

let yojson_of_template =
  (function
   | {
       annotations = v_annotations;
       encryption_key = v_encryption_key;
       execution_environment = v_execution_environment;
       labels = v_labels;
       max_instance_request_concurrency =
         v_max_instance_request_concurrency;
       revision = v_revision;
       service_account = v_service_account;
       session_affinity = v_session_affinity;
       timeout = v_timeout;
       containers = v_containers;
       scaling = v_scaling;
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
             (yojson_of_list yojson_of_template__vpc_access)
               v_vpc_access
           in
           let bnd = "vpc_access", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_volumes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__volumes) v_volumes
           in
           let bnd = "volumes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__scaling) v_scaling
           in
           let bnd = "scaling", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_containers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template__containers)
               v_containers
           in
           let bnd = "containers", arg in
           bnd :: bnds
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
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_affinity", arg in
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
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instance_request_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instance_request_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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

type traffic = {
  percent : float prop option; [@option]
  revision : string prop option; [@option]
  tag : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : traffic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic

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
  annotations : string prop Tf_core.assoc option; [@option]
  client : string prop option; [@option]
  client_version : string prop option; [@option]
  custom_audiences : string prop list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  ingress : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  launch_stage : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  binary_authorization : binary_authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template : template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  traffic : traffic list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_run_v2_service) -> ()

let yojson_of_google_cloud_run_v2_service =
  (function
   | {
       annotations = v_annotations;
       client = v_client;
       client_version = v_client_version;
       custom_audiences = v_custom_audiences;
       description = v_description;
       id = v_id;
       ingress = v_ingress;
       labels = v_labels;
       launch_stage = v_launch_stage;
       location = v_location;
       name = v_name;
       project = v_project;
       binary_authorization = v_binary_authorization;
       template = v_template;
       timeouts = v_timeouts;
       traffic = v_traffic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_traffic then bnds
         else
           let arg = (yojson_of_list yojson_of_traffic) v_traffic in
           let bnd = "traffic", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_template) v_template
           in
           let bnd = "template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_binary_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_binary_authorization)
               v_binary_authorization
           in
           let bnd = "binary_authorization", arg in
           bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_audiences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_audiences", arg in
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_run_v2_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_run_v2_service

[@@@deriving.end]

let binary_authorization ?breakglass_justification ?use_default () :
    binary_authorization =
  { breakglass_justification; use_default }

let template__containers__env__value_source__secret_key_ref ?version
    ~secret () :
    template__containers__env__value_source__secret_key_ref =
  { secret; version }

let template__containers__env__value_source ?(secret_key_ref = []) ()
    : template__containers__env__value_source =
  { secret_key_ref }

let template__containers__env ?value ?(value_source = []) ~name () :
    template__containers__env =
  { name; value; value_source }

let template__containers__liveness_probe__grpc ?port ?service () :
    template__containers__liveness_probe__grpc =
  { port; service }

let template__containers__liveness_probe__http_get__http_headers
    ?value ~name () :
    template__containers__liveness_probe__http_get__http_headers =
  { name; value }

let template__containers__liveness_probe__http_get ?path ?port
    ?(http_headers = []) () :
    template__containers__liveness_probe__http_get =
  { path; port; http_headers }

let template__containers__liveness_probe__tcp_socket ~port () :
    template__containers__liveness_probe__tcp_socket =
  { port }

let template__containers__liveness_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds
    ?(grpc = []) ?(http_get = []) ?(tcp_socket = []) () :
    template__containers__liveness_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
    tcp_socket;
  }

let template__containers__ports ?container_port ?name () :
    template__containers__ports =
  { container_port; name }

let template__containers__resources ?cpu_idle ?limits
    ?startup_cpu_boost () : template__containers__resources =
  { cpu_idle; limits; startup_cpu_boost }

let template__containers__startup_probe__grpc ?port ?service () :
    template__containers__startup_probe__grpc =
  { port; service }

let template__containers__startup_probe__http_get__http_headers
    ?value ~name () :
    template__containers__startup_probe__http_get__http_headers =
  { name; value }

let template__containers__startup_probe__http_get ?path ?port
    ?(http_headers = []) () :
    template__containers__startup_probe__http_get =
  { path; port; http_headers }

let template__containers__startup_probe__tcp_socket ?port () :
    template__containers__startup_probe__tcp_socket =
  { port }

let template__containers__startup_probe ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?timeout_seconds
    ?(grpc = []) ?(http_get = []) ?(tcp_socket = []) () :
    template__containers__startup_probe =
  {
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    timeout_seconds;
    grpc;
    http_get;
    tcp_socket;
  }

let template__containers__volume_mounts ~mount_path ~name () :
    template__containers__volume_mounts =
  { mount_path; name }

let template__containers ?args ?command ?depends_on ?name
    ?working_dir ?(env = []) ?(liveness_probe = []) ?(ports = [])
    ?(resources = []) ?(startup_probe = []) ?(volume_mounts = [])
    ~image () : template__containers =
  {
    args;
    command;
    depends_on;
    image;
    name;
    working_dir;
    env;
    liveness_probe;
    ports;
    resources;
    startup_probe;
    volume_mounts;
  }

let template__scaling ?max_instance_count ?min_instance_count () :
    template__scaling =
  { max_instance_count; min_instance_count }

let template__volumes__cloud_sql_instance ?instances () :
    template__volumes__cloud_sql_instance =
  { instances }

let template__volumes__gcs ?read_only ~bucket () :
    template__volumes__gcs =
  { bucket; read_only }

let template__volumes__nfs ?read_only ~path ~server () :
    template__volumes__nfs =
  { path; read_only; server }

let template__volumes__secret__items ?mode ?version ~path () :
    template__volumes__secret__items =
  { mode; path; version }

let template__volumes__secret ?default_mode ?(items = []) ~secret ()
    : template__volumes__secret =
  { default_mode; secret; items }

let template__volumes ?(cloud_sql_instance = []) ?(gcs = [])
    ?(nfs = []) ?(secret = []) ~name () : template__volumes =
  { name; cloud_sql_instance; gcs; nfs; secret }

let template__vpc_access__network_interfaces ?network ?subnetwork
    ?tags () : template__vpc_access__network_interfaces =
  { network; subnetwork; tags }

let template__vpc_access ?connector ?egress
    ?(network_interfaces = []) () : template__vpc_access =
  { connector; egress; network_interfaces }

let template ?annotations ?encryption_key ?execution_environment
    ?labels ?max_instance_request_concurrency ?revision
    ?service_account ?session_affinity ?timeout ?(containers = [])
    ?(scaling = []) ?(volumes = []) ?(vpc_access = []) () : template
    =
  {
    annotations;
    encryption_key;
    execution_environment;
    labels;
    max_instance_request_concurrency;
    revision;
    service_account;
    session_affinity;
    timeout;
    containers;
    scaling;
    volumes;
    vpc_access;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let traffic ?percent ?revision ?tag ?type_ () : traffic =
  { percent; revision; tag; type_ }

let google_cloud_run_v2_service ?annotations ?client ?client_version
    ?custom_audiences ?description ?id ?ingress ?labels ?launch_stage
    ?project ?(binary_authorization = []) ?timeouts ?(traffic = [])
    ~location ~name ~template () : google_cloud_run_v2_service =
  {
    annotations;
    client;
    client_version;
    custom_audiences;
    description;
    id;
    ingress;
    labels;
    launch_stage;
    location;
    name;
    project;
    binary_authorization;
    template;
    timeouts;
    traffic;
  }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  client : string prop;
  client_version : string prop;
  conditions : conditions list prop;
  create_time : string prop;
  creator : string prop;
  custom_audiences : string list prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  expire_time : string prop;
  generation : string prop;
  id : string prop;
  ingress : string prop;
  labels : string Tf_core.assoc prop;
  last_modifier : string prop;
  latest_created_revision : string prop;
  latest_ready_revision : string prop;
  launch_stage : string prop;
  location : string prop;
  name : string prop;
  observed_generation : string prop;
  project : string prop;
  reconciling : bool prop;
  terminal_condition : terminal_condition list prop;
  terraform_labels : string Tf_core.assoc prop;
  traffic_statuses : traffic_statuses list prop;
  uid : string prop;
  update_time : string prop;
  uri : string prop;
}

let make ?annotations ?client ?client_version ?custom_audiences
    ?description ?id ?ingress ?labels ?launch_stage ?project
    ?(binary_authorization = []) ?timeouts ?(traffic = []) ~location
    ~name ~template __id =
  let __type = "google_cloud_run_v2_service" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
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
       terminal_condition =
         Prop.computed __type __id "terminal_condition";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
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
        (google_cloud_run_v2_service ?annotations ?client
           ?client_version ?custom_audiences ?description ?id
           ?ingress ?labels ?launch_stage ?project
           ~binary_authorization ?timeouts ~traffic ~location ~name
           ~template ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?client ?client_version
    ?custom_audiences ?description ?id ?ingress ?labels ?launch_stage
    ?project ?(binary_authorization = []) ?timeouts ?(traffic = [])
    ~location ~name ~template __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?client ?client_version ?custom_audiences
      ?description ?id ?ingress ?labels ?launch_stage ?project
      ~binary_authorization ?timeouts ~traffic ~location ~name
      ~template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
