(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__logging__access_log__file__format__json = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file__format__json) -> ()

let yojson_of_spec__logging__access_log__file__format__json =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file__format__json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file__format__json

[@@@deriving.end]

type spec__logging__access_log__file__format = {
  json : spec__logging__access_log__file__format__json list;
  text : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file__format) -> ()

let yojson_of_spec__logging__access_log__file__format =
  (function
   | { json = v_json; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__logging__access_log__file__format__json
             v_json
         in
         ("json", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file__format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file__format

[@@@deriving.end]

type spec__logging__access_log__file = {
  format : spec__logging__access_log__file__format list;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file) -> ()

let yojson_of_spec__logging__access_log__file =
  (function
   | { format = v_format; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__logging__access_log__file__format
             v_format
         in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file

[@@@deriving.end]

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log) -> ()

let yojson_of_spec__logging__access_log =
  (function
   | { file = v_file } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging__access_log__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log

[@@@deriving.end]

type spec__logging = { access_log : spec__logging__access_log list }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging) -> ()

let yojson_of_spec__logging =
  (function
   | { access_log = v_access_log } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging__access_log
             v_access_log
         in
         ("access_log", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging

[@@@deriving.end]

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust__sds) -> ()

let yojson_of_spec__listener__tls__validation__trust__sds =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust__sds

[@@@deriving.end]

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust__file) -> ()

let yojson_of_spec__listener__tls__validation__trust__file =
  (function
   | { certificate_chain = v_certificate_chain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust__file

[@@@deriving.end]

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
  sds : spec__listener__tls__validation__trust__sds list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust) -> ()

let yojson_of_spec__listener__tls__validation__trust =
  (function
   | { file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust

[@@@deriving.end]

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__listener__tls__validation__subject_alternative_names__match) ->
  ()

let yojson_of_spec__listener__tls__validation__subject_alternative_names__match
    =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exact
         in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__subject_alternative_names__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__listener__tls__validation__subject_alternative_names__match

[@@@deriving.end]

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__listener__tls__validation__subject_alternative_names) ->
  ()

let yojson_of_spec__listener__tls__validation__subject_alternative_names
    =
  (function
   | { match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__subject_alternative_names__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__listener__tls__validation__subject_alternative_names

[@@@deriving.end]

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
  trust : spec__listener__tls__validation__trust list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation) -> ()

let yojson_of_spec__listener__tls__validation =
  (function
   | {
       subject_alternative_names = v_subject_alternative_names;
       trust = v_trust;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust v_trust
         in
         ("trust", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation

[@@@deriving.end]

type spec__listener__tls__certificate__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__sds) -> ()

let yojson_of_spec__listener__tls__certificate__sds =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__sds

[@@@deriving.end]

type spec__listener__tls__certificate__file = {
  certificate_chain : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__file) -> ()

let yojson_of_spec__listener__tls__certificate__file =
  (function
   | {
       certificate_chain = v_certificate_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__file

[@@@deriving.end]

type spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__acm) -> ()

let yojson_of_spec__listener__tls__certificate__acm =
  (function
   | { certificate_arn = v_certificate_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__acm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__acm

[@@@deriving.end]

type spec__listener__tls__certificate = {
  acm : spec__listener__tls__certificate__acm list;
  file : spec__listener__tls__certificate__file list;
  sds : spec__listener__tls__certificate__sds list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate) -> ()

let yojson_of_spec__listener__tls__certificate =
  (function
   | { acm = v_acm; file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__sds v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__file v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__acm v_acm
         in
         ("acm", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate

[@@@deriving.end]

type spec__listener__tls = {
  certificate : spec__listener__tls__certificate list;
  mode : string prop;
  validation : spec__listener__tls__validation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls) -> ()

let yojson_of_spec__listener__tls =
  (function
   | {
       certificate = v_certificate;
       mode = v_mode;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls__validation
             v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls

[@@@deriving.end]

type spec__listener__port_mapping = {
  port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__port_mapping) -> ()

let yojson_of_spec__listener__port_mapping =
  (function
   | { port = v_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__port_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__port_mapping

[@@@deriving.end]

type spec__listener__health_check = {
  healthy_threshold : float prop;
  interval_millis : float prop;
  path : string prop;
  port : float prop;
  protocol : string prop;
  timeout_millis : float prop;
  unhealthy_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__health_check) -> ()

let yojson_of_spec__listener__health_check =
  (function
   | {
       healthy_threshold = v_healthy_threshold;
       interval_millis = v_interval_millis;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       timeout_millis = v_timeout_millis;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_unhealthy_threshold
         in
         ("unhealthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout_millis in
         ("timeout_millis", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
           yojson_of_prop yojson_of_float v_interval_millis
         in
         ("interval_millis", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_healthy_threshold
         in
         ("healthy_threshold", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__health_check

[@@@deriving.end]

type spec__listener__connection_pool__http2 = {
  max_requests : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__http2) -> ()

let yojson_of_spec__listener__connection_pool__http2 =
  (function
   | { max_requests = v_max_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_requests in
         ("max_requests", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__http2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__http2

[@@@deriving.end]

type spec__listener__connection_pool__http = {
  max_connections : float prop;
  max_pending_requests : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__http) -> ()

let yojson_of_spec__listener__connection_pool__http =
  (function
   | {
       max_connections = v_max_connections;
       max_pending_requests = v_max_pending_requests;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_pending_requests
         in
         ("max_pending_requests", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_connections
         in
         ("max_connections", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__http

[@@@deriving.end]

type spec__listener__connection_pool__grpc = {
  max_requests : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__grpc) -> ()

let yojson_of_spec__listener__connection_pool__grpc =
  (function
   | { max_requests = v_max_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_requests in
         ("max_requests", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__grpc

[@@@deriving.end]

type spec__listener__connection_pool = {
  grpc : spec__listener__connection_pool__grpc list;
  http : spec__listener__connection_pool__http list;
  http2 : spec__listener__connection_pool__http2 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool) -> ()

let yojson_of_spec__listener__connection_pool =
  (function
   | { grpc = v_grpc; http = v_http; http2 = v_http2 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__http2 v_http2
         in
         ("http2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__http v_http
         in
         ("http", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__grpc v_grpc
         in
         ("grpc", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool

[@@@deriving.end]

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
  health_check : spec__listener__health_check list;
  port_mapping : spec__listener__port_mapping list;
  tls : spec__listener__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener) -> ()

let yojson_of_spec__listener =
  (function
   | {
       connection_pool = v_connection_pool;
       health_check = v_health_check;
       port_mapping = v_port_mapping;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls v_tls
         in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__port_mapping
             v_port_mapping
         in
         ("port_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__health_check
             v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__connection_pool
             v_connection_pool
         in
         ("connection_pool", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__sds) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__file) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file
    =
  (function
   | { certificate_chain = v_certificate_chain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__acm) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm
    =
  (function
   | { certificate_authority_arns = v_certificate_authority_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificate_authority_arns
         in
         ("certificate_authority_arns", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__acm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust
    =
  (function
   | { acm = v_acm; file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm
             v_acm
         in
         ("acm", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exact
         in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__subject_alternative_names) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    =
  (function
   | { match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__backend_defaults__client_policy__tls__validation) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation
    =
  (function
   | {
       subject_alternative_names = v_subject_alternative_names;
       trust = v_trust;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust
             v_trust
         in
         ("trust", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__certificate__sds) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__certificate__file) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate__file
    =
  (function
   | {
       certificate_chain = v_certificate_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate__file

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate = {
  file :
    spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__backend_defaults__client_policy__tls__certificate) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate
    =
  (function
   | { file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls = {
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
  enforce : bool prop;
  ports : float prop list;
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults__client_policy__tls) -> ()

let yojson_of_spec__backend_defaults__client_policy__tls =
  (function
   | {
       certificate = v_certificate;
       enforce = v_enforce;
       ports = v_ports;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation
             v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_float) v_ports
         in
         ("ports", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enforce in
         ("enforce", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults__client_policy__tls

[@@@deriving.end]

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults__client_policy) -> ()

let yojson_of_spec__backend_defaults__client_policy =
  (function
   | { tls = v_tls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls
             v_tls
         in
         ("tls", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults__client_policy

[@@@deriving.end]

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults) -> ()

let yojson_of_spec__backend_defaults =
  (function
   | { client_policy = v_client_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy
             v_client_policy
         in
         ("client_policy", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults

[@@@deriving.end]

type spec = {
  backend_defaults : spec__backend_defaults list;
  listener : spec__listener list;
  logging : spec__logging list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       backend_defaults = v_backend_defaults;
       listener = v_listener;
       logging = v_logging;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging v_logging
         in
         ("logging", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener v_listener
         in
         ("listener", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__backend_defaults
             v_backend_defaults
         in
         ("backend_defaults", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_virtual_gateway = {
  id : string prop option; [@option]
  mesh_name : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_virtual_gateway) -> ()

let yojson_of_aws_appmesh_virtual_gateway =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mesh_name in
         ("mesh_name", arg) :: bnds
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
    : aws_appmesh_virtual_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_virtual_gateway

[@@@deriving.end]

let aws_appmesh_virtual_gateway ?id ?tags ~mesh_name ~name () :
    aws_appmesh_virtual_gateway =
  { id; mesh_name; name; tags }

type t = {
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  spec : spec list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~mesh_name ~name __id =
  let __type = "aws_appmesh_virtual_gateway" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       spec = Prop.computed __type __id "spec";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_gateway
        (aws_appmesh_virtual_gateway ?id ?tags ~mesh_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~mesh_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~mesh_name ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
