(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_sql_ssl_cert

val google_sql_ssl_cert :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  common_name:string prop ->
  instance:string prop ->
  unit ->
  google_sql_ssl_cert

val yojson_of_google_sql_ssl_cert : google_sql_ssl_cert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cert : string prop;
  cert_serial_number : string prop;
  common_name : string prop;
  create_time : string prop;
  expiration_time : string prop;
  id : string prop;
  instance : string prop;
  private_key : string prop;
  project : string prop;
  server_ca_cert : string prop;
  sha1_fingerprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  common_name:string prop ->
  instance:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  common_name:string prop ->
  instance:string prop ->
  string ->
  t Tf_core.resource
