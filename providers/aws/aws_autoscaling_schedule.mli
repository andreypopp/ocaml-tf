(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_schedule

type t = private {
  arn : string prop;
  autoscaling_group_name : string prop;
  desired_capacity : float prop;
  end_time : string prop;
  id : string prop;
  max_size : float prop;
  min_size : float prop;
  recurrence : string prop;
  scheduled_action_name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

val aws_autoscaling_schedule :
  ?desired_capacity:float prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?max_size:float prop ->
  ?min_size:float prop ->
  ?recurrence:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  autoscaling_group_name:string prop ->
  scheduled_action_name:string prop ->
  string ->
  t
