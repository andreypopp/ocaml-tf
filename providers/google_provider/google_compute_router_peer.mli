(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_peer__advertised_ip_ranges
type google_compute_router_peer__bfd
type google_compute_router_peer__md5_authentication_key
type google_compute_router_peer__timeouts
type google_compute_router_peer

type t = private {
  advertise_mode : string prop;
  advertised_groups : string list prop;
  advertised_route_priority : float prop;
  enable : bool prop;
  enable_ipv6 : bool prop;
  id : string prop;
  interface : string prop;
  ip_address : string prop;
  ipv6_nexthop_address : string prop;
  management_type : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip_address : string prop;
  peer_ipv6_nexthop_address : string prop;
  project : string prop;
  region : string prop;
  router : string prop;
  router_appliance_instance : string prop;
}

val google_compute_router_peer :
  ?advertise_mode:string prop ->
  ?advertised_groups:string prop list ->
  ?advertised_route_priority:float prop ->
  ?enable:bool prop ->
  ?enable_ipv6:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ipv6_nexthop_address:string prop ->
  ?peer_ip_address:string prop ->
  ?peer_ipv6_nexthop_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?router_appliance_instance:string prop ->
  ?timeouts:google_compute_router_peer__timeouts ->
  interface:string prop ->
  name:string prop ->
  peer_asn:float prop ->
  router:string prop ->
  advertised_ip_ranges:
    google_compute_router_peer__advertised_ip_ranges list ->
  bfd:google_compute_router_peer__bfd list ->
  md5_authentication_key:
    google_compute_router_peer__md5_authentication_key list ->
  string ->
  t
