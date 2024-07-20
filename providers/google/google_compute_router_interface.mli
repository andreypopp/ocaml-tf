(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_router_interface

val google_compute_router_interface :
  ?id:string prop ->
  ?interconnect_attachment:string prop ->
  ?ip_range:string prop ->
  ?ip_version:string prop ->
  ?private_ip_address:string prop ->
  ?project:string prop ->
  ?redundant_interface:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?vpn_tunnel:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  unit ->
  google_compute_router_interface

val yojson_of_google_compute_router_interface :
  google_compute_router_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  interconnect_attachment : string prop;
  ip_range : string prop;
  ip_version : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  redundant_interface : string prop;
  region : string prop;
  router : string prop;
  subnetwork : string prop;
  vpn_tunnel : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?interconnect_attachment:string prop ->
  ?ip_range:string prop ->
  ?ip_version:string prop ->
  ?private_ip_address:string prop ->
  ?project:string prop ->
  ?redundant_interface:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?vpn_tunnel:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?interconnect_attachment:string prop ->
  ?ip_range:string prop ->
  ?ip_version:string prop ->
  ?private_ip_address:string prop ->
  ?project:string prop ->
  ?redundant_interface:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?vpn_tunnel:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  router:string prop ->
  string ->
  t Tf_core.resource
