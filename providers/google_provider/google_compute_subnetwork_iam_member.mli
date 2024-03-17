(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork_iam_member__condition
type google_compute_subnetwork_iam_member

val google_compute_subnetwork_iam_member :
  member:string ->
  role:string ->
  subnetwork:string ->
  condition:google_compute_subnetwork_iam_member__condition list ->
  string ->
  unit
