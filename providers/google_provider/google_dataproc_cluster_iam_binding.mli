(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_cluster_iam_binding__condition
type google_dataproc_cluster_iam_binding

val google_dataproc_cluster_iam_binding :
  ?id:string ->
  ?project:string ->
  ?region:string ->
  cluster:string ->
  members:string list ->
  role:string ->
  condition:google_dataproc_cluster_iam_binding__condition list ->
  string ->
  unit
