(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  location : string prop;
  membership_id : string prop;
  policy_data : string prop;
  project : string prop;
}

val google_gke_hub_membership_iam_policy :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  membership_id:string prop ->
  policy_data:string prop ->
  string ->
  t
