(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backend = {
  balancing_mode : string prop;  (** balancing_mode *)
  capacity_scaler : float prop;  (** capacity_scaler *)
  description : string prop;  (** description *)
  group : string prop;  (** group *)
  max_connections : float prop;  (** max_connections *)
  max_connections_per_endpoint : float prop;
      (** max_connections_per_endpoint *)
  max_connections_per_instance : float prop;
      (** max_connections_per_instance *)
  max_rate : float prop;  (** max_rate *)
  max_rate_per_endpoint : float prop;  (** max_rate_per_endpoint *)
  max_rate_per_instance : float prop;  (** max_rate_per_instance *)
  max_utilization : float prop;  (** max_utilization *)
}

type cdn_policy__negative_caching_policy = {
  code : float prop;  (** code *)
  ttl : float prop;  (** ttl *)
}

type cdn_policy__cache_key_policy = {
  include_host : bool prop;  (** include_host *)
  include_http_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** include_http_headers *)
  include_named_cookies : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** include_named_cookies *)
  include_protocol : bool prop;  (** include_protocol *)
  include_query_string : bool prop;  (** include_query_string *)
  query_string_blacklist : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** query_string_blacklist *)
  query_string_whitelist : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** query_string_whitelist *)
}

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop;  (** header_name *)
}

type cdn_policy = {
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** bypass_cache_on_request_headers *)
  cache_key_policy : cdn_policy__cache_key_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** cache_key_policy *)
  cache_mode : string prop;  (** cache_mode *)
  client_ttl : float prop;  (** client_ttl *)
  default_ttl : float prop;  (** default_ttl *)
  max_ttl : float prop;  (** max_ttl *)
  negative_caching : bool prop;  (** negative_caching *)
  negative_caching_policy : cdn_policy__negative_caching_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** negative_caching_policy *)
  serve_while_stale : float prop;  (** serve_while_stale *)
  signed_url_cache_max_age_sec : float prop;
      (** signed_url_cache_max_age_sec *)
}

type circuit_breakers = {
  max_connections : float prop;  (** max_connections *)
  max_pending_requests : float prop;  (** max_pending_requests *)
  max_requests : float prop;  (** max_requests *)
  max_requests_per_connection : float prop;
      (** max_requests_per_connection *)
  max_retries : float prop;  (** max_retries *)
}

type consistent_hash__http_cookie__ttl = {
  nanos : float prop;  (** nanos *)
  seconds : float prop;  (** seconds *)
}

type consistent_hash__http_cookie = {
  name : string prop;  (** name *)
  path : string prop;  (** path *)
  ttl : consistent_hash__http_cookie__ttl list;
      [@default []] [@yojson_drop_default ( = )]
      (** ttl *)
}

type consistent_hash = {
  http_cookie : consistent_hash__http_cookie list;
      [@default []] [@yojson_drop_default ( = )]
      (** http_cookie *)
  http_header_name : string prop;  (** http_header_name *)
  minimum_ring_size : float prop;  (** minimum_ring_size *)
}

type iap = {
  oauth2_client_id : string prop;  (** oauth2_client_id *)
  oauth2_client_secret : string prop;  (** oauth2_client_secret *)
  oauth2_client_secret_sha256 : string prop;
      (** oauth2_client_secret_sha256 *)
}

type locality_lb_policies__policy = {
  name : string prop;  (** name *)
}

type locality_lb_policies__custom_policy = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
}

type locality_lb_policies = {
  custom_policy : locality_lb_policies__custom_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_policy *)
  policy : locality_lb_policies__policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** policy *)
}

type log_config = {
  enable : bool prop;  (** enable *)
  sample_rate : float prop;  (** sample_rate *)
}

type outlier_detection__interval = {
  nanos : float prop;  (** nanos *)
  seconds : float prop;  (** seconds *)
}

type outlier_detection__base_ejection_time = {
  nanos : float prop;  (** nanos *)
  seconds : float prop;  (** seconds *)
}

type outlier_detection = {
  base_ejection_time : outlier_detection__base_ejection_time list;
      [@default []] [@yojson_drop_default ( = )]
      (** base_ejection_time *)
  consecutive_errors : float prop;  (** consecutive_errors *)
  consecutive_gateway_failure : float prop;
      (** consecutive_gateway_failure *)
  enforcing_consecutive_errors : float prop;
      (** enforcing_consecutive_errors *)
  enforcing_consecutive_gateway_failure : float prop;
      (** enforcing_consecutive_gateway_failure *)
  enforcing_success_rate : float prop;  (** enforcing_success_rate *)
  interval : outlier_detection__interval list;
      [@default []] [@yojson_drop_default ( = )]
      (** interval *)
  max_ejection_percent : float prop;  (** max_ejection_percent *)
  success_rate_minimum_hosts : float prop;
      (** success_rate_minimum_hosts *)
  success_rate_request_volume : float prop;
      (** success_rate_request_volume *)
  success_rate_stdev_factor : float prop;
      (** success_rate_stdev_factor *)
}

type security_settings = {
  client_tls_policy : string prop;  (** client_tls_policy *)
  subject_alt_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** subject_alt_names *)
}

type google_compute_backend_service

val google_compute_backend_service :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_backend_service

val yojson_of_google_compute_backend_service :
  google_compute_backend_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
