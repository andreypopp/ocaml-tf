(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_peer__advertised_ip_ranges
type google_compute_router_peer__bfd
type google_compute_router_peer__md5_authentication_key
type google_compute_router_peer__timeouts
type google_compute_router_peer

val google_compute_router_peer :
  ?advertise_mode:string ->
  ?advertised_groups:string list ->
  ?advertised_route_priority:float ->
  ?enable:bool ->
  ?enable_ipv6:bool ->
  ?router_appliance_instance:string ->
  ?timeouts:google_compute_router_peer__timeouts ->
  interface:string ->
  name:string ->
  peer_asn:float ->
  router:string ->
  advertised_ip_ranges:
    google_compute_router_peer__advertised_ip_ranges list ->
  bfd:google_compute_router_peer__bfd list ->
  md5_authentication_key:
    google_compute_router_peer__md5_authentication_key list ->
  string ->
  unit
