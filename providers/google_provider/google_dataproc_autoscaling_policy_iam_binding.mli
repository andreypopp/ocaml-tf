(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_binding__condition
type google_dataproc_autoscaling_policy_iam_binding

val google_dataproc_autoscaling_policy_iam_binding :
  members:string list ->
  policy_id:string ->
  role:string ->
  condition:
    google_dataproc_autoscaling_policy_iam_binding__condition list ->
  string ->
  unit
