(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork_iam_policy

type t = private {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  subnetwork : string prop;
}

val google_compute_subnetwork_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  policy_data:string prop ->
  subnetwork:string prop ->
  string ->
  t
