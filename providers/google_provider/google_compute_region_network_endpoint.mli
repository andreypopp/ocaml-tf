(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_network_endpoint__timeouts
type google_compute_region_network_endpoint

val google_compute_region_network_endpoint :
  ?fqdn:string ->
  ?id:string ->
  ?ip_address:string ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_compute_region_network_endpoint__timeouts ->
  port:float ->
  region_network_endpoint_group:string ->
  string ->
  unit
