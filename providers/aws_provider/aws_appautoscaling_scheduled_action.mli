(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appautoscaling_scheduled_action__scalable_target_action
type aws_appautoscaling_scheduled_action

val aws_appautoscaling_scheduled_action :
  ?end_time:string ->
  ?start_time:string ->
  ?timezone:string ->
  name:string ->
  resource_id:string ->
  scalable_dimension:string ->
  schedule:string ->
  service_namespace:string ->
  scalable_target_action:
    aws_appautoscaling_scheduled_action__scalable_target_action list ->
  string ->
  unit
