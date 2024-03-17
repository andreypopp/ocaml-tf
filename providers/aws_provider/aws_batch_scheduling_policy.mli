(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_scheduling_policy__fair_share_policy__share_distribution

type aws_batch_scheduling_policy__fair_share_policy
type aws_batch_scheduling_policy

val aws_batch_scheduling_policy :
  ?tags:(string * string) list ->
  name:string ->
  fair_share_policy:
    aws_batch_scheduling_policy__fair_share_policy list ->
  string ->
  unit
