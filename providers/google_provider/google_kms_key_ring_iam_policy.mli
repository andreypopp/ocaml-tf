(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  policy_data : string prop;
}

val google_kms_key_ring_iam_policy :
  ?id:string prop ->
  key_ring_id:string prop ->
  policy_data:string prop ->
  string ->
  t
