(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_schedule

val aws_autoscaling_schedule :
  ?desired_capacity:float ->
  ?end_time:string ->
  ?id:string ->
  ?max_size:float ->
  ?min_size:float ->
  ?recurrence:string ->
  ?start_time:string ->
  ?time_zone:string ->
  autoscaling_group_name:string ->
  scheduled_action_name:string ->
  string ->
  unit
