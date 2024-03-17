(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_lifecycle_hook

val aws_autoscaling_lifecycle_hook :
  ?heartbeat_timeout:float ->
  ?notification_metadata:string ->
  ?notification_target_arn:string ->
  ?role_arn:string ->
  autoscaling_group_name:string ->
  lifecycle_transition:string ->
  name:string ->
  string ->
  unit
