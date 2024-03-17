(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_target_tcp_proxy__timeouts
type google_compute_region_target_tcp_proxy

val google_compute_region_target_tcp_proxy :
  ?description:string ->
  ?proxy_header:string ->
  ?timeouts:google_compute_region_target_tcp_proxy__timeouts ->
  backend_service:string ->
  name:string ->
  string ->
  unit
