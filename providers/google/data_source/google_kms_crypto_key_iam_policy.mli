(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_kms_crypto_key_iam_policy

val google_kms_crypto_key_iam_policy :
  ?id:string prop ->
  crypto_key_id:string prop ->
  unit ->
  google_kms_crypto_key_iam_policy

val yojson_of_google_kms_crypto_key_iam_policy :
  google_kms_crypto_key_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  crypto_key_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  crypto_key_id:string prop ->
  string ->
  t Tf_core.resource
