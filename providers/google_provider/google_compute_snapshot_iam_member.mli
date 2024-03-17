(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_snapshot_iam_member__condition
type google_compute_snapshot_iam_member

val google_compute_snapshot_iam_member :
  ?id:string ->
  ?project:string ->
  member:string ->
  name:string ->
  role:string ->
  condition:google_compute_snapshot_iam_member__condition list ->
  string ->
  unit
