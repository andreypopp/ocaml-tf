(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_dataproc_cluster_iam_policy

val google_dataproc_cluster_iam_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cluster:string prop ->
  policy_data:string prop ->
  unit ->
  google_dataproc_cluster_iam_policy

val yojson_of_google_dataproc_cluster_iam_policy :
  google_dataproc_cluster_iam_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cluster:string prop ->
  policy_data:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cluster:string prop ->
  policy_data:string prop ->
  string ->
  t Tf_core.resource
