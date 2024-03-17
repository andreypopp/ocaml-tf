(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_secret_ciphertext__timeouts
type google_kms_secret_ciphertext

val google_kms_secret_ciphertext :
  ?additional_authenticated_data:string prop ->
  ?id:string prop ->
  ?timeouts:google_kms_secret_ciphertext__timeouts ->
  crypto_key:string prop ->
  plaintext:string prop ->
  string ->
  unit
