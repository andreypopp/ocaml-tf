(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_iam_member__condition
type google_kms_crypto_key_iam_member

type t = private {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val google_kms_crypto_key_iam_member :
  ?id:string prop ->
  crypto_key_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_kms_crypto_key_iam_member__condition list ->
  string ->
  t
