(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_managed_scaling_policy__compute_limits
type aws_emr_managed_scaling_policy
type t = private { cluster_id : string prop; id : string prop }

val aws_emr_managed_scaling_policy :
  ?id:string prop ->
  cluster_id:string prop ->
  compute_limits:aws_emr_managed_scaling_policy__compute_limits list ->
  string ->
  t
