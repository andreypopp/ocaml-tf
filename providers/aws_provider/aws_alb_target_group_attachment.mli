(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_alb_target_group_attachment

val aws_alb_target_group_attachment :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  target_group_arn:string prop ->
  target_id:string prop ->
  string ->
  unit
