(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_ssl_certificate

val google_compute_region_ssl_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  unit ->
  google_compute_region_ssl_certificate

val yojson_of_google_compute_region_ssl_certificate :
  google_compute_region_ssl_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  private_key : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
