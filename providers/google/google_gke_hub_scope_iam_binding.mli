(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_iam_binding__condition
type google_gke_hub_scope_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  scope_id : string prop;
}

val google_gke_hub_scope_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  scope_id:string prop ->
  condition:google_gke_hub_scope_iam_binding__condition list ->
  string ->
  t
