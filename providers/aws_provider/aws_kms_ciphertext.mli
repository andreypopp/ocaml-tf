(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_ciphertext

type t = private {
  ciphertext_blob : string prop;
  context : (string * string) list prop;
  id : string prop;
  key_id : string prop;
  plaintext : string prop;
}

val aws_kms_ciphertext :
  ?context:(string * string prop) list ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  string ->
  t
