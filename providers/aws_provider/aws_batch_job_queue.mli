(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_job_queue__compute_environment_order
type aws_batch_job_queue__timeouts
type aws_batch_job_queue

val aws_batch_job_queue :
  ?compute_environments:string list ->
  ?scheduling_policy_arn:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_batch_job_queue__timeouts ->
  name:string ->
  priority:float ->
  state:string ->
  compute_environment_order:
    aws_batch_job_queue__compute_environment_order list ->
  string ->
  unit
