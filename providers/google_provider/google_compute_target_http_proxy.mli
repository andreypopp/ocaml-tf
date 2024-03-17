(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_http_proxy__timeouts
type google_compute_target_http_proxy

val google_compute_target_http_proxy :
  ?description:string prop ->
  ?http_keep_alive_timeout_sec:float prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_bind:bool prop ->
  ?timeouts:google_compute_target_http_proxy__timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  unit
