(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_https_proxy__timeouts
type google_compute_target_https_proxy

val google_compute_target_https_proxy :
  ?certificate_manager_certificates:string prop list ->
  ?certificate_map:string prop ->
  ?description:string prop ->
  ?http_keep_alive_timeout_sec:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?quic_override:string prop ->
  ?server_tls_policy:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:google_compute_target_https_proxy__timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  unit
