(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_vpn_gateway

val google_compute_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_vpn_gateway

val yojson_of_google_compute_vpn_gateway :
  google_compute_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  gateway_id : float prop;
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
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
