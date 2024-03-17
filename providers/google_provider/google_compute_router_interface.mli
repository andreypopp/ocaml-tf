(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_interface__timeouts
type google_compute_router_interface

val google_compute_router_interface :
  ?interconnect_attachment:string ->
  ?private_ip_address:string ->
  ?subnetwork:string ->
  ?vpn_tunnel:string ->
  ?timeouts:google_compute_router_interface__timeouts ->
  name:string ->
  router:string ->
  string ->
  unit
