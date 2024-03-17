(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_iam_binding__condition
type google_kms_crypto_key_iam_binding

type t = private {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val google_kms_crypto_key_iam_binding :
  ?id:string prop ->
  crypto_key_id:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_kms_crypto_key_iam_binding__condition list ->
  string ->
  t
