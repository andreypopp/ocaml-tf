(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_route

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
  ?timeouts:timeouts ->
  dest_range:string prop ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_route

val yojson_of_google_compute_route : google_compute_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  dest_range:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  dest_range:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
