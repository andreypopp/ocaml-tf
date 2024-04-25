(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp__advertised_ip_ranges

val bgp__advertised_ip_ranges :
  ?description:string prop ->
  range:string prop ->
  unit ->
  bgp__advertised_ip_ranges

type bgp

val bgp :
  ?advertise_mode:string prop ->
  ?advertised_groups:string prop list ->
  ?keepalive_interval:float prop ->
  ?advertised_ip_ranges:bgp__advertised_ip_ranges list ->
  asn:float prop ->
  unit ->
  bgp

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_router

val google_compute_router :
  ?description:string prop ->
  ?encrypted_interconnect_router:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?bgp:bgp list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_router

val yojson_of_google_compute_router : google_compute_router -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  encrypted_interconnect_router : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?encrypted_interconnect_router:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?bgp:bgp list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?encrypted_interconnect_router:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?bgp:bgp list ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
