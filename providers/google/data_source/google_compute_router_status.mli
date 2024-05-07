(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type best_routes = {
  description : string prop;  (** description *)
  dest_range : string prop;  (** dest_range *)
  name : string prop;  (** name *)
  network : string prop;  (** network *)
  next_hop_gateway : string prop;  (** next_hop_gateway *)
  next_hop_ilb : string prop;  (** next_hop_ilb *)
  next_hop_instance : string prop;  (** next_hop_instance *)
  next_hop_instance_zone : string prop;
      (** next_hop_instance_zone *)
  next_hop_ip : string prop;  (** next_hop_ip *)
  next_hop_network : string prop;  (** next_hop_network *)
  next_hop_vpn_tunnel : string prop;  (** next_hop_vpn_tunnel *)
  priority : float prop;  (** priority *)
  project : string prop;  (** project *)
  self_link : string prop;  (** self_link *)
  tags : string prop list;  (** tags *)
}

type best_routes_for_router = {
  description : string prop;  (** description *)
  dest_range : string prop;  (** dest_range *)
  name : string prop;  (** name *)
  network : string prop;  (** network *)
  next_hop_gateway : string prop;  (** next_hop_gateway *)
  next_hop_ilb : string prop;  (** next_hop_ilb *)
  next_hop_instance : string prop;  (** next_hop_instance *)
  next_hop_instance_zone : string prop;
      (** next_hop_instance_zone *)
  next_hop_ip : string prop;  (** next_hop_ip *)
  next_hop_network : string prop;  (** next_hop_network *)
  next_hop_vpn_tunnel : string prop;  (** next_hop_vpn_tunnel *)
  priority : float prop;  (** priority *)
  project : string prop;  (** project *)
  self_link : string prop;  (** self_link *)
  tags : string prop list;  (** tags *)
}

type google_compute_router_status

val google_compute_router_status :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_compute_router_status

val yojson_of_google_compute_router_status :
  google_compute_router_status -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  best_routes : best_routes list prop;
  best_routes_for_router : best_routes_for_router list prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
