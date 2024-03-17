(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_target_group_attachment

val aws_alb_target_group_attachment :
  ?availability_zone:string ->
  ?id:string ->
  ?port:float ->
  target_group_arn:string ->
  target_id:string ->
  string ->
  unit
