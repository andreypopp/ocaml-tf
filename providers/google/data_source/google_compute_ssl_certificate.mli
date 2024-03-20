(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_ssl_certificate

val google_compute_ssl_certificate :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_ssl_certificate

val yojson_of_google_compute_ssl_certificate :
  google_compute_ssl_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
