(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_cluster_iam_binding__condition
type google_dataproc_cluster_iam_binding

type t = private {
  cluster : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val google_dataproc_cluster_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  cluster:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_dataproc_cluster_iam_binding__condition list ->
  string ->
  t
