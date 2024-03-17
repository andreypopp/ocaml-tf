(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_batch_compute_environment__compute_resources__ec2_configuration

type aws_batch_compute_environment__compute_resources__launch_template
type aws_batch_compute_environment__compute_resources
type aws_batch_compute_environment__eks_configuration
type aws_batch_compute_environment__update_policy
type aws_batch_compute_environment

val aws_batch_compute_environment :
  ?state:string ->
  ?tags:(string * string) list ->
  type_:string ->
  compute_resources:
    aws_batch_compute_environment__compute_resources list ->
  eks_configuration:
    aws_batch_compute_environment__eks_configuration list ->
  update_policy:aws_batch_compute_environment__update_policy list ->
  string ->
  unit
