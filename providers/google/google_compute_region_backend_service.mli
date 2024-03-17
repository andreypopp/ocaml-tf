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

type t = private {
  affinity_cookie_ttl_sec : float prop;
  connection_draining_timeout_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  enable_cdn : bool prop;
  fingerprint : string prop;
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

val google_compute_region_backend_service :
  ?affinity_cookie_ttl_sec:float prop ->
  ?connection_draining_timeout_sec:float prop ->
  ?description:string prop ->
  ?enable_cdn:bool prop ->
  ?health_checks:string prop list ->
  ?id:string prop ->
  ?load_balancing_scheme:string prop ->
  ?locality_lb_policy:string prop ->
  ?network:string prop ->
  ?port_name:string prop ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?region:string prop ->
  ?session_affinity:string prop ->
  ?timeout_sec:float prop ->
  ?timeouts:google_compute_region_backend_service__timeouts ->
  name:string prop ->
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
  t
