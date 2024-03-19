(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type google_service_networking_peered_dns_domain

val google_service_networking_peered_dns_domain :
  ?id:string prop ->
  ?project:string prop ->
  ?service:string prop ->
  ?timeouts:timeouts ->
  dns_suffix:string prop ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_service_networking_peered_dns_domain

val yojson_of_google_service_networking_peered_dns_domain :
  google_service_networking_peered_dns_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_suffix : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?service:string prop ->
  ?timeouts:timeouts ->
  dns_suffix:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t
