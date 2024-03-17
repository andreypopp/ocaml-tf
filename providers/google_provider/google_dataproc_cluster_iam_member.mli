(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_cluster_iam_member__condition
type google_dataproc_cluster_iam_member

val google_dataproc_cluster_iam_member :
  cluster:string ->
  member:string ->
  role:string ->
  condition:google_dataproc_cluster_iam_member__condition list ->
  string ->
  unit
