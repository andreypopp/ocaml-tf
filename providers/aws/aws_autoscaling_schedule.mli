(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_autoscaling_schedule

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
  unit ->
  aws_autoscaling_schedule

val yojson_of_aws_autoscaling_schedule :
  aws_autoscaling_schedule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
