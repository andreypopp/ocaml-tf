(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_network_endpoint

val google_compute_network_endpoint :
  ?id:string prop ->
  ?instance:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  ip_address:string prop ->
  network_endpoint_group:string prop ->
  unit ->
  google_compute_network_endpoint

val yojson_of_google_compute_network_endpoint :
  google_compute_network_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance : string prop;
  ip_address : string prop;
  network_endpoint_group : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instance:string prop ->
  ?port:float prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  ip_address:string prop ->
  network_endpoint_group:string prop ->
  string ->
  t
