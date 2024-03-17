(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_backend_service__backend

type google_compute_region_backend_service__cdn_policy__cache_key_policy

type google_compute_region_backend_service__cdn_policy__negative_caching_policy

type google_compute_region_backend_service__cdn_policy
type google_compute_region_backend_service__circuit_breakers

type google_compute_region_backend_service__consistent_hash__http_cookie__ttl

type google_compute_region_backend_service__consistent_hash__http_cookie

type google_compute_region_backend_service__consistent_hash
type google_compute_region_backend_service__failover_policy
type google_compute_region_backend_service__iap
type google_compute_region_backend_service__log_config

type google_compute_region_backend_service__outlier_detection__base_ejection_time

type google_compute_region_backend_service__outlier_detection__interval

type google_compute_region_backend_service__outlier_detection
type google_compute_region_backend_service__timeouts
type google_compute_region_backend_service

val google_compute_region_backend_service :
  ?affinity_cookie_ttl_sec:float ->
  ?connection_draining_timeout_sec:float ->
  ?description:string ->
  ?enable_cdn:bool ->
  ?health_checks:string list ->
  ?id:string ->
  ?load_balancing_scheme:string ->
  ?locality_lb_policy:string ->
  ?network:string ->
  ?port_name:string ->
  ?project:string ->
  ?protocol:string ->
  ?region:string ->
  ?session_affinity:string ->
  ?timeout_sec:float ->
  ?timeouts:google_compute_region_backend_service__timeouts ->
  name:string ->
  backend:google_compute_region_backend_service__backend list ->
  cdn_policy:google_compute_region_backend_service__cdn_policy list ->
  circuit_breakers:
    google_compute_region_backend_service__circuit_breakers list ->
  consistent_hash:
    google_compute_region_backend_service__consistent_hash list ->
  failover_policy:
    google_compute_region_backend_service__failover_policy list ->
  iap:google_compute_region_backend_service__iap list ->
  log_config:google_compute_region_backend_service__log_config list ->
  outlier_detection:
    google_compute_region_backend_service__outlier_detection list ->
  string ->
  unit
