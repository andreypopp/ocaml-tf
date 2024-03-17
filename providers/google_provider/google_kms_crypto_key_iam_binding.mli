(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_iam_binding__condition
type google_kms_crypto_key_iam_binding

val google_kms_crypto_key_iam_binding :
  ?id:string ->
  crypto_key_id:string ->
  members:string list ->
  role:string ->
  condition:google_kms_crypto_key_iam_binding__condition list ->
  string ->
  unit
