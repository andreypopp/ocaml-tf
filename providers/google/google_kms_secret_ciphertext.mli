(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_kms_secret_ciphertext

val google_kms_secret_ciphertext :
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  crypto_key:string prop ->
  plaintext:string prop ->
  unit ->
  google_kms_secret_ciphertext

val yojson_of_google_kms_secret_ciphertext :
  google_kms_secret_ciphertext -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_authenticated_data : string prop;
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  crypto_key:string prop ->
  plaintext:string prop ->
  string ->
  t

val make :
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  crypto_key:string prop ->
  plaintext:string prop ->
  string ->
  t Tf_core.resource
