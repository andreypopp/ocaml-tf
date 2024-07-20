(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backend = {
  balancing_mode : string prop option; [@option]
  capacity_scaler : float prop option; [@option]
  description : string prop option; [@option]
  failover : bool prop option; [@option]
  group : string prop;
  max_connections : float prop option; [@option]
  max_connections_per_endpoint : float prop option; [@option]
  max_connections_per_instance : float prop option; [@option]
  max_rate : float prop option; [@option]
  max_rate_per_endpoint : float prop option; [@option]
  max_rate_per_instance : float prop option; [@option]
  max_utilization : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backend) -> ()

let yojson_of_backend =
  (function
   | {
       balancing_mode = v_balancing_mode;
       capacity_scaler = v_capacity_scaler;
       description = v_description;
       failover = v_failover;
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
         match v_max_utilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_utilization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_rate_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_rate_per_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_rate_per_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_rate_per_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_connections_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_connections_per_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_connections_per_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_connections_per_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_connections", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       let bnds =
         match v_failover with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failover", arg in
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
         match v_capacity_scaler with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity_scaler", arg in
             bnd :: bnds
       in
       let bnds =
         match v_balancing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "balancing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backend

[@@@deriving.end]

type cdn_policy__cache_key_policy = {
  include_host : bool prop option; [@option]
  include_named_cookies : string prop list option; [@option]
  include_protocol : bool prop option; [@option]
  include_query_string : bool prop option; [@option]
  query_string_blacklist : string prop list option; [@option]
  query_string_whitelist : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__cache_key_policy) -> ()

let yojson_of_cdn_policy__cache_key_policy =
  (function
   | {
       include_host = v_include_host;
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
         match v_query_string_whitelist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_whitelist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string_blacklist with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_blacklist", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_named_cookies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_named_cookies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy__cache_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__cache_key_policy

[@@@deriving.end]

type cdn_policy__negative_caching_policy = {
  code : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy__negative_caching_policy) -> ()

let yojson_of_cdn_policy__negative_caching_policy =
  (function
   | { code = v_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy__negative_caching_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy__negative_caching_policy

[@@@deriving.end]

type cdn_policy = {
  cache_mode : string prop option; [@option]
  client_ttl : float prop option; [@option]
  default_ttl : float prop option; [@option]
  max_ttl : float prop option; [@option]
  negative_caching : bool prop option; [@option]
  serve_while_stale : float prop option; [@option]
  signed_url_cache_max_age_sec : float prop option; [@option]
  cache_key_policy : cdn_policy__cache_key_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negative_caching_policy : cdn_policy__negative_caching_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cdn_policy) -> ()

let yojson_of_cdn_policy =
  (function
   | {
       cache_mode = v_cache_mode;
       client_ttl = v_client_ttl;
       default_ttl = v_default_ttl;
       max_ttl = v_max_ttl;
       negative_caching = v_negative_caching;
       serve_while_stale = v_serve_while_stale;
       signed_url_cache_max_age_sec = v_signed_url_cache_max_age_sec;
       cache_key_policy = v_cache_key_policy;
       negative_caching_policy = v_negative_caching_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_signed_url_cache_max_age_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "signed_url_cache_max_age_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serve_while_stale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "serve_while_stale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negative_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negative_caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "client_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cdn_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cdn_policy

[@@@deriving.end]

type circuit_breakers = {
  max_connections : float prop option; [@option]
  max_pending_requests : float prop option; [@option]
  max_requests : float prop option; [@option]
  max_requests_per_connection : float prop option; [@option]
  max_retries : float prop option; [@option]
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
         match v_max_retries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_retries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_requests_per_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_requests_per_connection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_pending_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pending_requests", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_connections", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : circuit_breakers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_circuit_breakers

[@@@deriving.end]

type consistent_hash__http_cookie__ttl = {
  nanos : float prop option; [@option]
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
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : consistent_hash__http_cookie__ttl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash__http_cookie__ttl

[@@@deriving.end]

type consistent_hash__http_cookie = {
  name : string prop option; [@option]
  path : string prop option; [@option]
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
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
       `Assoc bnds
    : consistent_hash__http_cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash__http_cookie

[@@@deriving.end]

type consistent_hash = {
  http_header_name : string prop option; [@option]
  minimum_ring_size : float prop option; [@option]
  http_cookie : consistent_hash__http_cookie list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consistent_hash) -> ()

let yojson_of_consistent_hash =
  (function
   | {
       http_header_name = v_http_header_name;
       minimum_ring_size = v_minimum_ring_size;
       http_cookie = v_http_cookie;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         match v_minimum_ring_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_ring_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_header_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : consistent_hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consistent_hash

[@@@deriving.end]

type failover_policy = {
  disable_connection_drain_on_failover : bool prop option; [@option]
  drop_traffic_if_unhealthy : bool prop option; [@option]
  failover_ratio : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : failover_policy) -> ()

let yojson_of_failover_policy =
  (function
   | {
       disable_connection_drain_on_failover =
         v_disable_connection_drain_on_failover;
       drop_traffic_if_unhealthy = v_drop_traffic_if_unhealthy;
       failover_ratio = v_failover_ratio;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_failover_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failover_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drop_traffic_if_unhealthy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "drop_traffic_if_unhealthy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_connection_drain_on_failover with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_connection_drain_on_failover", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : failover_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failover_policy

[@@@deriving.end]

type iap = {
  oauth2_client_id : string prop;
  oauth2_client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iap) -> ()

let yojson_of_iap =
  (function
   | {
       oauth2_client_id = v_oauth2_client_id;
       oauth2_client_secret = v_oauth2_client_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type log_config = {
  enable : bool prop option; [@option]
  sample_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable; sample_rate = v_sample_rate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
             bnd :: bnds
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

type outlier_detection__base_ejection_time = {
  nanos : float prop option; [@option]
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
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : outlier_detection__base_ejection_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection__base_ejection_time

[@@@deriving.end]

type outlier_detection__interval = {
  nanos : float prop option; [@option]
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
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : outlier_detection__interval ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection__interval

[@@@deriving.end]

type outlier_detection = {
  consecutive_errors : float prop option; [@option]
  consecutive_gateway_failure : float prop option; [@option]
  enforcing_consecutive_errors : float prop option; [@option]
  enforcing_consecutive_gateway_failure : float prop option;
      [@option]
  enforcing_success_rate : float prop option; [@option]
  max_ejection_percent : float prop option; [@option]
  success_rate_minimum_hosts : float prop option; [@option]
  success_rate_request_volume : float prop option; [@option]
  success_rate_stdev_factor : float prop option; [@option]
  base_ejection_time : outlier_detection__base_ejection_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  interval : outlier_detection__interval list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outlier_detection) -> ()

let yojson_of_outlier_detection =
  (function
   | {
       consecutive_errors = v_consecutive_errors;
       consecutive_gateway_failure = v_consecutive_gateway_failure;
       enforcing_consecutive_errors = v_enforcing_consecutive_errors;
       enforcing_consecutive_gateway_failure =
         v_enforcing_consecutive_gateway_failure;
       enforcing_success_rate = v_enforcing_success_rate;
       max_ejection_percent = v_max_ejection_percent;
       success_rate_minimum_hosts = v_success_rate_minimum_hosts;
       success_rate_request_volume = v_success_rate_request_volume;
       success_rate_stdev_factor = v_success_rate_stdev_factor;
       base_ejection_time = v_base_ejection_time;
       interval = v_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         match v_success_rate_stdev_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_rate_stdev_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_rate_request_volume with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_rate_request_volume", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_rate_minimum_hosts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "success_rate_minimum_hosts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ejection_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ejection_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforcing_success_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "enforcing_success_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforcing_consecutive_gateway_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "enforcing_consecutive_gateway_failure", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_enforcing_consecutive_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "enforcing_consecutive_errors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consecutive_gateway_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_gateway_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consecutive_errors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "consecutive_errors", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : outlier_detection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outlier_detection

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

type google_compute_region_backend_service = {
  affinity_cookie_ttl_sec : float prop option; [@option]
  connection_draining_timeout_sec : float prop option; [@option]
  description : string prop option; [@option]
  enable_cdn : bool prop option; [@option]
  health_checks : string prop list option; [@option]
  id : string prop option; [@option]
  load_balancing_scheme : string prop option; [@option]
  locality_lb_policy : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  port_name : string prop option; [@option]
  project : string prop option; [@option]
  protocol : string prop option; [@option]
  region : string prop option; [@option]
  session_affinity : string prop option; [@option]
  timeout_sec : float prop option; [@option]
  backend : backend list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cdn_policy : cdn_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  circuit_breakers : circuit_breakers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  consistent_hash : consistent_hash list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  failover_policy : failover_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iap : iap list; [@default []] [@yojson_drop_default Stdlib.( = )]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outlier_detection : outlier_detection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_backend_service) -> ()

let yojson_of_google_compute_region_backend_service =
  (function
   | {
       affinity_cookie_ttl_sec = v_affinity_cookie_ttl_sec;
       connection_draining_timeout_sec =
         v_connection_draining_timeout_sec;
       description = v_description;
       enable_cdn = v_enable_cdn;
       health_checks = v_health_checks;
       id = v_id;
       load_balancing_scheme = v_load_balancing_scheme;
       locality_lb_policy = v_locality_lb_policy;
       name = v_name;
       network = v_network;
       port_name = v_port_name;
       project = v_project;
       protocol = v_protocol;
       region = v_region;
       session_affinity = v_session_affinity;
       timeout_sec = v_timeout_sec;
       backend = v_backend;
       cdn_policy = v_cdn_policy;
       circuit_breakers = v_circuit_breakers;
       consistent_hash = v_consistent_hash;
       failover_policy = v_failover_policy;
       iap = v_iap;
       log_config = v_log_config;
       outlier_detection = v_outlier_detection;
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
         if Stdlib.( = ) [] v_outlier_detection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outlier_detection)
               v_outlier_detection
           in
           let bnd = "outlier_detection", arg in
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
         if Stdlib.( = ) [] v_iap then bnds
         else
           let arg = (yojson_of_list yojson_of_iap) v_iap in
           let bnd = "iap", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_failover_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_failover_policy)
               v_failover_policy
           in
           let bnd = "failover_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_consistent_hash then bnds
         else
           let arg =
             (yojson_of_list yojson_of_consistent_hash)
               v_consistent_hash
           in
           let bnd = "consistent_hash", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_circuit_breakers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_circuit_breakers)
               v_circuit_breakers
           in
           let bnd = "circuit_breakers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cdn_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cdn_policy) v_cdn_policy
           in
           let bnd = "cdn_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend then bnds
         else
           let arg = (yojson_of_list yojson_of_backend) v_backend in
           let bnd = "backend", arg in
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
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
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
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
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
         match v_port_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_name", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_locality_lb_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality_lb_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancing_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_scheme", arg in
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
         match v_health_checks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "health_checks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_cdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_cdn", arg in
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
         match v_connection_draining_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connection_draining_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_affinity_cookie_ttl_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "affinity_cookie_ttl_sec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_backend_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_backend_service

[@@@deriving.end]

let backend ?balancing_mode ?capacity_scaler ?description ?failover
    ?max_connections ?max_connections_per_endpoint
    ?max_connections_per_instance ?max_rate ?max_rate_per_endpoint
    ?max_rate_per_instance ?max_utilization ~group () : backend =
  {
    balancing_mode;
    capacity_scaler;
    description;
    failover;
    group;
    max_connections;
    max_connections_per_endpoint;
    max_connections_per_instance;
    max_rate;
    max_rate_per_endpoint;
    max_rate_per_instance;
    max_utilization;
  }

let cdn_policy__cache_key_policy ?include_host ?include_named_cookies
    ?include_protocol ?include_query_string ?query_string_blacklist
    ?query_string_whitelist () : cdn_policy__cache_key_policy =
  {
    include_host;
    include_named_cookies;
    include_protocol;
    include_query_string;
    query_string_blacklist;
    query_string_whitelist;
  }

let cdn_policy__negative_caching_policy ?code () :
    cdn_policy__negative_caching_policy =
  { code }

let cdn_policy ?cache_mode ?client_ttl ?default_ttl ?max_ttl
    ?negative_caching ?serve_while_stale
    ?signed_url_cache_max_age_sec ?(cache_key_policy = [])
    ?(negative_caching_policy = []) () : cdn_policy =
  {
    cache_mode;
    client_ttl;
    default_ttl;
    max_ttl;
    negative_caching;
    serve_while_stale;
    signed_url_cache_max_age_sec;
    cache_key_policy;
    negative_caching_policy;
  }

let circuit_breakers ?max_connections ?max_pending_requests
    ?max_requests ?max_requests_per_connection ?max_retries () :
    circuit_breakers =
  {
    max_connections;
    max_pending_requests;
    max_requests;
    max_requests_per_connection;
    max_retries;
  }

let consistent_hash__http_cookie__ttl ?nanos ~seconds () :
    consistent_hash__http_cookie__ttl =
  { nanos; seconds }

let consistent_hash__http_cookie ?name ?path ?(ttl = []) () :
    consistent_hash__http_cookie =
  { name; path; ttl }

let consistent_hash ?http_header_name ?minimum_ring_size
    ?(http_cookie = []) () : consistent_hash =
  { http_header_name; minimum_ring_size; http_cookie }

let failover_policy ?disable_connection_drain_on_failover
    ?drop_traffic_if_unhealthy ?failover_ratio () : failover_policy =
  {
    disable_connection_drain_on_failover;
    drop_traffic_if_unhealthy;
    failover_ratio;
  }

let iap ~oauth2_client_id ~oauth2_client_secret () : iap =
  { oauth2_client_id; oauth2_client_secret }

let log_config ?enable ?sample_rate () : log_config =
  { enable; sample_rate }

let outlier_detection__base_ejection_time ?nanos ~seconds () :
    outlier_detection__base_ejection_time =
  { nanos; seconds }

let outlier_detection__interval ?nanos ~seconds () :
    outlier_detection__interval =
  { nanos; seconds }

let outlier_detection ?consecutive_errors
    ?consecutive_gateway_failure ?enforcing_consecutive_errors
    ?enforcing_consecutive_gateway_failure ?enforcing_success_rate
    ?max_ejection_percent ?success_rate_minimum_hosts
    ?success_rate_request_volume ?success_rate_stdev_factor
    ?(base_ejection_time = []) ?(interval = []) () :
    outlier_detection =
  {
    consecutive_errors;
    consecutive_gateway_failure;
    enforcing_consecutive_errors;
    enforcing_consecutive_gateway_failure;
    enforcing_success_rate;
    max_ejection_percent;
    success_rate_minimum_hosts;
    success_rate_request_volume;
    success_rate_stdev_factor;
    base_ejection_time;
    interval;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_backend_service ?affinity_cookie_ttl_sec
    ?connection_draining_timeout_sec ?description ?enable_cdn
    ?health_checks ?id ?load_balancing_scheme ?locality_lb_policy
    ?network ?port_name ?project ?protocol ?region ?session_affinity
    ?timeout_sec ?(cdn_policy = []) ?(circuit_breakers = [])
    ?(consistent_hash = []) ?(failover_policy = []) ?(iap = [])
    ?(log_config = []) ?(outlier_detection = []) ?timeouts ~name
    ~backend () : google_compute_region_backend_service =
  {
    affinity_cookie_ttl_sec;
    connection_draining_timeout_sec;
    description;
    enable_cdn;
    health_checks;
    id;
    load_balancing_scheme;
    locality_lb_policy;
    name;
    network;
    port_name;
    project;
    protocol;
    region;
    session_affinity;
    timeout_sec;
    backend;
    cdn_policy;
    circuit_breakers;
    consistent_hash;
    failover_policy;
    iap;
    log_config;
    outlier_detection;
    timeouts;
  }

type t = {
  tf_name : string;
  affinity_cookie_ttl_sec : float prop;
  connection_draining_timeout_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  enable_cdn : bool prop;
  fingerprint : string prop;
  generated_id : float prop;
  health_checks : string list prop;
  id : string prop;
  load_balancing_scheme : string prop;
  locality_lb_policy : string prop;
  name : string prop;
  network : string prop;
  port_name : string prop;
  project : string prop;
  protocol : string prop;
  region : string prop;
  self_link : string prop;
  session_affinity : string prop;
  timeout_sec : float prop;
}

let make ?affinity_cookie_ttl_sec ?connection_draining_timeout_sec
    ?description ?enable_cdn ?health_checks ?id
    ?load_balancing_scheme ?locality_lb_policy ?network ?port_name
    ?project ?protocol ?region ?session_affinity ?timeout_sec
    ?(cdn_policy = []) ?(circuit_breakers = [])
    ?(consistent_hash = []) ?(failover_policy = []) ?(iap = [])
    ?(log_config = []) ?(outlier_detection = []) ?timeouts ~name
    ~backend __id =
  let __type = "google_compute_region_backend_service" in
  let __attrs =
    ({
       tf_name = __id;
       affinity_cookie_ttl_sec =
         Prop.computed __type __id "affinity_cookie_ttl_sec";
       connection_draining_timeout_sec =
         Prop.computed __type __id "connection_draining_timeout_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       enable_cdn = Prop.computed __type __id "enable_cdn";
       fingerprint = Prop.computed __type __id "fingerprint";
       generated_id = Prop.computed __type __id "generated_id";
       health_checks = Prop.computed __type __id "health_checks";
       id = Prop.computed __type __id "id";
       load_balancing_scheme =
         Prop.computed __type __id "load_balancing_scheme";
       locality_lb_policy =
         Prop.computed __type __id "locality_lb_policy";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       port_name = Prop.computed __type __id "port_name";
       project = Prop.computed __type __id "project";
       protocol = Prop.computed __type __id "protocol";
       region = Prop.computed __type __id "region";
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
      yojson_of_google_compute_region_backend_service
        (google_compute_region_backend_service
           ?affinity_cookie_ttl_sec ?connection_draining_timeout_sec
           ?description ?enable_cdn ?health_checks ?id
           ?load_balancing_scheme ?locality_lb_policy ?network
           ?port_name ?project ?protocol ?region ?session_affinity
           ?timeout_sec ~cdn_policy ~circuit_breakers
           ~consistent_hash ~failover_policy ~iap ~log_config
           ~outlier_detection ?timeouts ~name ~backend ());
    attrs = __attrs;
  }

let register ?tf_module ?affinity_cookie_ttl_sec
    ?connection_draining_timeout_sec ?description ?enable_cdn
    ?health_checks ?id ?load_balancing_scheme ?locality_lb_policy
    ?network ?port_name ?project ?protocol ?region ?session_affinity
    ?timeout_sec ?(cdn_policy = []) ?(circuit_breakers = [])
    ?(consistent_hash = []) ?(failover_policy = []) ?(iap = [])
    ?(log_config = []) ?(outlier_detection = []) ?timeouts ~name
    ~backend __id =
  let (r : _ Tf_core.resource) =
    make ?affinity_cookie_ttl_sec ?connection_draining_timeout_sec
      ?description ?enable_cdn ?health_checks ?id
      ?load_balancing_scheme ?locality_lb_policy ?network ?port_name
      ?project ?protocol ?region ?session_affinity ?timeout_sec
      ~cdn_policy ~circuit_breakers ~consistent_hash ~failover_policy
      ~iap ~log_config ~outlier_detection ?timeouts ~name ~backend
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
