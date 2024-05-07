(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type grpc_health_check = {
  grpc_service_name : string prop;
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_grpc_service_name
         in
         ("grpc_service_name", arg) :: bnds
       in
       `Assoc bnds
    : grpc_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grpc_health_check

[@@@deriving.end]

type http2_health_check = {
  host : string prop;
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
  proxy_header : string prop;
  request_path : string prop;
  response : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_path in
         ("request_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_header in
         ("proxy_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : http2_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http2_health_check

[@@@deriving.end]

type http_health_check = {
  host : string prop;
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
  proxy_header : string prop;
  request_path : string prop;
  response : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_path in
         ("request_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_header in
         ("proxy_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : http_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http_health_check

[@@@deriving.end]

type https_health_check = {
  host : string prop;
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
  proxy_header : string prop;
  request_path : string prop;
  response : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_path in
         ("request_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_header in
         ("proxy_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : https_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_https_health_check

[@@@deriving.end]

type log_config = { enable : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type ssl_health_check = {
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
  proxy_header : string prop;
  request : string prop;
  response : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request in
         ("request", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_header in
         ("proxy_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : ssl_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_health_check

[@@@deriving.end]

type tcp_health_check = {
  port : float prop;
  port_name : string prop;
  port_specification : string prop;
  proxy_header : string prop;
  request : string prop;
  response : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_response in
         ("response", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request in
         ("request", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_header in
         ("proxy_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_port_specification
         in
         ("port_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_name in
         ("port_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : tcp_health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tcp_health_check

[@@@deriving.end]

type google_compute_health_check = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_health_check) -> ()

let yojson_of_google_compute_health_check =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_health_check

[@@@deriving.end]

let google_compute_health_check ?id ?project ~name () :
    google_compute_health_check =
  { id; name; project }

type t = {
  tf_name : string;
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  grpc_health_check : grpc_health_check list prop;
  healthy_threshold : float prop;
  http2_health_check : http2_health_check list prop;
  http_health_check : http_health_check list prop;
  https_health_check : https_health_check list prop;
  id : string prop;
  log_config : log_config list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  ssl_health_check : ssl_health_check list prop;
  tcp_health_check : tcp_health_check list prop;
  timeout_sec : float prop;
  type_ : string prop;
  unhealthy_threshold : float prop;
}

let make ?id ?project ~name __id =
  let __type = "google_compute_health_check" in
  let __attrs =
    ({
       tf_name = __id;
       check_interval_sec =
         Prop.computed __type __id "check_interval_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       grpc_health_check =
         Prop.computed __type __id "grpc_health_check";
       healthy_threshold =
         Prop.computed __type __id "healthy_threshold";
       http2_health_check =
         Prop.computed __type __id "http2_health_check";
       http_health_check =
         Prop.computed __type __id "http_health_check";
       https_health_check =
         Prop.computed __type __id "https_health_check";
       id = Prop.computed __type __id "id";
       log_config = Prop.computed __type __id "log_config";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       ssl_health_check =
         Prop.computed __type __id "ssl_health_check";
       tcp_health_check =
         Prop.computed __type __id "tcp_health_check";
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
        (google_compute_health_check ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
