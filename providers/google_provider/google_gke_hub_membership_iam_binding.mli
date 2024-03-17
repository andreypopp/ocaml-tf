(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_iam_binding__condition
type google_gke_hub_membership_iam_binding

val google_gke_hub_membership_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  membership_id:string prop ->
  role:string prop ->
  condition:google_gke_hub_membership_iam_binding__condition list ->
  string ->
  unit
