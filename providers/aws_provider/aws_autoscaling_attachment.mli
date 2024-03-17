(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_attachment

val aws_autoscaling_attachment :
  ?elb:string prop ->
  ?id:string prop ->
  ?lb_target_group_arn:string prop ->
  autoscaling_group_name:string prop ->
  string ->
  unit
