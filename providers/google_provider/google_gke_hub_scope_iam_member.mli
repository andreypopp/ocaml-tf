(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_iam_member__condition
type google_gke_hub_scope_iam_member

val google_gke_hub_scope_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  scope_id:string prop ->
  condition:google_gke_hub_scope_iam_member__condition list ->
  string ->
  unit
