(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backend

val backend :
  ?balancing_mode:string prop ->
  ?capacity_scaler:float prop ->
  ?description:string prop ->
  ?max_connections:float prop ->
  ?max_connections_per_endpoint:float prop ->
  ?max_connections_per_instance:float prop ->
  ?max_rate:float prop ->
  ?max_rate_per_endpoint:float prop ->
  ?max_rate_per_instance:float prop ->
  ?max_utilization:float prop ->
  group:string prop ->
  unit ->
  backend

type cdn_policy__bypass_cache_on_request_headers

val cdn_policy__bypass_cache_on_request_headers :
  header_name:string prop ->
  unit ->
  cdn_policy__bypass_cache_on_request_headers

type cdn_policy__cache_key_policy

val cdn_policy__cache_key_policy :
  ?include_host:bool prop ->
  ?include_http_headers:string prop list ->
  ?include_named_cookies:string prop list ->
  ?include_protocol:bool prop ->
  ?include_query_string:bool prop ->
  ?query_string_blacklist:string prop list ->
  ?query_string_whitelist:string prop list ->
  unit ->
  cdn_policy__cache_key_policy

type cdn_policy__negative_caching_policy

val cdn_policy__negative_caching_policy :
  ?code:float prop ->
  ?ttl:float prop ->
  unit ->
  cdn_policy__negative_caching_policy

type cdn_policy

val cdn_policy :
  ?cache_mode:string prop ->
  ?client_ttl:float prop ->
  ?default_ttl:float prop ->
  ?max_ttl:float prop ->
  ?negative_caching:bool prop ->
  ?serve_while_stale:float prop ->
  ?signed_url_cache_max_age_sec:float prop ->
  ?bypass_cache_on_request_headers:
    cdn_policy__bypass_cache_on_request_headers list ->
  ?cache_key_policy:cdn_policy__cache_key_policy list ->
  ?negative_caching_policy:cdn_policy__negative_caching_policy list ->
  unit ->
  cdn_policy

type circuit_breakers

val circuit_breakers :
  ?max_connections:float prop ->
  ?max_pending_requests:float prop ->
  ?max_requests:float prop ->
  ?max_requests_per_connection:float prop ->
  ?max_retries:float prop ->
  unit ->
  circuit_breakers

type consistent_hash__http_cookie__ttl

val consistent_hash__http_cookie__ttl :
  ?nanos:float prop ->
  seconds:float prop ->
  unit ->
  consistent_hash__http_cookie__ttl

type consistent_hash__http_cookie

val consistent_hash__http_cookie :
  ?name:string prop ->
  ?path:string prop ->
  ?ttl:consistent_hash__http_cookie__ttl list ->
  unit ->
  consistent_hash__http_cookie

type consistent_hash

val consistent_hash :
  ?http_header_name:string prop ->
  ?minimum_ring_size:float prop ->
  ?http_cookie:consistent_hash__http_cookie list ->
  unit ->
  consistent_hash

type iap

val iap :
  oauth2_client_id:string prop ->
  oauth2_client_secret:string prop ->
  unit ->
  iap

type locality_lb_policies__custom_policy

val locality_lb_policies__custom_policy :
  ?data:string prop ->
  name:string prop ->
  unit ->
  locality_lb_policies__custom_policy

type locality_lb_policies__policy

val locality_lb_policies__policy :
  name:string prop -> unit -> locality_lb_policies__policy

type locality_lb_policies

val locality_lb_policies :
  ?custom_policy:locality_lb_policies__custom_policy list ->
  ?policy:locality_lb_policies__policy list ->
  unit ->
  locality_lb_policies

type log_config

val log_config :
  ?enable:bool prop -> ?sample_rate:float prop -> unit -> log_config

type outlier_detection__base_ejection_time

val outlier_detection__base_ejection_time :
  ?nanos:float prop ->
  seconds:float prop ->
  unit ->
  outlier_detection__base_ejection_time

type outlier_detection__interval

val outlier_detection__interval :
  ?nanos:float prop ->
  seconds:float prop ->
  unit ->
  outlier_detection__interval

type outlier_detection

val outlier_detection :
  ?consecutive_errors:float prop ->
  ?consecutive_gateway_failure:float prop ->
  ?enforcing_consecutive_errors:float prop ->
  ?enforcing_consecutive_gateway_failure:float prop ->
  ?enforcing_success_rate:float prop ->
  ?max_ejection_percent:float prop ->
  ?success_rate_minimum_hosts:float prop ->
  ?success_rate_request_volume:float prop ->
  ?success_rate_stdev_factor:float prop ->
  ?base_ejection_time:outlier_detection__base_ejection_time list ->
  ?interval:outlier_detection__interval list ->
  unit ->
  outlier_detection

type security_settings

val security_settings :
  client_tls_policy:string prop ->
  subject_alt_names:string prop list ->
  unit ->
  security_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_backend_service

val google_compute_backend_service :
  ?affinity_cookie_ttl_sec:float prop ->
  ?compression_mode:string prop ->
  ?connection_draining_timeout_sec:float prop ->
  ?custom_request_headers:string prop list ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?load_balancing_scheme:string prop ->
  ?locality_lb_policy:string prop ->
  ?port_name:string prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?security_policy:string prop ->
  ?service_lb_policy:string prop ->
  ?session_affinity:string prop ->
  ?timeout_sec:float prop ->
  ?cdn_policy:cdn_policy list ->
  ?circuit_breakers:circuit_breakers list ->
  ?consistent_hash:consistent_hash list ->
  ?iap:iap list ->
  ?locality_lb_policies:locality_lb_policies list ->
  ?log_config:log_config list ->
  ?outlier_detection:outlier_detection list ->
  ?security_settings:security_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  backend:backend list ->
  unit ->
  google_compute_backend_service

val yojson_of_google_compute_backend_service :
  google_compute_backend_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  affinity_cookie_ttl_sec : float prop;
  compression_mode : string prop;
  connection_draining_timeout_sec : float prop;
  creation_timestamp : string prop;
  custom_request_headers : string list prop;
  custom_response_headers : string list prop;
  description : string prop;
  edge_security_policy : string prop;
  enable_cdn : bool prop;
  fingerprint : string prop;
  generated_id : float prop;
  health_checks : string list prop;
  id : string prop;
  load_balancing_scheme : string prop;
  locality_lb_policy : string prop;
  name : string prop;
  port_name : string prop;
  project : string prop;
  protocol : string prop;
  security_policy : string prop;
  self_link : string prop;
  service_lb_policy : string prop;
  session_affinity : string prop;
  timeout_sec : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?affinity_cookie_ttl_sec:float prop ->
  ?compression_mode:string prop ->
  ?connection_draining_timeout_sec:float prop ->
  ?custom_request_headers:string prop list ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?load_balancing_scheme:string prop ->
  ?locality_lb_policy:string prop ->
  ?port_name:string prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?security_policy:string prop ->
  ?service_lb_policy:string prop ->
  ?session_affinity:string prop ->
  ?timeout_sec:float prop ->
  ?cdn_policy:cdn_policy list ->
  ?circuit_breakers:circuit_breakers list ->
  ?consistent_hash:consistent_hash list ->
  ?iap:iap list ->
  ?locality_lb_policies:locality_lb_policies list ->
  ?log_config:log_config list ->
  ?outlier_detection:outlier_detection list ->
  ?security_settings:security_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  backend:backend list ->
  string ->
  t

val make :
  ?affinity_cookie_ttl_sec:float prop ->
  ?compression_mode:string prop ->
  ?connection_draining_timeout_sec:float prop ->
  ?custom_request_headers:string prop list ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?load_balancing_scheme:string prop ->
  ?locality_lb_policy:string prop ->
  ?port_name:string prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?security_policy:string prop ->
  ?service_lb_policy:string prop ->
  ?session_affinity:string prop ->
  ?timeout_sec:float prop ->
  ?cdn_policy:cdn_policy list ->
  ?circuit_breakers:circuit_breakers list ->
  ?consistent_hash:consistent_hash list ->
  ?iap:iap list ->
  ?locality_lb_policies:locality_lb_policies list ->
  ?log_config:log_config list ->
  ?outlier_detection:outlier_detection list ->
  ?security_settings:security_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  backend:backend list ->
  string ->
  t Tf_core.resource
