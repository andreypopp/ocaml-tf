(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_http_proxy__timeouts
type google_compute_target_http_proxy

val google_compute_target_http_proxy :
  ?description:string ->
  ?http_keep_alive_timeout_sec:float ->
  ?timeouts:google_compute_target_http_proxy__timeouts ->
  name:string ->
  url_map:string ->
  string ->
  unit
