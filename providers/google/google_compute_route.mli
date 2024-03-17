(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_route__timeouts
type google_compute_route

type t = private {
  description : string prop;
  dest_range : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  next_hop_gateway : string prop;
  next_hop_ilb : string prop;
  next_hop_instance : string prop;
  next_hop_instance_zone : string prop;
  next_hop_ip : string prop;
  next_hop_network : string prop;
  next_hop_vpn_tunnel : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  tags : string list prop;
}

val google_compute_route :
  ?description:string prop ->
  ?id:string prop ->
  ?next_hop_gateway:string prop ->
  ?next_hop_ilb:string prop ->
  ?next_hop_instance:string prop ->
  ?next_hop_instance_zone:string prop ->
  ?next_hop_ip:string prop ->
  ?next_hop_vpn_tunnel:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?tags:string prop list ->
  ?timeouts:google_compute_route__timeouts ->
  dest_range:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t
