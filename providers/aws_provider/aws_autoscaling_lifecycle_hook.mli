(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_lifecycle_hook

val aws_autoscaling_lifecycle_hook :
  ?default_result:string ->
  ?heartbeat_timeout:float ->
  ?id:string ->
  ?notification_metadata:string ->
  ?notification_target_arn:string ->
  ?role_arn:string ->
  autoscaling_group_name:string ->
  lifecycle_transition:string ->
  name:string ->
  string ->
  unit
