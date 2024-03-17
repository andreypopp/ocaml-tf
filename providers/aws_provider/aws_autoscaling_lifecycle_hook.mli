(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_lifecycle_hook

val aws_autoscaling_lifecycle_hook :
  ?default_result:string prop ->
  ?heartbeat_timeout:float prop ->
  ?id:string prop ->
  ?notification_metadata:string prop ->
  ?notification_target_arn:string prop ->
  ?role_arn:string prop ->
  autoscaling_group_name:string prop ->
  lifecycle_transition:string prop ->
  name:string prop ->
  string ->
  unit
