(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_attachment

val aws_autoscaling_attachment :
  ?elb:string ->
  ?id:string ->
  ?lb_target_group_arn:string ->
  autoscaling_group_name:string ->
  string ->
  unit
