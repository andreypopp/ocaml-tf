(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_key_ring_iam_binding__condition
type google_kms_key_ring_iam_binding

val google_kms_key_ring_iam_binding :
  key_ring_id:string ->
  members:string list ->
  role:string ->
  condition:google_kms_key_ring_iam_binding__condition list ->
  string ->
  unit
