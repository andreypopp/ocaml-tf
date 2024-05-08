(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type grpc_health_check = {
  grpc_service_name : string prop option; [@option]
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : grpc_health_check) -> ()

let yojson_of_grpc_health_check =
  (function
   | {
       grpc_service_name = v_grpc_service_name;
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
         match v_grpc_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grpc_service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : grpc_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grpc_health_check

[@@@deriving.end]

type http2_health_check = {
  host : string prop option; [@option]
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
  proxy_header : string prop option; [@option]
  request_path : string prop option; [@option]
  response : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http2_health_check) -> ()

let yojson_of_http2_health_check =
  (function
   | {
       host = v_host;
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
       proxy_header = v_proxy_header;
       request_path = v_request_path;
       response = v_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http2_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http2_health_check

[@@@deriving.end]

type http_health_check = {
  host : string prop option; [@option]
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
  proxy_header : string prop option; [@option]
  request_path : string prop option; [@option]
  response : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http_health_check) -> ()

let yojson_of_http_health_check =
  (function
   | {
       host = v_host;
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
       proxy_header = v_proxy_header;
       request_path = v_request_path;
       response = v_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_health_check

[@@@deriving.end]

type https_health_check = {
  host : string prop option; [@option]
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
  proxy_header : string prop option; [@option]
  request_path : string prop option; [@option]
  response : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : https_health_check) -> ()

let yojson_of_https_health_check =
  (function
   | {
       host = v_host;
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
       proxy_header = v_proxy_header;
       request_path = v_request_path;
       response = v_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : https_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_https_health_check

[@@@deriving.end]

type log_config = { enable : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type ssl_health_check = {
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
  proxy_header : string prop option; [@option]
  request : string prop option; [@option]
  response : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_health_check) -> ()

let yojson_of_ssl_health_check =
  (function
   | {
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
       proxy_header = v_proxy_header;
       request = v_request;
       response = v_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
    : ssl_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_health_check

[@@@deriving.end]

type tcp_health_check = {
  port : float prop option; [@option]
  port_name : string prop option; [@option]
  port_specification : string prop option; [@option]
  proxy_header : string prop option; [@option]
  request : string prop option; [@option]
  response : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tcp_health_check) -> ()

let yojson_of_tcp_health_check =
  (function
   | {
       port = v_port;
       port_name = v_port_name;
       port_specification = v_port_specification;
       proxy_header = v_proxy_header;
       request = v_request;
       response = v_response;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_specification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_specification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
    : tcp_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tcp_health_check

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

type google_compute_health_check = {
  check_interval_sec : float prop option; [@option]
  description : string prop option; [@option]
  healthy_threshold : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  timeout_sec : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
  grpc_health_check : grpc_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http2_health_check : http2_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_health_check : http_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  https_health_check : https_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssl_health_check : ssl_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_health_check : tcp_health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_health_check) -> ()

let yojson_of_google_compute_health_check =
  (function
   | {
       check_interval_sec = v_check_interval_sec;
       description = v_description;
       healthy_threshold = v_healthy_threshold;
       id = v_id;
       name = v_name;
       project = v_project;
       timeout_sec = v_timeout_sec;
       unhealthy_threshold = v_unhealthy_threshold;
       grpc_health_check = v_grpc_health_check;
       http2_health_check = v_http2_health_check;
       http_health_check = v_http_health_check;
       https_health_check = v_https_health_check;
       log_config = v_log_config;
       ssl_health_check = v_ssl_health_check;
       tcp_health_check = v_tcp_health_check;
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
         if Stdlib.( = ) [] v_tcp_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tcp_health_check)
               v_tcp_health_check
           in
           let bnd = "tcp_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssl_health_check)
               v_ssl_health_check
           in
           let bnd = "ssl_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_config) v_log_config
           in
           let bnd = "log_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_https_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_https_health_check)
               v_https_health_check
           in
           let bnd = "https_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http_health_check)
               v_http_health_check
           in
           let bnd = "http_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http2_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http2_health_check)
               v_http2_health_check
           in
           let bnd = "http2_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grpc_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_grpc_health_check)
               v_grpc_health_check
           in
           let bnd = "grpc_health_check", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_sec", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
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
         match v_check_interval_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "check_interval_sec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_health_check

[@@@deriving.end]

let grpc_health_check ?grpc_service_name ?port ?port_name
    ?port_specification () : grpc_health_check =
  { grpc_service_name; port; port_name; port_specification }

let http2_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : http2_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let http_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : http_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let https_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : https_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let log_config ?enable () : log_config = { enable }

let ssl_health_check ?port ?port_name ?port_specification
    ?proxy_header ?request ?response () : ssl_health_check =
  {
    port;
    port_name;
    port_specification;
    proxy_header;
    request;
    response;
  }

let tcp_health_check ?port ?port_name ?port_specification
    ?proxy_header ?request ?response () : tcp_health_check =
  {
    port;
    port_name;
    port_specification;
    proxy_header;
    request;
    response;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_health_check ?check_interval_sec ?description
    ?healthy_threshold ?id ?project ?timeout_sec ?unhealthy_threshold
    ?(grpc_health_check = []) ?(http2_health_check = [])
    ?(http_health_check = []) ?(https_health_check = [])
    ?(log_config = []) ?(ssl_health_check = [])
    ?(tcp_health_check = []) ?timeouts ~name () :
    google_compute_health_check =
  {
    check_interval_sec;
    description;
    healthy_threshold;
    id;
    name;
    project;
    timeout_sec;
    unhealthy_threshold;
    grpc_health_check;
    http2_health_check;
    http_health_check;
    https_health_check;
    log_config;
    ssl_health_check;
    tcp_health_check;
    timeouts;
  }

type t = {
  tf_name : string;
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  type_ : string prop;
  unhealthy_threshold : float prop;
}

let make ?check_interval_sec ?description ?healthy_threshold ?id
    ?project ?timeout_sec ?unhealthy_threshold
    ?(grpc_health_check = []) ?(http2_health_check = [])
    ?(http_health_check = []) ?(https_health_check = [])
    ?(log_config = []) ?(ssl_health_check = [])
    ?(tcp_health_check = []) ?timeouts ~name __id =
  let __type = "google_compute_health_check" in
  let __attrs =
    ({
       tf_name = __id;
       check_interval_sec =
         Prop.computed __type __id "check_interval_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       healthy_threshold =
         Prop.computed __type __id "healthy_threshold";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       timeout_sec = Prop.computed __type __id "timeout_sec";
       type_ = Prop.computed __type __id "type";
       unhealthy_threshold =
         Prop.computed __type __id "unhealthy_threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_health_check
        (google_compute_health_check ?check_interval_sec ?description
           ?healthy_threshold ?id ?project ?timeout_sec
           ?unhealthy_threshold ~grpc_health_check
           ~http2_health_check ~http_health_check ~https_health_check
           ~log_config ~ssl_health_check ~tcp_health_check ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?check_interval_sec ?description
    ?healthy_threshold ?id ?project ?timeout_sec ?unhealthy_threshold
    ?(grpc_health_check = []) ?(http2_health_check = [])
    ?(http_health_check = []) ?(https_health_check = [])
    ?(log_config = []) ?(ssl_health_check = [])
    ?(tcp_health_check = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?check_interval_sec ?description ?healthy_threshold ?id
      ?project ?timeout_sec ?unhealthy_threshold ~grpc_health_check
      ~http2_health_check ~http_health_check ~https_health_check
      ~log_config ~ssl_health_check ~tcp_health_check ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
