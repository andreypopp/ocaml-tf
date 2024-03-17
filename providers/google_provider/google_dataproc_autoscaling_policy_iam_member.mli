(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_member__condition
type google_dataproc_autoscaling_policy_iam_member

val google_dataproc_autoscaling_policy_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  member:string prop ->
  policy_id:string prop ->
  role:string prop ->
  condition:
    google_dataproc_autoscaling_policy_iam_member__condition list ->
  string ->
  unit
