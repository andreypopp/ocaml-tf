(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_iam_binding__condition
type google_gke_hub_scope_iam_binding

val google_gke_hub_scope_iam_binding :
  ?id:string ->
  ?project:string ->
  members:string list ->
  role:string ->
  scope_id:string ->
  condition:google_gke_hub_scope_iam_binding__condition list ->
  string ->
  unit
