(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_member__condition
type google_dataproc_autoscaling_policy_iam_member

val google_dataproc_autoscaling_policy_iam_member :
  ?id:string ->
  ?location:string ->
  ?project:string ->
  member:string ->
  policy_id:string ->
  role:string ->
  condition:
    google_dataproc_autoscaling_policy_iam_member__condition list ->
  string ->
  unit
