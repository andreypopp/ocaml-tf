(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_iap_client

val google_iap_client :
  ?id:string prop ->
  brand:string prop ->
  client_id:string prop ->
  unit ->
  google_iap_client

val yojson_of_google_iap_client : google_iap_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand:string prop ->
  client_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand:string prop ->
  client_id:string prop ->
  string ->
  t Tf_core.resource
