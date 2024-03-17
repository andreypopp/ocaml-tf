(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork_iam_binding__condition
type google_compute_subnetwork_iam_binding

val google_compute_subnetwork_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  members:string prop list ->
  role:string prop ->
  subnetwork:string prop ->
  condition:google_compute_subnetwork_iam_binding__condition list ->
  string ->
  unit
