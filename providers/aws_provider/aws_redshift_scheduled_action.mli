(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_scheduled_action__target_action__pause_cluster
type aws_redshift_scheduled_action__target_action__resize_cluster
type aws_redshift_scheduled_action__target_action__resume_cluster
type aws_redshift_scheduled_action__target_action
type aws_redshift_scheduled_action

val aws_redshift_scheduled_action :
  ?description:string ->
  ?enable:bool ->
  ?end_time:string ->
  ?start_time:string ->
  iam_role:string ->
  name:string ->
  schedule:string ->
  target_action:aws_redshift_scheduled_action__target_action list ->
  string ->
  unit
