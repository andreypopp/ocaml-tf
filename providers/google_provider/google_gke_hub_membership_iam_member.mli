(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_iam_member__condition
type google_gke_hub_membership_iam_member

val google_gke_hub_membership_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  membership_id:string ->
  role:string ->
  condition:google_gke_hub_membership_iam_member__condition list ->
  string ->
  unit
