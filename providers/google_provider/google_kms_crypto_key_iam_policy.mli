(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_iam_policy

type t = private {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_kms_crypto_key_iam_policy :
  ?id:string prop ->
  crypto_key_id:string prop ->
  policy_data:string prop ->
  string ->
  t
