(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_public_advertised_prefix

val google_compute_public_advertised_prefix :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns_verification_ip:string prop ->
  ip_cidr_range:string prop ->
  name:string prop ->
  unit ->
  google_compute_public_advertised_prefix

val yojson_of_google_compute_public_advertised_prefix :
  google_compute_public_advertised_prefix -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  dns_verification_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns_verification_ip:string prop ->
  ip_cidr_range:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns_verification_ip:string prop ->
  ip_cidr_range:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
