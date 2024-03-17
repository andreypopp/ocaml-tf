(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_network_endpoint__timeouts
type google_compute_global_network_endpoint

val google_compute_global_network_endpoint :
  ?fqdn:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_global_network_endpoint__timeouts ->
  global_network_endpoint_group:string prop ->
  port:float prop ->
  string ->
  unit
