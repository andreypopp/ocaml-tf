(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_network_endpoint__timeouts
type google_compute_global_network_endpoint

val google_compute_global_network_endpoint :
  ?fqdn:string ->
  ?id:string ->
  ?ip_address:string ->
  ?project:string ->
  ?timeouts:google_compute_global_network_endpoint__timeouts ->
  global_network_endpoint_group:string ->
  port:float ->
  string ->
  unit
