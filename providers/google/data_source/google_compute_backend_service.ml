(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend = {
  balancing_mode : string prop;
  capacity_scaler : float prop;
  description : string prop;
  group : string prop;
  max_connections : float prop;
  max_connections_per_endpoint : float prop;
  max_connections_per_instance : float prop;
  max_rate : float prop;
  max_rate_per_endpoint : float prop;
  max_rate_per_instance : float prop;
  max_utilization : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend) -> ()

let yojson_of_backend =
  (function
   | {
       balancing_mode = v_balancing_mode;
       capacity_scaler = v_capacity_scaler;
       description = v_description;
       group = v_group;
       max_connections = v_max_connections;
       max_connections_per_endpoint = v_max_connections_per_endpoint;
       max_connections_per_instance = v_max_connections_per_instance;
       max_rate = v_max_rate;
       max_rate_per_endpoint = v_max_rate_per_endpoint;
       max_rate_per_instance = v_max_rate_per_instance;
       max_utilization = v_max_utilization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_utilization
         in
         ("max_utilization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_rate_per_instance
         in
         ("max_rate_per_instance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_rate_per_endpoint
         in
         ("max_rate_per_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_rate in
         ("max_rate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_connections_per_instance
         in
         ("max_connections_per_instance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_connections_per_endpoint
         in
         ("max_connections_per_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_connections
         in
         ("max_connections", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_capacity_scaler
         in
         ("capacity_scaler", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_balancing_mode
         in
         ("balancing_mode", arg) :: bnds
       in
       `Assoc bnds
    : backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend

[@@@deriving.end]

type cdn_policy__negative_caching_policy = {
  code : float prop;
  ttl : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__negative_caching_policy) -> ()

let yojson_of_cdn_policy__negative_caching_policy =
  (function
   | { code = v_code; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__negative_caching_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__negative_caching_policy

[@@@deriving.end]

type cdn_policy__cache_key_policy = {
  include_host : bool prop;
  include_http_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_named_cookies : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_protocol : bool prop;
  include_query_string : bool prop;
  query_string_blacklist : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_string_whitelist : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__cache_key_policy) -> ()

let yojson_of_cdn_policy__cache_key_policy =
  (function
   | {
       include_host = v_include_host;
       include_http_headers = v_include_http_headers;
       include_named_cookies = v_include_named_cookies;
       include_protocol = v_include_protocol;
       include_query_string = v_include_query_string;
       query_string_blacklist = v_query_string_blacklist;
       query_string_whitelist = v_query_string_whitelist;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_string_whitelist then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_query_string_whitelist
           in
           let bnd = "query_string_whitelist", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_query_string_blacklist then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_query_string_blacklist
           in
           let bnd = "query_string_blacklist", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_query_string
         in
         ("include_query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_protocol
         in
         ("include_protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_named_cookies then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_include_named_cookies
           in
           let bnd = "include_named_cookies", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_http_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_include_http_headers
           in
           let bnd = "include_http_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_include_host in
         ("include_host", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__cache_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__cache_key_policy

[@@@deriving.end]

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__bypass_cache_on_request_headers) -> ()

let yojson_of_cdn_policy__bypass_cache_on_request_headers =
  (function
   | { header_name = v_header_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : cdn_policy__bypass_cache_on_request_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__bypass_cache_on_request_headers

[@@@deriving.end]

type cdn_policy = {
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_key_policy : cdn_policy__cache_key_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_mode : string prop;
  client_ttl : float prop;
  default_ttl : float prop;
  max_ttl : float prop;
  negative_caching : bool prop;
  negative_caching_policy : cdn_policy__negative_caching_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  serve_while_stale : float prop;
  signed_url_cache_max_age_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy) -> ()

let yojson_of_cdn_policy =
  (function
   | {
       bypass_cache_on_request_headers =
         v_bypass_cache_on_request_headers;
       cache_key_policy = v_cache_key_policy;
       cache_mode = v_cache_mode;
       client_ttl = v_client_ttl;
       default_ttl = v_default_ttl;
       max_ttl = v_max_ttl;
       negative_caching = v_negative_caching;
       negative_caching_policy = v_negative_caching_policy;
       serve_while_stale = v_serve_while_stale;
       signed_url_cache_max_age_sec = v_signed_url_cache_max_age_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_signed_url_cache_max_age_sec
         in
         ("signed_url_cache_max_age_sec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_serve_while_stale
         in
         ("serve_while_stale", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_negative_caching_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cdn_policy__negative_caching_policy)
               v_negative_caching_policy
           in
           let bnd = "negative_caching_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_negative_caching
         in
         ("negative_caching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_ttl in
         ("max_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_default_ttl in
         ("default_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_client_ttl in
         ("client_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cache_mode in
         ("cache_mode", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_key_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cdn_policy__cache_key_policy)
               v_cache_key_policy
           in
           let bnd = "cache_key_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bypass_cache_on_request_headers then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cdn_policy__bypass_cache_on_request_headers)
               v_bypass_cache_on_request_headers
           in
           let bnd = "bypass_cache_on_request_headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy

[@@@deriving.end]

type circuit_breakers = {
  max_connections : float prop;
  max_pending_requests : float prop;
  max_requests : float prop;
  max_requests_per_connection : float prop;
  max_retries : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : circuit_breakers) -> ()

let yojson_of_circuit_breakers =
  (function
   | {
       max_connections = v_max_connections;
       max_pending_requests = v_max_pending_requests;
       max_requests = v_max_requests;
       max_requests_per_connection = v_max_requests_per_connection;
       max_retries = v_max_retries;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_retries in
         ("max_retries", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_requests_per_connection
         in
         ("max_requests_per_connection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_requests in
         ("max_requests", arg) :: bnds
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
    : circuit_breakers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_circuit_breakers

[@@@deriving.end]

type consistent_hash__http_cookie__ttl = {
  nanos : float prop;
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistent_hash__http_cookie__ttl) -> ()

let yojson_of_consistent_hash__http_cookie__ttl =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       `Assoc bnds
    : consistent_hash__http_cookie__ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash__http_cookie__ttl

[@@@deriving.end]

type consistent_hash__http_cookie = {
  name : string prop;
  path : string prop;
  ttl : consistent_hash__http_cookie__ttl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistent_hash__http_cookie) -> ()

let yojson_of_consistent_hash__http_cookie =
  (function
   | { name = v_name; path = v_path; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ttl then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_consistent_hash__http_cookie__ttl)
               v_ttl
           in
           let bnd = "ttl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : consistent_hash__http_cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash__http_cookie

[@@@deriving.end]

type consistent_hash = {
  http_cookie : consistent_hash__http_cookie list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http_header_name : string prop;
  minimum_ring_size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistent_hash) -> ()

let yojson_of_consistent_hash =
  (function
   | {
       http_cookie = v_http_cookie;
       http_header_name = v_http_header_name;
       minimum_ring_size = v_minimum_ring_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_minimum_ring_size
         in
         ("minimum_ring_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_header_name
         in
         ("http_header_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http_cookie then bnds
         else
           let arg =
             (yojson_of_list yojson_of_consistent_hash__http_cookie)
               v_http_cookie
           in
           let bnd = "http_cookie", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : consistent_hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash

[@@@deriving.end]

type iap = {
  oauth2_client_id : string prop;
  oauth2_client_secret : string prop;
  oauth2_client_secret_sha256 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iap) -> ()

let yojson_of_iap =
  (function
   | {
       oauth2_client_id = v_oauth2_client_id;
       oauth2_client_secret = v_oauth2_client_secret;
       oauth2_client_secret_sha256 = v_oauth2_client_secret_sha256;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_oauth2_client_secret_sha256
         in
         ("oauth2_client_secret_sha256", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_oauth2_client_secret
         in
         ("oauth2_client_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_oauth2_client_id
         in
         ("oauth2_client_id", arg) :: bnds
       in
       `Assoc bnds
    : iap -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iap

[@@@deriving.end]

type locality_lb_policies__policy = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : locality_lb_policies__policy) -> ()

let yojson_of_locality_lb_policies__policy =
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
    : locality_lb_policies__policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_locality_lb_policies__policy

[@@@deriving.end]

type locality_lb_policies__custom_policy = {
  data : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : locality_lb_policies__custom_policy) -> ()

let yojson_of_locality_lb_policies__custom_policy =
  (function
   | { data = v_data; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : locality_lb_policies__custom_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_locality_lb_policies__custom_policy

[@@@deriving.end]

type locality_lb_policies = {
  custom_policy : locality_lb_policies__custom_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy : locality_lb_policies__policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : locality_lb_policies) -> ()

let yojson_of_locality_lb_policies =
  (function
   | { custom_policy = v_custom_policy; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_locality_lb_policies__policy)
               v_policy
           in
           let bnd = "policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_locality_lb_policies__custom_policy)
               v_custom_policy
           in
           let bnd = "custom_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : locality_lb_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_locality_lb_policies

[@@@deriving.end]

type log_config = { enable : bool prop; sample_rate : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable; sample_rate = v_sample_rate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sample_rate in
         ("sample_rate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type outlier_detection__interval = {
  nanos : float prop;
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outlier_detection__interval) -> ()

let yojson_of_outlier_detection__interval =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       `Assoc bnds
    : outlier_detection__interval ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection__interval

[@@@deriving.end]

type outlier_detection__base_ejection_time = {
  nanos : float prop;
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outlier_detection__base_ejection_time) -> ()

let yojson_of_outlier_detection__base_ejection_time =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       `Assoc bnds
    : outlier_detection__base_ejection_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection__base_ejection_time

[@@@deriving.end]

type outlier_detection = {
  base_ejection_time : outlier_detection__base_ejection_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  consecutive_errors : float prop;
  consecutive_gateway_failure : float prop;
  enforcing_consecutive_errors : float prop;
  enforcing_consecutive_gateway_failure : float prop;
  enforcing_success_rate : float prop;
  interval : outlier_detection__interval list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_ejection_percent : float prop;
  success_rate_minimum_hosts : float prop;
  success_rate_request_volume : float prop;
  success_rate_stdev_factor : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outlier_detection) -> ()

let yojson_of_outlier_detection =
  (function
   | {
       base_ejection_time = v_base_ejection_time;
       consecutive_errors = v_consecutive_errors;
       consecutive_gateway_failure = v_consecutive_gateway_failure;
       enforcing_consecutive_errors = v_enforcing_consecutive_errors;
       enforcing_consecutive_gateway_failure =
         v_enforcing_consecutive_gateway_failure;
       enforcing_success_rate = v_enforcing_success_rate;
       interval = v_interval;
       max_ejection_percent = v_max_ejection_percent;
       success_rate_minimum_hosts = v_success_rate_minimum_hosts;
       success_rate_request_volume = v_success_rate_request_volume;
       success_rate_stdev_factor = v_success_rate_stdev_factor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_success_rate_stdev_factor
         in
         ("success_rate_stdev_factor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_success_rate_request_volume
         in
         ("success_rate_request_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_success_rate_minimum_hosts
         in
         ("success_rate_minimum_hosts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_ejection_percent
         in
         ("max_ejection_percent", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_interval then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outlier_detection__interval)
               v_interval
           in
           let bnd = "interval", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_enforcing_success_rate
         in
         ("enforcing_success_rate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_enforcing_consecutive_gateway_failure
         in
         ("enforcing_consecutive_gateway_failure", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_enforcing_consecutive_errors
         in
         ("enforcing_consecutive_errors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_consecutive_gateway_failure
         in
         ("consecutive_gateway_failure", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_consecutive_errors
         in
         ("consecutive_errors", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_base_ejection_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_outlier_detection__base_ejection_time)
               v_base_ejection_time
           in
           let bnd = "base_ejection_time", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : outlier_detection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection

[@@@deriving.end]

type security_settings = {
  client_tls_policy : string prop;
  subject_alt_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_settings) -> ()

let yojson_of_security_settings =
  (function
   | {
       client_tls_policy = v_client_tls_policy;
       subject_alt_names = v_subject_alt_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subject_alt_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subject_alt_names
           in
           let bnd = "subject_alt_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_tls_policy
         in
         ("client_tls_policy", arg) :: bnds
       in
       `Assoc bnds
    : security_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_settings

[@@@deriving.end]

type google_compute_backend_service = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_backend_service) -> ()

let yojson_of_google_compute_backend_service =
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
    : google_compute_backend_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_backend_service

[@@@deriving.end]

let google_compute_backend_service ?id ?project ~name () :
    google_compute_backend_service =
  { id; name; project }

type t = {
  tf_name : string;
  affinity_cookie_ttl_sec : float prop;
  backend : backend list prop;
  cdn_policy : cdn_policy list prop;
  circuit_breakers : circuit_breakers list prop;
  compression_mode : string prop;
  connection_draining_timeout_sec : float prop;
  consistent_hash : consistent_hash list prop;
  creation_timestamp : string prop;
  custom_request_headers : string list prop;
  custom_response_headers : string list prop;
  description : string prop;
  edge_security_policy : string prop;
  enable_cdn : bool prop;
  fingerprint : string prop;
  generated_id : float prop;
  health_checks : string list prop;
  iap : iap list prop;
  id : string prop;
  load_balancing_scheme : string prop;
  locality_lb_policies : locality_lb_policies list prop;
  locality_lb_policy : string prop;
  log_config : log_config list prop;
  name : string prop;
  outlier_detection : outlier_detection list prop;
  port_name : string prop;
  project : string prop;
  protocol : string prop;
  security_policy : string prop;
  security_settings : security_settings list prop;
  self_link : string prop;
  session_affinity : string prop;
  timeout_sec : float prop;
}

let make ?id ?project ~name __id =
  let __type = "google_compute_backend_service" in
  let __attrs =
    ({
       tf_name = __id;
       affinity_cookie_ttl_sec =
         Prop.computed __type __id "affinity_cookie_ttl_sec";
       backend = Prop.computed __type __id "backend";
       cdn_policy = Prop.computed __type __id "cdn_policy";
       circuit_breakers =
         Prop.computed __type __id "circuit_breakers";
       compression_mode =
         Prop.computed __type __id "compression_mode";
       connection_draining_timeout_sec =
         Prop.computed __type __id "connection_draining_timeout_sec";
       consistent_hash = Prop.computed __type __id "consistent_hash";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       custom_request_headers =
         Prop.computed __type __id "custom_request_headers";
       custom_response_headers =
         Prop.computed __type __id "custom_response_headers";
       description = Prop.computed __type __id "description";
       edge_security_policy =
         Prop.computed __type __id "edge_security_policy";
       enable_cdn = Prop.computed __type __id "enable_cdn";
       fingerprint = Prop.computed __type __id "fingerprint";
       generated_id = Prop.computed __type __id "generated_id";
       health_checks = Prop.computed __type __id "health_checks";
       iap = Prop.computed __type __id "iap";
       id = Prop.computed __type __id "id";
       load_balancing_scheme =
         Prop.computed __type __id "load_balancing_scheme";
       locality_lb_policies =
         Prop.computed __type __id "locality_lb_policies";
       locality_lb_policy =
         Prop.computed __type __id "locality_lb_policy";
       log_config = Prop.computed __type __id "log_config";
       name = Prop.computed __type __id "name";
       outlier_detection =
         Prop.computed __type __id "outlier_detection";
       port_name = Prop.computed __type __id "port_name";
       project = Prop.computed __type __id "project";
       protocol = Prop.computed __type __id "protocol";
       security_policy = Prop.computed __type __id "security_policy";
       security_settings =
         Prop.computed __type __id "security_settings";
       self_link = Prop.computed __type __id "self_link";
       session_affinity =
         Prop.computed __type __id "session_affinity";
       timeout_sec = Prop.computed __type __id "timeout_sec";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_backend_service
        (google_compute_backend_service ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
