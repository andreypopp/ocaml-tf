(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router_interface__timeouts
type google_compute_router_interface

type t = private {
  id : string prop;
  interconnect_attachment : string prop;
  ip_range : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  redundant_interface : string prop;
  region : string prop;
  router : string prop;
  subnetwork : string prop;
  vpn_tunnel : string prop;
}

val google_compute_router_interface :
  ?id:string prop ->
  ?interconnect_attachment:string prop ->
  ?ip_range:string prop ->
  ?private_ip_address:string prop ->
  ?project:string prop ->
  ?redundant_interface:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?vpn_tunnel:string prop ->
  ?timeouts:google_compute_router_interface__timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t
