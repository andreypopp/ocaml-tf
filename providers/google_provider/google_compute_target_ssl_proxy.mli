(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_ssl_proxy__timeouts
type google_compute_target_ssl_proxy

val google_compute_target_ssl_proxy :
  ?certificate_map:string ->
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?proxy_header:string ->
  ?ssl_certificates:string list ->
  ?ssl_policy:string ->
  ?timeouts:google_compute_target_ssl_proxy__timeouts ->
  backend_service:string ->
  name:string ->
  string ->
  unit
