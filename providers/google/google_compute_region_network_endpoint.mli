(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_network_endpoint

val google_compute_region_network_endpoint :
  ?fqdn:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  port:float prop ->
  region_network_endpoint_group:string prop ->
  unit ->
  google_compute_region_network_endpoint

val yojson_of_google_compute_region_network_endpoint :
  google_compute_region_network_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  region_network_endpoint_group : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?fqdn:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  port:float prop ->
  region_network_endpoint_group:string prop ->
  string ->
  t

val make :
  ?fqdn:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  port:float prop ->
  region_network_endpoint_group:string prop ->
  string ->
  t Tf_core.resource
