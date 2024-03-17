(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork_iam_binding__condition
type google_compute_subnetwork_iam_binding

val google_compute_subnetwork_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  members:string list ->
  role:string ->
  subnetwork:string ->
  condition:google_compute_subnetwork_iam_binding__condition list ->
  string ->
  unit
