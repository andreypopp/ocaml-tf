(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_group_tag__tag
type aws_autoscaling_group_tag

val aws_autoscaling_group_tag :
  ?id:string prop ->
  autoscaling_group_name:string prop ->
  tag:aws_autoscaling_group_tag__tag list ->
  string ->
  unit
