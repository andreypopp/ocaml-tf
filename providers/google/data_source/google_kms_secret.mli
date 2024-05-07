(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_kms_secret

val google_kms_secret :
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ciphertext:string prop ->
  crypto_key:string prop ->
  unit ->
  google_kms_secret

val yojson_of_google_kms_secret : google_kms_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  ciphertext:string prop ->
  crypto_key:string prop ->
  string ->
  t

val make :
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ciphertext:string prop ->
  crypto_key:string prop ->
  string ->
  t Tf_core.resource
