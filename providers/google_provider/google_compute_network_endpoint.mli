(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_endpoint__timeouts
type google_compute_network_endpoint

val google_compute_network_endpoint :
  ?id:string prop ->
  ?instance:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_network_endpoint__timeouts ->
  ip_address:string prop ->
  network_endpoint_group:string prop ->
  string ->
  unit
