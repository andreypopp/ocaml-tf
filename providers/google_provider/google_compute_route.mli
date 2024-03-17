(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_route__timeouts
type google_compute_route

val google_compute_route :
  ?description:string ->
  ?id:string ->
  ?next_hop_gateway:string ->
  ?next_hop_ilb:string ->
  ?next_hop_instance:string ->
  ?next_hop_instance_zone:string ->
  ?next_hop_ip:string ->
  ?next_hop_vpn_tunnel:string ->
  ?priority:float ->
  ?project:string ->
  ?tags:string list ->
  ?timeouts:google_compute_route__timeouts ->
  dest_range:string ->
  name:string ->
  network:string ->
  string ->
  unit
