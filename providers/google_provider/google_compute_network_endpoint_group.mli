(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_endpoint_group__timeouts
type google_compute_network_endpoint_group

val google_compute_network_endpoint_group :
  ?default_port:float ->
  ?description:string ->
  ?id:string ->
  ?network_endpoint_type:string ->
  ?project:string ->
  ?subnetwork:string ->
  ?zone:string ->
  ?timeouts:google_compute_network_endpoint_group__timeouts ->
  name:string ->
  network:string ->
  string ->
  unit
