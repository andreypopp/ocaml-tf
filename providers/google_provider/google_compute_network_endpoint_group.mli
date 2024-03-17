(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_endpoint_group__timeouts
type google_compute_network_endpoint_group

val google_compute_network_endpoint_group :
  ?default_port:float prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?subnetwork:string prop ->
  ?zone:string prop ->
  ?timeouts:google_compute_network_endpoint_group__timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  unit
