(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_target_group_attachment

val aws_lb_target_group_attachment :
  ?availability_zone:string ->
  ?port:float ->
  target_group_arn:string ->
  target_id:string ->
  string ->
  unit
