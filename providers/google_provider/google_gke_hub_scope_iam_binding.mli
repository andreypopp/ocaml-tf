(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_iam_binding__condition
type google_gke_hub_scope_iam_binding

val google_gke_hub_scope_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  scope_id:string prop ->
  condition:google_gke_hub_scope_iam_binding__condition list ->
  string ->
  unit
