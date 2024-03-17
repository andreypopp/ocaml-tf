(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_target_tcp_proxy__timeouts
type google_compute_region_target_tcp_proxy

val google_compute_region_target_tcp_proxy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?proxy_header:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_region_target_tcp_proxy__timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  unit
