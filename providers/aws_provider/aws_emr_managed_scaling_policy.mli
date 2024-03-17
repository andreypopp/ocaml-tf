(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_managed_scaling_policy__compute_limits
type aws_emr_managed_scaling_policy

val aws_emr_managed_scaling_policy :
  ?id:string ->
  cluster_id:string ->
  compute_limits:aws_emr_managed_scaling_policy__compute_limits list ->
  string ->
  unit
