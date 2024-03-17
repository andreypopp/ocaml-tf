(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_https_proxy__timeouts
type google_compute_target_https_proxy

val google_compute_target_https_proxy :
  ?certificate_manager_certificates:string list ->
  ?certificate_map:string ->
  ?description:string ->
  ?http_keep_alive_timeout_sec:float ->
  ?quic_override:string ->
  ?server_tls_policy:string ->
  ?ssl_certificates:string list ->
  ?ssl_policy:string ->
  ?timeouts:google_compute_target_https_proxy__timeouts ->
  name:string ->
  url_map:string ->
  string ->
  unit
