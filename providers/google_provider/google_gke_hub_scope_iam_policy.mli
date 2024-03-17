(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  scope_id : string prop;
}

val google_gke_hub_scope_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  policy_data:string prop ->
  scope_id:string prop ->
  string ->
  t
