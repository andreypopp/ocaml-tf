(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_global_address

val google_compute_global_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?network:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_global_address

val yojson_of_google_compute_global_address :
  google_compute_global_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address : string prop;
  address_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  ip_version : string prop;
  name : string prop;
  network : string prop;
  prefix_length : float prop;
  project : string prop;
  purpose : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?network:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?network:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
