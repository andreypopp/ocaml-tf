(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_iam_member__condition
type google_gke_hub_membership_iam_member

val google_gke_hub_membership_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  member:string prop ->
  membership_id:string prop ->
  role:string prop ->
  condition:google_gke_hub_membership_iam_member__condition list ->
  string ->
  unit
