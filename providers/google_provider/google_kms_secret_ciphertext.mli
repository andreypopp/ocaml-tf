(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_secret_ciphertext__timeouts
type google_kms_secret_ciphertext

val google_kms_secret_ciphertext :
  ?additional_authenticated_data:string ->
  ?id:string ->
  ?timeouts:google_kms_secret_ciphertext__timeouts ->
  crypto_key:string ->
  plaintext:string ->
  string ->
  unit
