(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_health_check__grpc_health_check
type google_compute_region_health_check__http2_health_check
type google_compute_region_health_check__http_health_check
type google_compute_region_health_check__https_health_check
type google_compute_region_health_check__log_config
type google_compute_region_health_check__ssl_health_check
type google_compute_region_health_check__tcp_health_check
type google_compute_region_health_check__timeouts
type google_compute_region_health_check

val google_compute_region_health_check :
  ?check_interval_sec:float ->
  ?description:string ->
  ?healthy_threshold:float ->
  ?id:string ->
  ?project:string ->
  ?region:string ->
  ?timeout_sec:float ->
  ?unhealthy_threshold:float ->
  ?timeouts:google_compute_region_health_check__timeouts ->
  name:string ->
  grpc_health_check:
    google_compute_region_health_check__grpc_health_check list ->
  http2_health_check:
    google_compute_region_health_check__http2_health_check list ->
  http_health_check:
    google_compute_region_health_check__http_health_check list ->
  https_health_check:
    google_compute_region_health_check__https_health_check list ->
  log_config:google_compute_region_health_check__log_config list ->
  ssl_health_check:
    google_compute_region_health_check__ssl_health_check list ->
  tcp_health_check:
    google_compute_region_health_check__tcp_health_check list ->
  string ->
  unit
