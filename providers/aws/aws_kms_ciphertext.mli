(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_kms_ciphertext

val aws_kms_ciphertext :
  ?context:(string * string prop) list ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  unit ->
  aws_kms_ciphertext

val yojson_of_aws_kms_ciphertext : aws_kms_ciphertext -> json

(** RESOURCE REGISTRATION *)

type t = private {
  ciphertext_blob : string prop;
  context : (string * string) list prop;
  id : string prop;
  key_id : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:(string * string prop) list ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  string ->
  t
