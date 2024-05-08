(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__ingress_rule__origin_request__access = {
  aud_tag : string prop list option; [@option]
  required : bool prop option; [@option]
  team_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__ingress_rule__origin_request__access) -> ()

let yojson_of_config__ingress_rule__origin_request__access =
  (function
   | {
       aud_tag = v_aud_tag;
       required = v_required;
       team_name = v_team_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_team_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "team_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aud_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aud_tag", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__ingress_rule__origin_request__access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ingress_rule__origin_request__access

[@@@deriving.end]

type config__ingress_rule__origin_request__ip_rules = {
  allow : bool prop option; [@option]
  ports : float prop list option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config__ingress_rule__origin_request__ip_rules) -> ()

let yojson_of_config__ingress_rule__origin_request__ip_rules =
  (function
   | { allow = v_allow; ports = v_ports; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__ingress_rule__origin_request__ip_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ingress_rule__origin_request__ip_rules

[@@@deriving.end]

type config__ingress_rule__origin_request = {
  bastion_mode : bool prop option; [@option]
  ca_pool : string prop option; [@option]
  connect_timeout : string prop option; [@option]
  disable_chunked_encoding : bool prop option; [@option]
  http2_origin : bool prop option; [@option]
  http_host_header : string prop option; [@option]
  keep_alive_connections : float prop option; [@option]
  keep_alive_timeout : string prop option; [@option]
  no_happy_eyeballs : bool prop option; [@option]
  no_tls_verify : bool prop option; [@option]
  origin_server_name : string prop option; [@option]
  proxy_address : string prop option; [@option]
  proxy_port : float prop option; [@option]
  proxy_type : string prop option; [@option]
  tcp_keep_alive : string prop option; [@option]
  tls_timeout : string prop option; [@option]
  access : config__ingress_rule__origin_request__access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_rules : config__ingress_rule__origin_request__ip_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__ingress_rule__origin_request) -> ()

let yojson_of_config__ingress_rule__origin_request =
  (function
   | {
       bastion_mode = v_bastion_mode;
       ca_pool = v_ca_pool;
       connect_timeout = v_connect_timeout;
       disable_chunked_encoding = v_disable_chunked_encoding;
       http2_origin = v_http2_origin;
       http_host_header = v_http_host_header;
       keep_alive_connections = v_keep_alive_connections;
       keep_alive_timeout = v_keep_alive_timeout;
       no_happy_eyeballs = v_no_happy_eyeballs;
       no_tls_verify = v_no_tls_verify;
       origin_server_name = v_origin_server_name;
       proxy_address = v_proxy_address;
       proxy_port = v_proxy_port;
       proxy_type = v_proxy_type;
       tcp_keep_alive = v_tcp_keep_alive;
       tls_timeout = v_tls_timeout;
       access = v_access;
       ip_rules = v_ip_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__ingress_rule__origin_request__ip_rules)
               v_ip_rules
           in
           let bnd = "ip_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__ingress_rule__origin_request__access)
               v_access
           in
           let bnd = "access", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_keep_alive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tcp_keep_alive", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "proxy_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_server_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_server_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_tls_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_tls_verify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_happy_eyeballs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_happy_eyeballs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_alive_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keep_alive_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_alive_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "keep_alive_connections", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_host_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_origin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_chunked_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_chunked_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bastion_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bastion_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__ingress_rule__origin_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ingress_rule__origin_request

[@@@deriving.end]

type config__ingress_rule = {
  hostname : string prop option; [@option]
  path : string prop option; [@option]
  service : string prop;
  origin_request : config__ingress_rule__origin_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__ingress_rule) -> ()

let yojson_of_config__ingress_rule =
  (function
   | {
       hostname = v_hostname;
       path = v_path;
       service = v_service;
       origin_request = v_origin_request;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_origin_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__ingress_rule__origin_request)
               v_origin_request
           in
           let bnd = "origin_request", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__ingress_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ingress_rule

[@@@deriving.end]

type config__origin_request__access = {
  aud_tag : string prop list option; [@option]
  required : bool prop option; [@option]
  team_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__origin_request__access) -> ()

let yojson_of_config__origin_request__access =
  (function
   | {
       aud_tag = v_aud_tag;
       required = v_required;
       team_name = v_team_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_team_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "team_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aud_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "aud_tag", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__origin_request__access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__origin_request__access

[@@@deriving.end]

type config__origin_request__ip_rules = {
  allow : bool prop option; [@option]
  ports : float prop list option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__origin_request__ip_rules) -> ()

let yojson_of_config__origin_request__ip_rules =
  (function
   | { allow = v_allow; ports = v_ports; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__origin_request__ip_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__origin_request__ip_rules

[@@@deriving.end]

type config__origin_request = {
  bastion_mode : bool prop option; [@option]
  ca_pool : string prop option; [@option]
  connect_timeout : string prop option; [@option]
  disable_chunked_encoding : bool prop option; [@option]
  http2_origin : bool prop option; [@option]
  http_host_header : string prop option; [@option]
  keep_alive_connections : float prop option; [@option]
  keep_alive_timeout : string prop option; [@option]
  no_happy_eyeballs : bool prop option; [@option]
  no_tls_verify : bool prop option; [@option]
  origin_server_name : string prop option; [@option]
  proxy_address : string prop option; [@option]
  proxy_port : float prop option; [@option]
  proxy_type : string prop option; [@option]
  tcp_keep_alive : string prop option; [@option]
  tls_timeout : string prop option; [@option]
  access : config__origin_request__access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ip_rules : config__origin_request__ip_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__origin_request) -> ()

let yojson_of_config__origin_request =
  (function
   | {
       bastion_mode = v_bastion_mode;
       ca_pool = v_ca_pool;
       connect_timeout = v_connect_timeout;
       disable_chunked_encoding = v_disable_chunked_encoding;
       http2_origin = v_http2_origin;
       http_host_header = v_http_host_header;
       keep_alive_connections = v_keep_alive_connections;
       keep_alive_timeout = v_keep_alive_timeout;
       no_happy_eyeballs = v_no_happy_eyeballs;
       no_tls_verify = v_no_tls_verify;
       origin_server_name = v_origin_server_name;
       proxy_address = v_proxy_address;
       proxy_port = v_proxy_port;
       proxy_type = v_proxy_type;
       tcp_keep_alive = v_tcp_keep_alive;
       tls_timeout = v_tls_timeout;
       access = v_access;
       ip_rules = v_ip_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__origin_request__ip_rules)
               v_ip_rules
           in
           let bnd = "ip_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__origin_request__access)
               v_access
           in
           let bnd = "access", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_keep_alive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tcp_keep_alive", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "proxy_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_server_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_server_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_tls_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_tls_verify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_happy_eyeballs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_happy_eyeballs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_alive_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keep_alive_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_alive_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "keep_alive_connections", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_host_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_host_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http2_origin", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_chunked_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_chunked_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ca_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ca_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bastion_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bastion_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__origin_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__origin_request

[@@@deriving.end]

type config__warp_routing = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__warp_routing) -> ()

let yojson_of_config__warp_routing =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__warp_routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__warp_routing

[@@@deriving.end]

type config = {
  ingress_rule : config__ingress_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  origin_request : config__origin_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  warp_routing : config__warp_routing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       ingress_rule = v_ingress_rule;
       origin_request = v_origin_request;
       warp_routing = v_warp_routing;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_warp_routing then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__warp_routing)
               v_warp_routing
           in
           let bnd = "warp_routing", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_origin_request then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__origin_request)
               v_origin_request
           in
           let bnd = "origin_request", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__ingress_rule)
               v_ingress_rule
           in
           let bnd = "ingress_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type cloudflare_tunnel_config = {
  account_id : string prop;
  id : string prop option; [@option]
  tunnel_id : string prop;
  config : config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel_config) -> ()

let yojson_of_cloudflare_tunnel_config =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       tunnel_id = v_tunnel_id;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tunnel_id in
         ("tunnel_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_tunnel_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tunnel_config

[@@@deriving.end]

let config__ingress_rule__origin_request__access ?aud_tag ?required
    ?team_name () : config__ingress_rule__origin_request__access =
  { aud_tag; required; team_name }

let config__ingress_rule__origin_request__ip_rules ?allow ?ports
    ?prefix () : config__ingress_rule__origin_request__ip_rules =
  { allow; ports; prefix }

let config__ingress_rule__origin_request ?bastion_mode ?ca_pool
    ?connect_timeout ?disable_chunked_encoding ?http2_origin
    ?http_host_header ?keep_alive_connections ?keep_alive_timeout
    ?no_happy_eyeballs ?no_tls_verify ?origin_server_name
    ?proxy_address ?proxy_port ?proxy_type ?tcp_keep_alive
    ?tls_timeout ?(access = []) ~ip_rules () :
    config__ingress_rule__origin_request =
  {
    bastion_mode;
    ca_pool;
    connect_timeout;
    disable_chunked_encoding;
    http2_origin;
    http_host_header;
    keep_alive_connections;
    keep_alive_timeout;
    no_happy_eyeballs;
    no_tls_verify;
    origin_server_name;
    proxy_address;
    proxy_port;
    proxy_type;
    tcp_keep_alive;
    tls_timeout;
    access;
    ip_rules;
  }

let config__ingress_rule ?hostname ?path ?(origin_request = [])
    ~service () : config__ingress_rule =
  { hostname; path; service; origin_request }

let config__origin_request__access ?aud_tag ?required ?team_name () :
    config__origin_request__access =
  { aud_tag; required; team_name }

let config__origin_request__ip_rules ?allow ?ports ?prefix () :
    config__origin_request__ip_rules =
  { allow; ports; prefix }

let config__origin_request ?bastion_mode ?ca_pool ?connect_timeout
    ?disable_chunked_encoding ?http2_origin ?http_host_header
    ?keep_alive_connections ?keep_alive_timeout ?no_happy_eyeballs
    ?no_tls_verify ?origin_server_name ?proxy_address ?proxy_port
    ?proxy_type ?tcp_keep_alive ?tls_timeout ?(access = []) ~ip_rules
    () : config__origin_request =
  {
    bastion_mode;
    ca_pool;
    connect_timeout;
    disable_chunked_encoding;
    http2_origin;
    http_host_header;
    keep_alive_connections;
    keep_alive_timeout;
    no_happy_eyeballs;
    no_tls_verify;
    origin_server_name;
    proxy_address;
    proxy_port;
    proxy_type;
    tcp_keep_alive;
    tls_timeout;
    access;
    ip_rules;
  }

let config__warp_routing ?enabled () : config__warp_routing =
  { enabled }

let config ?(origin_request = []) ?(warp_routing = []) ~ingress_rule
    () : config =
  { ingress_rule; origin_request; warp_routing }

let cloudflare_tunnel_config ?id ~account_id ~tunnel_id ~config () :
    cloudflare_tunnel_config =
  { account_id; id; tunnel_id; config }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  tunnel_id : string prop;
}

let make ?id ~account_id ~tunnel_id ~config __id =
  let __type = "cloudflare_tunnel_config" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       tunnel_id = Prop.computed __type __id "tunnel_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel_config
        (cloudflare_tunnel_config ?id ~account_id ~tunnel_id ~config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~tunnel_id ~config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~tunnel_id ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
