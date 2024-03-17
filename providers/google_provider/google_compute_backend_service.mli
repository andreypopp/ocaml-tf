(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_backend_service__backend

type google_compute_backend_service__cdn_policy__bypass_cache_on_request_headers

type google_compute_backend_service__cdn_policy__cache_key_policy

type google_compute_backend_service__cdn_policy__negative_caching_policy

type google_compute_backend_service__cdn_policy
type google_compute_backend_service__circuit_breakers
type google_compute_backend_service__consistent_hash__http_cookie__ttl
type google_compute_backend_service__consistent_hash__http_cookie
type google_compute_backend_service__consistent_hash
type google_compute_backend_service__iap

type google_compute_backend_service__locality_lb_policies__custom_policy

type google_compute_backend_service__locality_lb_policies__policy
type google_compute_backend_service__locality_lb_policies
type google_compute_backend_service__log_config

type google_compute_backend_service__outlier_detection__base_ejection_time

type google_compute_backend_service__outlier_detection__interval
type google_compute_backend_service__outlier_detection
type google_compute_backend_service__security_settings
type google_compute_backend_service__timeouts
type google_compute_backend_service

val google_compute_backend_service :
  ?affinity_cookie_ttl_sec:float ->
  ?compression_mode:string ->
  ?connection_draining_timeout_sec:float ->
  ?custom_request_headers:string list ->
  ?custom_response_headers:string list ->
  ?description:string ->
  ?edge_security_policy:string ->
  ?enable_cdn:bool ->
  ?health_checks:string list ->
  ?load_balancing_scheme:string ->
  ?locality_lb_policy:string ->
  ?security_policy:string ->
  ?timeouts:google_compute_backend_service__timeouts ->
  name:string ->
  backend:google_compute_backend_service__backend list ->
  cdn_policy:google_compute_backend_service__cdn_policy list ->
  circuit_breakers:
    google_compute_backend_service__circuit_breakers list ->
  consistent_hash:
    google_compute_backend_service__consistent_hash list ->
  iap:google_compute_backend_service__iap list ->
  locality_lb_policies:
    google_compute_backend_service__locality_lb_policies list ->
  log_config:google_compute_backend_service__log_config list ->
  outlier_detection:
    google_compute_backend_service__outlier_detection list ->
  security_settings:
    google_compute_backend_service__security_settings list ->
  string ->
  unit
