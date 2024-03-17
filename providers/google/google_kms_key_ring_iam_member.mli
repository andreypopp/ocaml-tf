(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_iam_member__condition
type google_kms_key_ring_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  member : string prop;
  role : string prop;
}

val google_kms_key_ring_iam_member :
  ?id:string prop ->
  key_ring_id:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_kms_key_ring_iam_member__condition list ->
  string ->
  t
