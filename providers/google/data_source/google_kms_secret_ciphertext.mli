(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_kms_secret_ciphertext

val google_kms_secret_ciphertext :
  ?id:string prop ->
  crypto_key:string prop ->
  plaintext:string prop ->
  unit ->
  google_kms_secret_ciphertext

val yojson_of_google_kms_secret_ciphertext :
  google_kms_secret_ciphertext -> json

(** RESOURCE REGISTRATION *)

type t = private {
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  crypto_key:string prop ->
  plaintext:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  crypto_key:string prop ->
  plaintext:string prop ->
  string ->
  t Tf_core.resource
