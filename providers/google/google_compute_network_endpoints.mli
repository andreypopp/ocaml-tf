(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type network_endpoints

val network_endpoints :
  ?instance:string prop ->
  ?port:float prop ->
  ip_address:string prop ->
  unit ->
  network_endpoints

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_network_endpoints

val google_compute_network_endpoints :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  network_endpoint_group:string prop ->
  network_endpoints:network_endpoints list ->
  unit ->
  google_compute_network_endpoints

val yojson_of_google_compute_network_endpoints :
  google_compute_network_endpoints -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  network_endpoint_group : string prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  network_endpoint_group:string prop ->
  network_endpoints:network_endpoints list ->
  string ->
  t
