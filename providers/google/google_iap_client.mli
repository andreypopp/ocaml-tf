(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_iap_client

val google_iap_client :
  ?id:string prop ->
  ?timeouts:timeouts ->
  brand:string prop ->
  display_name:string prop ->
  unit ->
  google_iap_client

val yojson_of_google_iap_client : google_iap_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  brand:string prop ->
  display_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  brand:string prop ->
  display_name:string prop ->
  string ->
  t Tf_core.resource
