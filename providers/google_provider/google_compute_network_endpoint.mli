(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_endpoint__timeouts
type google_compute_network_endpoint

val google_compute_network_endpoint :
  ?id:string ->
  ?instance:string ->
  ?port:float ->
  ?project:string ->
  ?zone:string ->
  ?timeouts:google_compute_network_endpoint__timeouts ->
  ip_address:string ->
  network_endpoint_group:string ->
  string ->
  unit
