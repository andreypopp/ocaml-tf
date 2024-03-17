(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_peering__timeouts
type google_compute_network_peering

val google_compute_network_peering :
  ?export_custom_routes:bool ->
  ?export_subnet_routes_with_public_ip:bool ->
  ?import_custom_routes:bool ->
  ?import_subnet_routes_with_public_ip:bool ->
  ?stack_type:string ->
  ?timeouts:google_compute_network_peering__timeouts ->
  name:string ->
  network:string ->
  peer_network:string ->
  string ->
  unit
