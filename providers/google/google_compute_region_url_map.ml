(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origin_regexes : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  disabled : bool prop option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__cors_policy) -> ()

let yojson_of_default_route_action__cors_policy =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origin_regexes = v_allow_origin_regexes;
       allow_origins = v_allow_origins;
       disabled = v_disabled;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origin_regexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origin_regexes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__cors_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__cors_policy

[@@@deriving.end]

type default_route_action__fault_injection_policy__abort = {
  http_status : float prop option; [@option]
  percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_route_action__fault_injection_policy__abort) -> ()

let yojson_of_default_route_action__fault_injection_policy__abort =
  (function
   | { http_status = v_http_status; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__fault_injection_policy__abort ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__fault_injection_policy__abort

[@@@deriving.end]

type default_route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
  seconds : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_route_action__fault_injection_policy__delay__fixed_delay) ->
  ()

let yojson_of_default_route_action__fault_injection_policy__delay__fixed_delay
    =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__fault_injection_policy__delay__fixed_delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_route_action__fault_injection_policy__delay__fixed_delay

[@@@deriving.end]

type default_route_action__fault_injection_policy__delay = {
  percentage : float prop option; [@option]
  fixed_delay :
    default_route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_route_action__fault_injection_policy__delay) -> ()

let yojson_of_default_route_action__fault_injection_policy__delay =
  (function
   | { percentage = v_percentage; fixed_delay = v_fixed_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__fault_injection_policy__delay__fixed_delay
             v_fixed_delay
         in
         ("fixed_delay", arg) :: bnds
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__fault_injection_policy__delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__fault_injection_policy__delay

[@@@deriving.end]

type default_route_action__fault_injection_policy = {
  abort : default_route_action__fault_injection_policy__abort list;
  delay : default_route_action__fault_injection_policy__delay list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__fault_injection_policy) -> ()

let yojson_of_default_route_action__fault_injection_policy =
  (function
   | { abort = v_abort; delay = v_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__fault_injection_policy__delay
             v_delay
         in
         ("delay", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__fault_injection_policy__abort
             v_abort
         in
         ("abort", arg) :: bnds
       in
       `Assoc bnds
    : default_route_action__fault_injection_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__fault_injection_policy

[@@@deriving.end]

type default_route_action__request_mirror_policy = {
  backend_service : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__request_mirror_policy) -> ()

let yojson_of_default_route_action__request_mirror_policy =
  (function
   | { backend_service = v_backend_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_backend_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__request_mirror_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__request_mirror_policy

[@@@deriving.end]

type default_route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
  seconds : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_route_action__retry_policy__per_try_timeout) -> ()

let yojson_of_default_route_action__retry_policy__per_try_timeout =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__retry_policy__per_try_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__retry_policy__per_try_timeout

[@@@deriving.end]

type default_route_action__retry_policy = {
  num_retries : float prop option; [@option]
  retry_conditions : string prop list option; [@option]
  per_try_timeout :
    default_route_action__retry_policy__per_try_timeout list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__retry_policy) -> ()

let yojson_of_default_route_action__retry_policy =
  (function
   | {
       num_retries = v_num_retries;
       retry_conditions = v_retry_conditions;
       per_try_timeout = v_per_try_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__retry_policy__per_try_timeout
             v_per_try_timeout
         in
         ("per_try_timeout", arg) :: bnds
       in
       let bnds =
         match v_retry_conditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retry_conditions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__retry_policy

[@@@deriving.end]

type default_route_action__timeout = {
  nanos : float prop option; [@option]
  seconds : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__timeout) -> ()

let yojson_of_default_route_action__timeout =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__timeout

[@@@deriving.end]

type default_route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
  path_prefix_rewrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action__url_rewrite) -> ()

let yojson_of_default_route_action__url_rewrite =
  (function
   | {
       host_rewrite = v_host_rewrite;
       path_prefix_rewrite = v_path_prefix_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path_prefix_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix_rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_rewrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__url_rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__url_rewrite

[@@@deriving.end]

type default_route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop option; [@option]
  header_value : string prop option; [@option]
  replace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_route_action__weighted_backend_services__header_action__request_headers_to_add) ->
  ()

let yojson_of_default_route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__weighted_backend_services__header_action__request_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_route_action__weighted_backend_services__header_action__request_headers_to_add

[@@@deriving.end]

type default_route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop option; [@option]
  header_value : string prop option; [@option]
  replace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_route_action__weighted_backend_services__header_action__response_headers_to_add) ->
  ()

let yojson_of_default_route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__weighted_backend_services__header_action__response_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_route_action__weighted_backend_services__header_action__response_headers_to_add

[@@@deriving.end]

type default_route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
  response_headers_to_remove : string prop list option; [@option]
  request_headers_to_add :
    default_route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    default_route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_route_action__weighted_backend_services__header_action) ->
  ()

let yojson_of_default_route_action__weighted_backend_services__header_action
    =
  (function
   | {
       request_headers_to_remove = v_request_headers_to_remove;
       response_headers_to_remove = v_response_headers_to_remove;
       request_headers_to_add = v_request_headers_to_add;
       response_headers_to_add = v_response_headers_to_add;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__weighted_backend_services__header_action__response_headers_to_add
             v_response_headers_to_add
         in
         ("response_headers_to_add", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__weighted_backend_services__header_action__request_headers_to_add
             v_request_headers_to_add
         in
         ("request_headers_to_add", arg) :: bnds
       in
       let bnds =
         match v_response_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_headers_to_remove", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "request_headers_to_remove", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__weighted_backend_services__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_route_action__weighted_backend_services__header_action

[@@@deriving.end]

type default_route_action__weighted_backend_services = {
  backend_service : string prop option; [@option]
  weight : float prop option; [@option]
  header_action :
    default_route_action__weighted_backend_services__header_action
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_route_action__weighted_backend_services) -> ()

let yojson_of_default_route_action__weighted_backend_services =
  (function
   | {
       backend_service = v_backend_service;
       weight = v_weight;
       header_action = v_header_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__weighted_backend_services__header_action
             v_header_action
         in
         ("header_action", arg) :: bnds
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_route_action__weighted_backend_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action__weighted_backend_services

[@@@deriving.end]

type default_route_action = {
  cors_policy : default_route_action__cors_policy list;
  fault_injection_policy :
    default_route_action__fault_injection_policy list;
  request_mirror_policy :
    default_route_action__request_mirror_policy list;
  retry_policy : default_route_action__retry_policy list;
  timeout : default_route_action__timeout list;
  url_rewrite : default_route_action__url_rewrite list;
  weighted_backend_services :
    default_route_action__weighted_backend_services list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_route_action) -> ()

let yojson_of_default_route_action =
  (function
   | {
       cors_policy = v_cors_policy;
       fault_injection_policy = v_fault_injection_policy;
       request_mirror_policy = v_request_mirror_policy;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
       url_rewrite = v_url_rewrite;
       weighted_backend_services = v_weighted_backend_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__weighted_backend_services
             v_weighted_backend_services
         in
         ("weighted_backend_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_route_action__url_rewrite
             v_url_rewrite
         in
         ("url_rewrite", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_route_action__timeout
             v_timeout
         in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__retry_policy
             v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__request_mirror_policy
             v_request_mirror_policy
         in
         ("request_mirror_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_route_action__fault_injection_policy
             v_fault_injection_policy
         in
         ("fault_injection_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_route_action__cors_policy
             v_cors_policy
         in
         ("cors_policy", arg) :: bnds
       in
       `Assoc bnds
    : default_route_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_route_action

[@@@deriving.end]

type default_url_redirect = {
  host_redirect : string prop option; [@option]
  https_redirect : bool prop option; [@option]
  path_redirect : string prop option; [@option]
  prefix_redirect : string prop option; [@option]
  redirect_response_code : string prop option; [@option]
  strip_query : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_url_redirect) -> ()

let yojson_of_default_url_redirect =
  (function
   | {
       host_redirect = v_host_redirect;
       https_redirect = v_https_redirect;
       path_redirect = v_path_redirect;
       prefix_redirect = v_prefix_redirect;
       redirect_response_code = v_redirect_response_code;
       strip_query = v_strip_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_strip_query in
         ("strip_query", arg) :: bnds
       in
       let bnds =
         match v_redirect_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_redirect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_url_redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_url_redirect

[@@@deriving.end]

type host_rule = {
  description : string prop option; [@option]
  hosts : string prop list;
  path_matcher : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : host_rule) -> ()

let yojson_of_host_rule =
  (function
   | {
       description = v_description;
       hosts = v_hosts;
       path_matcher = v_path_matcher;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_matcher in
         ("path_matcher", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_hosts
         in
         ("hosts", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : host_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_host_rule

[@@@deriving.end]

type path_matcher__default_url_redirect = {
  host_redirect : string prop option; [@option]
  https_redirect : bool prop option; [@option]
  path_redirect : string prop option; [@option]
  prefix_redirect : string prop option; [@option]
  redirect_response_code : string prop option; [@option]
  strip_query : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__default_url_redirect) -> ()

let yojson_of_path_matcher__default_url_redirect =
  (function
   | {
       host_redirect = v_host_redirect;
       https_redirect = v_https_redirect;
       path_redirect = v_path_redirect;
       prefix_redirect = v_prefix_redirect;
       redirect_response_code = v_redirect_response_code;
       strip_query = v_strip_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_strip_query in
         ("strip_query", arg) :: bnds
       in
       let bnds =
         match v_redirect_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_redirect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__default_url_redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__default_url_redirect

[@@@deriving.end]

type path_matcher__path_rule__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origin_regexes : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  disabled : bool prop;
  expose_headers : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__path_rule__route_action__cors_policy) -> ()

let yojson_of_path_matcher__path_rule__route_action__cors_policy =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origin_regexes = v_allow_origin_regexes;
       allow_origins = v_allow_origins;
       disabled = v_disabled;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_disabled in
         ("disabled", arg) :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origin_regexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origin_regexes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__cors_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__route_action__cors_policy

[@@@deriving.end]

type path_matcher__path_rule__route_action__fault_injection_policy__abort = {
  http_status : float prop;
  percentage : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__fault_injection_policy__abort) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__abort
    =
  (function
   | { http_status = v_http_status; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percentage in
         ("percentage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_http_status in
         ("http_status", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__fault_injection_policy__abort ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__abort

[@@@deriving.end]

type path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay

[@@@deriving.end]

type path_matcher__path_rule__route_action__fault_injection_policy__delay = {
  percentage : float prop;
  fixed_delay :
    path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__fault_injection_policy__delay) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay
    =
  (function
   | { percentage = v_percentage; fixed_delay = v_fixed_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
             v_fixed_delay
         in
         ("fixed_delay", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percentage in
         ("percentage", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__fault_injection_policy__delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay

[@@@deriving.end]

type path_matcher__path_rule__route_action__fault_injection_policy = {
  abort :
    path_matcher__path_rule__route_action__fault_injection_policy__abort
    list;
  delay :
    path_matcher__path_rule__route_action__fault_injection_policy__delay
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__fault_injection_policy) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__fault_injection_policy
    =
  (function
   | { abort = v_abort; delay = v_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__delay
             v_delay
         in
         ("delay", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__fault_injection_policy__abort
             v_abort
         in
         ("abort", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__fault_injection_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__fault_injection_policy

[@@@deriving.end]

type path_matcher__path_rule__route_action__request_mirror_policy = {
  backend_service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__request_mirror_policy) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__request_mirror_policy
    =
  (function
   | { backend_service = v_backend_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__request_mirror_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__request_mirror_policy

[@@@deriving.end]

type path_matcher__path_rule__route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__retry_policy__per_try_timeout) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__retry_policy__per_try_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__retry_policy__per_try_timeout

[@@@deriving.end]

type path_matcher__path_rule__route_action__retry_policy = {
  num_retries : float prop option; [@option]
  retry_conditions : string prop list option; [@option]
  per_try_timeout :
    path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__path_rule__route_action__retry_policy) -> ()

let yojson_of_path_matcher__path_rule__route_action__retry_policy =
  (function
   | {
       num_retries = v_num_retries;
       retry_conditions = v_retry_conditions;
       per_try_timeout = v_per_try_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__retry_policy__per_try_timeout
             v_per_try_timeout
         in
         ("per_try_timeout", arg) :: bnds
       in
       let bnds =
         match v_retry_conditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retry_conditions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_retries", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__route_action__retry_policy

[@@@deriving.end]

type path_matcher__path_rule__route_action__timeout = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__path_rule__route_action__timeout) -> ()

let yojson_of_path_matcher__path_rule__route_action__timeout =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__route_action__timeout

[@@@deriving.end]

type path_matcher__path_rule__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
  path_prefix_rewrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__path_rule__route_action__url_rewrite) -> ()

let yojson_of_path_matcher__path_rule__route_action__url_rewrite =
  (function
   | {
       host_rewrite = v_host_rewrite;
       path_prefix_rewrite = v_path_prefix_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path_prefix_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix_rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_rewrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__url_rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__route_action__url_rewrite

[@@@deriving.end]

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add

[@@@deriving.end]

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add

[@@@deriving.end]

type path_matcher__path_rule__route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
  response_headers_to_remove : string prop list option; [@option]
  request_headers_to_add :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__weighted_backend_services__header_action) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action
    =
  (function
   | {
       request_headers_to_remove = v_request_headers_to_remove;
       response_headers_to_remove = v_response_headers_to_remove;
       request_headers_to_add = v_request_headers_to_add;
       response_headers_to_add = v_response_headers_to_add;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
             v_response_headers_to_add
         in
         ("response_headers_to_add", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
             v_request_headers_to_add
         in
         ("request_headers_to_add", arg) :: bnds
       in
       let bnds =
         match v_response_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_headers_to_remove", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "request_headers_to_remove", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__weighted_backend_services__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action

[@@@deriving.end]

type path_matcher__path_rule__route_action__weighted_backend_services = {
  backend_service : string prop;
  weight : float prop;
  header_action :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__path_rule__route_action__weighted_backend_services) ->
  ()

let yojson_of_path_matcher__path_rule__route_action__weighted_backend_services
    =
  (function
   | {
       backend_service = v_backend_service;
       weight = v_weight;
       header_action = v_header_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__weighted_backend_services__header_action
             v_header_action
         in
         ("header_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action__weighted_backend_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__path_rule__route_action__weighted_backend_services

[@@@deriving.end]

type path_matcher__path_rule__route_action = {
  cors_policy :
    path_matcher__path_rule__route_action__cors_policy list;
  fault_injection_policy :
    path_matcher__path_rule__route_action__fault_injection_policy
    list;
  request_mirror_policy :
    path_matcher__path_rule__route_action__request_mirror_policy list;
  retry_policy :
    path_matcher__path_rule__route_action__retry_policy list;
  timeout : path_matcher__path_rule__route_action__timeout list;
  url_rewrite :
    path_matcher__path_rule__route_action__url_rewrite list;
  weighted_backend_services :
    path_matcher__path_rule__route_action__weighted_backend_services
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__path_rule__route_action) -> ()

let yojson_of_path_matcher__path_rule__route_action =
  (function
   | {
       cors_policy = v_cors_policy;
       fault_injection_policy = v_fault_injection_policy;
       request_mirror_policy = v_request_mirror_policy;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
       url_rewrite = v_url_rewrite;
       weighted_backend_services = v_weighted_backend_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__weighted_backend_services
             v_weighted_backend_services
         in
         ("weighted_backend_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__url_rewrite
             v_url_rewrite
         in
         ("url_rewrite", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__timeout
             v_timeout
         in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__retry_policy
             v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__request_mirror_policy
             v_request_mirror_policy
         in
         ("request_mirror_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__fault_injection_policy
             v_fault_injection_policy
         in
         ("fault_injection_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action__cors_policy
             v_cors_policy
         in
         ("cors_policy", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__route_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__route_action

[@@@deriving.end]

type path_matcher__path_rule__url_redirect = {
  host_redirect : string prop option; [@option]
  https_redirect : bool prop option; [@option]
  path_redirect : string prop option; [@option]
  prefix_redirect : string prop option; [@option]
  redirect_response_code : string prop option; [@option]
  strip_query : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__path_rule__url_redirect) -> ()

let yojson_of_path_matcher__path_rule__url_redirect =
  (function
   | {
       host_redirect = v_host_redirect;
       https_redirect = v_https_redirect;
       path_redirect = v_path_redirect;
       prefix_redirect = v_prefix_redirect;
       redirect_response_code = v_redirect_response_code;
       strip_query = v_strip_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_strip_query in
         ("strip_query", arg) :: bnds
       in
       let bnds =
         match v_redirect_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_redirect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule__url_redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule__url_redirect

[@@@deriving.end]

type path_matcher__path_rule = {
  paths : string prop list;
  service : string prop option; [@option]
  route_action : path_matcher__path_rule__route_action list;
  url_redirect : path_matcher__path_rule__url_redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__path_rule) -> ()

let yojson_of_path_matcher__path_rule =
  (function
   | {
       paths = v_paths;
       service = v_service;
       route_action = v_route_action;
       url_redirect = v_url_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__url_redirect
             v_url_redirect
         in
         ("url_redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__path_rule__route_action
             v_route_action
         in
         ("route_action", arg) :: bnds
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_paths
         in
         ("paths", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__path_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__path_rule

[@@@deriving.end]

type path_matcher__route_rules__header_action__request_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__header_action__request_headers_to_add) ->
  ()

let yojson_of_path_matcher__route_rules__header_action__request_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__header_action__request_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__header_action__request_headers_to_add

[@@@deriving.end]

type path_matcher__route_rules__header_action__response_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__header_action__response_headers_to_add) ->
  ()

let yojson_of_path_matcher__route_rules__header_action__response_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__header_action__response_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__header_action__response_headers_to_add

[@@@deriving.end]

type path_matcher__route_rules__header_action = {
  request_headers_to_remove : string prop list option; [@option]
  response_headers_to_remove : string prop list option; [@option]
  request_headers_to_add :
    path_matcher__route_rules__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__route_rules__header_action__response_headers_to_add
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__route_rules__header_action) -> ()

let yojson_of_path_matcher__route_rules__header_action =
  (function
   | {
       request_headers_to_remove = v_request_headers_to_remove;
       response_headers_to_remove = v_response_headers_to_remove;
       request_headers_to_add = v_request_headers_to_add;
       response_headers_to_add = v_response_headers_to_add;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__header_action__response_headers_to_add
             v_response_headers_to_add
         in
         ("response_headers_to_add", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__header_action__request_headers_to_add
             v_request_headers_to_add
         in
         ("request_headers_to_add", arg) :: bnds
       in
       let bnds =
         match v_response_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_headers_to_remove", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "request_headers_to_remove", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules__header_action

[@@@deriving.end]

type path_matcher__route_rules__match_rules__header_matches__range_match = {
  range_end : float prop;
  range_start : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__match_rules__header_matches__range_match) ->
  ()

let yojson_of_path_matcher__route_rules__match_rules__header_matches__range_match
    =
  (function
   | { range_end = v_range_end; range_start = v_range_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_range_start in
         ("range_start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_range_end in
         ("range_end", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__match_rules__header_matches__range_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__match_rules__header_matches__range_match

[@@@deriving.end]

type path_matcher__route_rules__match_rules__header_matches = {
  exact_match : string prop option; [@option]
  header_name : string prop;
  invert_match : bool prop option; [@option]
  prefix_match : string prop option; [@option]
  present_match : bool prop option; [@option]
  regex_match : string prop option; [@option]
  suffix_match : string prop option; [@option]
  range_match :
    path_matcher__route_rules__match_rules__header_matches__range_match
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__match_rules__header_matches) ->
  ()

let yojson_of_path_matcher__route_rules__match_rules__header_matches
    =
  (function
   | {
       exact_match = v_exact_match;
       header_name = v_header_name;
       invert_match = v_invert_match;
       prefix_match = v_prefix_match;
       present_match = v_present_match;
       regex_match = v_regex_match;
       suffix_match = v_suffix_match;
       range_match = v_range_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules__header_matches__range_match
             v_range_match
         in
         ("range_match", arg) :: bnds
       in
       let bnds =
         match v_suffix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regex_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_present_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "present_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_match", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       let bnds =
         match v_exact_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__match_rules__header_matches ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__match_rules__header_matches

[@@@deriving.end]

type path_matcher__route_rules__match_rules__metadata_filters__filter_labels = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__match_rules__metadata_filters__filter_labels) ->
  ()

let yojson_of_path_matcher__route_rules__match_rules__metadata_filters__filter_labels
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
    : path_matcher__route_rules__match_rules__metadata_filters__filter_labels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__match_rules__metadata_filters__filter_labels

[@@@deriving.end]

type path_matcher__route_rules__match_rules__metadata_filters = {
  filter_match_criteria : string prop;
  filter_labels :
    path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__match_rules__metadata_filters) ->
  ()

let yojson_of_path_matcher__route_rules__match_rules__metadata_filters
    =
  (function
   | {
       filter_match_criteria = v_filter_match_criteria;
       filter_labels = v_filter_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules__metadata_filters__filter_labels
             v_filter_labels
         in
         ("filter_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filter_match_criteria
         in
         ("filter_match_criteria", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__match_rules__metadata_filters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__match_rules__metadata_filters

[@@@deriving.end]

type path_matcher__route_rules__match_rules__query_parameter_matches = {
  exact_match : string prop option; [@option]
  name : string prop;
  present_match : bool prop option; [@option]
  regex_match : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__match_rules__query_parameter_matches) ->
  ()

let yojson_of_path_matcher__route_rules__match_rules__query_parameter_matches
    =
  (function
   | {
       exact_match = v_exact_match;
       name = v_name;
       present_match = v_present_match;
       regex_match = v_regex_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regex_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_present_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "present_match", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_exact_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__match_rules__query_parameter_matches ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__match_rules__query_parameter_matches

[@@@deriving.end]

type path_matcher__route_rules__match_rules = {
  full_path_match : string prop option; [@option]
  ignore_case : bool prop option; [@option]
  prefix_match : string prop option; [@option]
  regex_match : string prop option; [@option]
  header_matches :
    path_matcher__route_rules__match_rules__header_matches list;
  metadata_filters :
    path_matcher__route_rules__match_rules__metadata_filters list;
  query_parameter_matches :
    path_matcher__route_rules__match_rules__query_parameter_matches
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__route_rules__match_rules) -> ()

let yojson_of_path_matcher__route_rules__match_rules =
  (function
   | {
       full_path_match = v_full_path_match;
       ignore_case = v_ignore_case;
       prefix_match = v_prefix_match;
       regex_match = v_regex_match;
       header_matches = v_header_matches;
       metadata_filters = v_metadata_filters;
       query_parameter_matches = v_query_parameter_matches;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules__query_parameter_matches
             v_query_parameter_matches
         in
         ("query_parameter_matches", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules__metadata_filters
             v_metadata_filters
         in
         ("metadata_filters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules__header_matches
             v_header_matches
         in
         ("header_matches", arg) :: bnds
       in
       let bnds =
         match v_regex_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regex_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_case with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_case", arg in
             bnd :: bnds
       in
       let bnds =
         match v_full_path_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "full_path_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__match_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules__match_rules

[@@@deriving.end]

type path_matcher__route_rules__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origin_regexes : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  disabled : bool prop option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__route_action__cors_policy) -> ()

let yojson_of_path_matcher__route_rules__route_action__cors_policy =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origin_regexes = v_allow_origin_regexes;
       allow_origins = v_allow_origins;
       disabled = v_disabled;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origin_regexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origin_regexes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__cors_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__cors_policy

[@@@deriving.end]

type path_matcher__route_rules__route_action__fault_injection_policy__abort = {
  http_status : float prop option; [@option]
  percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__fault_injection_policy__abort) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__abort
    =
  (function
   | { http_status = v_http_status; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__fault_injection_policy__abort ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__abort

[@@@deriving.end]

type path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay

[@@@deriving.end]

type path_matcher__route_rules__route_action__fault_injection_policy__delay = {
  percentage : float prop option; [@option]
  fixed_delay :
    path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__fault_injection_policy__delay) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay
    =
  (function
   | { percentage = v_percentage; fixed_delay = v_fixed_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
             v_fixed_delay
         in
         ("fixed_delay", arg) :: bnds
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__fault_injection_policy__delay ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay

[@@@deriving.end]

type path_matcher__route_rules__route_action__fault_injection_policy = {
  abort :
    path_matcher__route_rules__route_action__fault_injection_policy__abort
    list;
  delay :
    path_matcher__route_rules__route_action__fault_injection_policy__delay
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__fault_injection_policy) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__fault_injection_policy
    =
  (function
   | { abort = v_abort; delay = v_delay } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__delay
             v_delay
         in
         ("delay", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__fault_injection_policy__abort
             v_abort
         in
         ("abort", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__fault_injection_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__fault_injection_policy

[@@@deriving.end]

type path_matcher__route_rules__route_action__request_mirror_policy = {
  backend_service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__request_mirror_policy) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__request_mirror_policy
    =
  (function
   | { backend_service = v_backend_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__request_mirror_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__request_mirror_policy

[@@@deriving.end]

type path_matcher__route_rules__route_action__retry_policy__per_try_timeout = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__retry_policy__per_try_timeout) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__retry_policy__per_try_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__retry_policy__per_try_timeout

[@@@deriving.end]

type path_matcher__route_rules__route_action__retry_policy = {
  num_retries : float prop;
  retry_conditions : string prop list option; [@option]
  per_try_timeout :
    path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__route_action__retry_policy) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__retry_policy =
  (function
   | {
       num_retries = v_num_retries;
       retry_conditions = v_retry_conditions;
       per_try_timeout = v_per_try_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__retry_policy__per_try_timeout
             v_per_try_timeout
         in
         ("per_try_timeout", arg) :: bnds
       in
       let bnds =
         match v_retry_conditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retry_conditions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_num_retries in
         ("num_retries", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__retry_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__retry_policy

[@@@deriving.end]

type path_matcher__route_rules__route_action__timeout = {
  nanos : float prop option; [@option]
  seconds : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__route_action__timeout) -> ()

let yojson_of_path_matcher__route_rules__route_action__timeout =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules__route_action__timeout

[@@@deriving.end]

type path_matcher__route_rules__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
  path_prefix_rewrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : path_matcher__route_rules__route_action__url_rewrite) -> ()

let yojson_of_path_matcher__route_rules__route_action__url_rewrite =
  (function
   | {
       host_rewrite = v_host_rewrite;
       path_prefix_rewrite = v_path_prefix_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path_prefix_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix_rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_rewrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__url_rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__url_rewrite

[@@@deriving.end]

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add

[@@@deriving.end]

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_replace in
         ("replace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add

[@@@deriving.end]

type path_matcher__route_rules__route_action__weighted_backend_services__header_action = {
  request_headers_to_remove : string prop list option; [@option]
  response_headers_to_remove : string prop list option; [@option]
  request_headers_to_add :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    list;
  response_headers_to_add :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__weighted_backend_services__header_action) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action
    =
  (function
   | {
       request_headers_to_remove = v_request_headers_to_remove;
       response_headers_to_remove = v_response_headers_to_remove;
       request_headers_to_add = v_request_headers_to_add;
       response_headers_to_add = v_response_headers_to_add;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
             v_response_headers_to_add
         in
         ("response_headers_to_add", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
             v_request_headers_to_add
         in
         ("request_headers_to_add", arg) :: bnds
       in
       let bnds =
         match v_response_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "response_headers_to_remove", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_headers_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "request_headers_to_remove", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__weighted_backend_services__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action

[@@@deriving.end]

type path_matcher__route_rules__route_action__weighted_backend_services = {
  backend_service : string prop;
  weight : float prop;
  header_action :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       path_matcher__route_rules__route_action__weighted_backend_services) ->
  ()

let yojson_of_path_matcher__route_rules__route_action__weighted_backend_services
    =
  (function
   | {
       backend_service = v_backend_service;
       weight = v_weight;
       header_action = v_header_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__weighted_backend_services__header_action
             v_header_action
         in
         ("header_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action__weighted_backend_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_path_matcher__route_rules__route_action__weighted_backend_services

[@@@deriving.end]

type path_matcher__route_rules__route_action = {
  cors_policy :
    path_matcher__route_rules__route_action__cors_policy list;
  fault_injection_policy :
    path_matcher__route_rules__route_action__fault_injection_policy
    list;
  request_mirror_policy :
    path_matcher__route_rules__route_action__request_mirror_policy
    list;
  retry_policy :
    path_matcher__route_rules__route_action__retry_policy list;
  timeout : path_matcher__route_rules__route_action__timeout list;
  url_rewrite :
    path_matcher__route_rules__route_action__url_rewrite list;
  weighted_backend_services :
    path_matcher__route_rules__route_action__weighted_backend_services
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__route_rules__route_action) -> ()

let yojson_of_path_matcher__route_rules__route_action =
  (function
   | {
       cors_policy = v_cors_policy;
       fault_injection_policy = v_fault_injection_policy;
       request_mirror_policy = v_request_mirror_policy;
       retry_policy = v_retry_policy;
       timeout = v_timeout;
       url_rewrite = v_url_rewrite;
       weighted_backend_services = v_weighted_backend_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__weighted_backend_services
             v_weighted_backend_services
         in
         ("weighted_backend_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__url_rewrite
             v_url_rewrite
         in
         ("url_rewrite", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__timeout
             v_timeout
         in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__retry_policy
             v_retry_policy
         in
         ("retry_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__request_mirror_policy
             v_request_mirror_policy
         in
         ("request_mirror_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__fault_injection_policy
             v_fault_injection_policy
         in
         ("fault_injection_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action__cors_policy
             v_cors_policy
         in
         ("cors_policy", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__route_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules__route_action

[@@@deriving.end]

type path_matcher__route_rules__url_redirect = {
  host_redirect : string prop option; [@option]
  https_redirect : bool prop option; [@option]
  path_redirect : string prop option; [@option]
  prefix_redirect : string prop option; [@option]
  redirect_response_code : string prop option; [@option]
  strip_query : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__route_rules__url_redirect) -> ()

let yojson_of_path_matcher__route_rules__url_redirect =
  (function
   | {
       host_redirect = v_host_redirect;
       https_redirect = v_https_redirect;
       path_redirect = v_path_redirect;
       prefix_redirect = v_prefix_redirect;
       redirect_response_code = v_redirect_response_code;
       strip_query = v_strip_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strip_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strip_query", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_redirect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules__url_redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules__url_redirect

[@@@deriving.end]

type path_matcher__route_rules = {
  priority : float prop;
  service : string prop option; [@option]
  header_action : path_matcher__route_rules__header_action list;
  match_rules : path_matcher__route_rules__match_rules list;
  route_action : path_matcher__route_rules__route_action list;
  url_redirect : path_matcher__route_rules__url_redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher__route_rules) -> ()

let yojson_of_path_matcher__route_rules =
  (function
   | {
       priority = v_priority;
       service = v_service;
       header_action = v_header_action;
       match_rules = v_match_rules;
       route_action = v_route_action;
       url_redirect = v_url_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__url_redirect
             v_url_redirect
         in
         ("url_redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__route_action
             v_route_action
         in
         ("route_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__match_rules
             v_match_rules
         in
         ("match_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__route_rules__header_action
             v_header_action
         in
         ("header_action", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       `Assoc bnds
    : path_matcher__route_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher__route_rules

[@@@deriving.end]

type path_matcher = {
  default_service : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
  default_url_redirect : path_matcher__default_url_redirect list;
  path_rule : path_matcher__path_rule list;
  route_rules : path_matcher__route_rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : path_matcher) -> ()

let yojson_of_path_matcher =
  (function
   | {
       default_service = v_default_service;
       description = v_description;
       name = v_name;
       default_url_redirect = v_default_url_redirect;
       path_rule = v_path_rule;
       route_rules = v_route_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_path_matcher__route_rules
             v_route_rules
         in
         ("route_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_path_matcher__path_rule
             v_path_rule
         in
         ("path_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_path_matcher__default_url_redirect
             v_default_url_redirect
         in
         ("default_url_redirect", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_default_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : path_matcher -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_path_matcher

[@@@deriving.end]

type test = {
  description : string prop option; [@option]
  host : string prop;
  path : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : test) -> ()

let yojson_of_test =
  (function
   | {
       description = v_description;
       host = v_host;
       path = v_path;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : test -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_test

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

type google_compute_region_url_map = {
  default_service : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  default_route_action : default_route_action list;
  default_url_redirect : default_url_redirect list;
  host_rule : host_rule list;
  path_matcher : path_matcher list;
  test : test list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_url_map) -> ()

let yojson_of_google_compute_region_url_map =
  (function
   | {
       default_service = v_default_service;
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       default_route_action = v_default_route_action;
       default_url_redirect = v_default_url_redirect;
       host_rule = v_host_rule;
       path_matcher = v_path_matcher;
       test = v_test;
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
         let arg = yojson_of_list yojson_of_test v_test in
         ("test", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_path_matcher v_path_matcher
         in
         ("path_matcher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_host_rule v_host_rule in
         ("host_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_url_redirect
             v_default_url_redirect
         in
         ("default_url_redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_route_action
             v_default_route_action
         in
         ("default_route_action", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_service", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_url_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_url_map

[@@@deriving.end]

let default_route_action__cors_policy ?allow_credentials
    ?allow_headers ?allow_methods ?allow_origin_regexes
    ?allow_origins ?disabled ?expose_headers ?max_age () :
    default_route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let default_route_action__fault_injection_policy__abort ?http_status
    ?percentage () :
    default_route_action__fault_injection_policy__abort =
  { http_status; percentage }

let default_route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ?seconds () :
    default_route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let default_route_action__fault_injection_policy__delay ?percentage
    ?(fixed_delay = []) () :
    default_route_action__fault_injection_policy__delay =
  { percentage; fixed_delay }

let default_route_action__fault_injection_policy ?(abort = [])
    ?(delay = []) () : default_route_action__fault_injection_policy =
  { abort; delay }

let default_route_action__request_mirror_policy ?backend_service () :
    default_route_action__request_mirror_policy =
  { backend_service }

let default_route_action__retry_policy__per_try_timeout ?nanos
    ?seconds () : default_route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let default_route_action__retry_policy ?num_retries ?retry_conditions
    ?(per_try_timeout = []) () : default_route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let default_route_action__timeout ?nanos ?seconds () :
    default_route_action__timeout =
  { nanos; seconds }

let default_route_action__url_rewrite ?host_rewrite
    ?path_prefix_rewrite () : default_route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let default_route_action__weighted_backend_services__header_action__request_headers_to_add
    ?header_name ?header_value ?replace () :
    default_route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let default_route_action__weighted_backend_services__header_action__response_headers_to_add
    ?header_name ?header_value ?replace () :
    default_route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let default_route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ?(request_headers_to_add = []) ?(response_headers_to_add = []) ()
    : default_route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let default_route_action__weighted_backend_services ?backend_service
    ?weight ?(header_action = []) () :
    default_route_action__weighted_backend_services =
  { backend_service; weight; header_action }

let default_route_action ?(cors_policy = [])
    ?(fault_injection_policy = []) ?(request_mirror_policy = [])
    ?(retry_policy = []) ?(timeout = []) ?(url_rewrite = [])
    ?(weighted_backend_services = []) () : default_route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let default_url_redirect ?host_redirect ?https_redirect
    ?path_redirect ?prefix_redirect ?redirect_response_code
    ~strip_query () : default_url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let host_rule ?description ~hosts ~path_matcher () : host_rule =
  { description; hosts; path_matcher }

let path_matcher__default_url_redirect ?host_redirect ?https_redirect
    ?path_redirect ?prefix_redirect ?redirect_response_code
    ~strip_query () : path_matcher__default_url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__path_rule__route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origin_regexes ?allow_origins ?expose_headers ?max_age
    ~disabled () : path_matcher__path_rule__route_action__cors_policy
    =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let path_matcher__path_rule__route_action__fault_injection_policy__abort
    ~http_status ~percentage () :
    path_matcher__path_rule__route_action__fault_injection_policy__abort
    =
  { http_status; percentage }

let path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ~seconds () :
    path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let path_matcher__path_rule__route_action__fault_injection_policy__delay
    ~percentage ~fixed_delay () :
    path_matcher__path_rule__route_action__fault_injection_policy__delay
    =
  { percentage; fixed_delay }

let path_matcher__path_rule__route_action__fault_injection_policy
    ?(abort = []) ?(delay = []) () :
    path_matcher__path_rule__route_action__fault_injection_policy =
  { abort; delay }

let path_matcher__path_rule__route_action__request_mirror_policy
    ~backend_service () :
    path_matcher__path_rule__route_action__request_mirror_policy =
  { backend_service }

let path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    ?nanos ~seconds () :
    path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let path_matcher__path_rule__route_action__retry_policy ?num_retries
    ?retry_conditions ?(per_try_timeout = []) () :
    path_matcher__path_rule__route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let path_matcher__path_rule__route_action__timeout ?nanos ~seconds ()
    : path_matcher__path_rule__route_action__timeout =
  { nanos; seconds }

let path_matcher__path_rule__route_action__url_rewrite ?host_rewrite
    ?path_prefix_rewrite () :
    path_matcher__path_rule__route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__path_rule__route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ?(request_headers_to_add = []) ?(response_headers_to_add = []) ()
    :
    path_matcher__path_rule__route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__path_rule__route_action__weighted_backend_services
    ?(header_action = []) ~backend_service ~weight () :
    path_matcher__path_rule__route_action__weighted_backend_services
    =
  { backend_service; weight; header_action }

let path_matcher__path_rule__route_action ?(cors_policy = [])
    ?(fault_injection_policy = []) ?(request_mirror_policy = [])
    ?(retry_policy = []) ?(timeout = []) ?(url_rewrite = [])
    ?(weighted_backend_services = []) () :
    path_matcher__path_rule__route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let path_matcher__path_rule__url_redirect ?host_redirect
    ?https_redirect ?path_redirect ?prefix_redirect
    ?redirect_response_code ~strip_query () :
    path_matcher__path_rule__url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__path_rule ?service ?(route_action = [])
    ?(url_redirect = []) ~paths () : path_matcher__path_rule =
  { paths; service; route_action; url_redirect }

let path_matcher__route_rules__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ?(request_headers_to_add = []) ?(response_headers_to_add = []) ()
    : path_matcher__route_rules__header_action =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__route_rules__match_rules__header_matches__range_match
    ~range_end ~range_start () :
    path_matcher__route_rules__match_rules__header_matches__range_match
    =
  { range_end; range_start }

let path_matcher__route_rules__match_rules__header_matches
    ?exact_match ?invert_match ?prefix_match ?present_match
    ?regex_match ?suffix_match ?(range_match = []) ~header_name () :
    path_matcher__route_rules__match_rules__header_matches =
  {
    exact_match;
    header_name;
    invert_match;
    prefix_match;
    present_match;
    regex_match;
    suffix_match;
    range_match;
  }

let path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    ~name ~value () :
    path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    =
  { name; value }

let path_matcher__route_rules__match_rules__metadata_filters
    ~filter_match_criteria ~filter_labels () :
    path_matcher__route_rules__match_rules__metadata_filters =
  { filter_match_criteria; filter_labels }

let path_matcher__route_rules__match_rules__query_parameter_matches
    ?exact_match ?present_match ?regex_match ~name () :
    path_matcher__route_rules__match_rules__query_parameter_matches =
  { exact_match; name; present_match; regex_match }

let path_matcher__route_rules__match_rules ?full_path_match
    ?ignore_case ?prefix_match ?regex_match ?(header_matches = [])
    ?(metadata_filters = []) ?(query_parameter_matches = []) () :
    path_matcher__route_rules__match_rules =
  {
    full_path_match;
    ignore_case;
    prefix_match;
    regex_match;
    header_matches;
    metadata_filters;
    query_parameter_matches;
  }

let path_matcher__route_rules__route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origin_regexes ?allow_origins ?disabled ?expose_headers
    ?max_age () :
    path_matcher__route_rules__route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origin_regexes;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let path_matcher__route_rules__route_action__fault_injection_policy__abort
    ?http_status ?percentage () :
    path_matcher__route_rules__route_action__fault_injection_policy__abort
    =
  { http_status; percentage }

let path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    ?nanos ~seconds () :
    path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    =
  { nanos; seconds }

let path_matcher__route_rules__route_action__fault_injection_policy__delay
    ?percentage ?(fixed_delay = []) () :
    path_matcher__route_rules__route_action__fault_injection_policy__delay
    =
  { percentage; fixed_delay }

let path_matcher__route_rules__route_action__fault_injection_policy
    ?(abort = []) ?(delay = []) () :
    path_matcher__route_rules__route_action__fault_injection_policy =
  { abort; delay }

let path_matcher__route_rules__route_action__request_mirror_policy
    ~backend_service () :
    path_matcher__route_rules__route_action__request_mirror_policy =
  { backend_service }

let path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    ?nanos ~seconds () :
    path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    =
  { nanos; seconds }

let path_matcher__route_rules__route_action__retry_policy
    ?retry_conditions ?(per_try_timeout = []) ~num_retries () :
    path_matcher__route_rules__route_action__retry_policy =
  { num_retries; retry_conditions; per_try_timeout }

let path_matcher__route_rules__route_action__timeout ?nanos ~seconds
    () : path_matcher__route_rules__route_action__timeout =
  { nanos; seconds }

let path_matcher__route_rules__route_action__url_rewrite
    ?host_rewrite ?path_prefix_rewrite () :
    path_matcher__route_rules__route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    ~header_name ~header_value ~replace () :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    =
  { header_name; header_value; replace }

let path_matcher__route_rules__route_action__weighted_backend_services__header_action
    ?request_headers_to_remove ?response_headers_to_remove
    ?(request_headers_to_add = []) ?(response_headers_to_add = []) ()
    :
    path_matcher__route_rules__route_action__weighted_backend_services__header_action
    =
  {
    request_headers_to_remove;
    response_headers_to_remove;
    request_headers_to_add;
    response_headers_to_add;
  }

let path_matcher__route_rules__route_action__weighted_backend_services
    ?(header_action = []) ~backend_service ~weight () :
    path_matcher__route_rules__route_action__weighted_backend_services
    =
  { backend_service; weight; header_action }

let path_matcher__route_rules__route_action ?(cors_policy = [])
    ?(fault_injection_policy = []) ?(request_mirror_policy = [])
    ?(retry_policy = []) ?(timeout = []) ?(url_rewrite = [])
    ?(weighted_backend_services = []) () :
    path_matcher__route_rules__route_action =
  {
    cors_policy;
    fault_injection_policy;
    request_mirror_policy;
    retry_policy;
    timeout;
    url_rewrite;
    weighted_backend_services;
  }

let path_matcher__route_rules__url_redirect ?host_redirect
    ?https_redirect ?path_redirect ?prefix_redirect
    ?redirect_response_code ?strip_query () :
    path_matcher__route_rules__url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let path_matcher__route_rules ?service ?(header_action = [])
    ?(match_rules = []) ?(route_action = []) ?(url_redirect = [])
    ~priority () : path_matcher__route_rules =
  {
    priority;
    service;
    header_action;
    match_rules;
    route_action;
    url_redirect;
  }

let path_matcher ?default_service ?description
    ?(default_url_redirect = []) ?(path_rule = [])
    ?(route_rules = []) ~name () : path_matcher =
  {
    default_service;
    description;
    name;
    default_url_redirect;
    path_rule;
    route_rules;
  }

let test ?description ~host ~path ~service () : test =
  { description; host; path; service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_url_map ?default_service ?description ?id
    ?project ?region ?(default_route_action = [])
    ?(default_url_redirect = []) ?(path_matcher = []) ?(test = [])
    ?timeouts ~name ~host_rule () : google_compute_region_url_map =
  {
    default_service;
    description;
    id;
    name;
    project;
    region;
    default_route_action;
    default_url_redirect;
    host_rule;
    path_matcher;
    test;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  default_service : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  map_id : float prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?default_service ?description ?id ?project ?region
    ?(default_route_action = []) ?(default_url_redirect = [])
    ?(path_matcher = []) ?(test = []) ?timeouts ~name ~host_rule __id
    =
  let __type = "google_compute_region_url_map" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       default_service = Prop.computed __type __id "default_service";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       map_id = Prop.computed __type __id "map_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_url_map
        (google_compute_region_url_map ?default_service ?description
           ?id ?project ?region ~default_route_action
           ~default_url_redirect ~path_matcher ~test ?timeouts ~name
           ~host_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?default_service ?description ?id ?project
    ?region ?(default_route_action = []) ?(default_url_redirect = [])
    ?(path_matcher = []) ?(test = []) ?timeouts ~name ~host_rule __id
    =
  let (r : _ Tf_core.resource) =
    make ?default_service ?description ?id ?project ?region
      ~default_route_action ~default_url_redirect ~path_matcher ~test
      ?timeouts ~name ~host_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
