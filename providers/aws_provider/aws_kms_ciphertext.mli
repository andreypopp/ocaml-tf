(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_ciphertext

val aws_kms_ciphertext :
  ?context:(string * string prop) list ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  string ->
  unit
