(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_binding__condition
type google_dataproc_autoscaling_policy_iam_binding

val google_dataproc_autoscaling_policy_iam_binding :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  members:string prop list ->
  policy_id:string prop ->
  role:string prop ->
  condition:
    google_dataproc_autoscaling_policy_iam_binding__condition list ->
  string ->
  unit
