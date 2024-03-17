(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_iam_member__condition
type google_kms_key_ring_iam_member

val google_kms_key_ring_iam_member :
  ?id:string ->
  key_ring_id:string ->
  member:string ->
  role:string ->
  condition:google_kms_key_ring_iam_member__condition list ->
  string ->
  unit
