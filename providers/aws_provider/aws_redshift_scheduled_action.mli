(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_scheduled_action__target_action__pause_cluster
type aws_redshift_scheduled_action__target_action__resize_cluster
type aws_redshift_scheduled_action__target_action__resume_cluster
type aws_redshift_scheduled_action__target_action
type aws_redshift_scheduled_action

val aws_redshift_scheduled_action :
  ?description:string prop ->
  ?enable:bool prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  iam_role:string prop ->
  name:string prop ->
  schedule:string prop ->
  target_action:aws_redshift_scheduled_action__target_action list ->
  string ->
  unit
