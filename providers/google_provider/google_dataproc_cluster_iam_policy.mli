(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_cluster_iam_policy

type t = private {
  cluster : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val google_dataproc_cluster_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cluster:string prop ->
  policy_data:string prop ->
  string ->
  t
