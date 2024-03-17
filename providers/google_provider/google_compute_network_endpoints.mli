(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_endpoints__network_endpoints
type google_compute_network_endpoints__timeouts
type google_compute_network_endpoints

val google_compute_network_endpoints :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_network_endpoints__timeouts ->
  network_endpoint_group:string prop ->
  network_endpoints:
    google_compute_network_endpoints__network_endpoints list ->
  string ->
  unit
