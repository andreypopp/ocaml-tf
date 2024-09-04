(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kms_ciphertext

val aws_kms_ciphertext :
  ?context:string prop Tf_core.assoc ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  unit ->
  aws_kms_ciphertext

val yojson_of_aws_kms_ciphertext : aws_kms_ciphertext -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ciphertext_blob : string prop;
  context : string Tf_core.assoc prop;
  id : string prop;
  key_id : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:string prop Tf_core.assoc ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  string ->
  t

val make :
  ?context:string prop Tf_core.assoc ->
  ?id:string prop ->
  key_id:string prop ->
  plaintext:string prop ->
  string ->
  t Tf_core.resource
