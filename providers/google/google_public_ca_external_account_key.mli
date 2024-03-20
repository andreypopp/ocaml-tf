(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_public_ca_external_account_key

val google_public_ca_external_account_key :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  unit ->
  google_public_ca_external_account_key

val yojson_of_google_public_ca_external_account_key :
  google_public_ca_external_account_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  b64_mac_key : string prop;
  id : string prop;
  key_id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
