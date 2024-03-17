(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appautoscaling_scheduled_action__scalable_target_action
type aws_appautoscaling_scheduled_action

val aws_appautoscaling_scheduled_action :
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  name:string prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  schedule:string prop ->
  service_namespace:string prop ->
  scalable_target_action:
    aws_appautoscaling_scheduled_action__scalable_target_action list ->
  string ->
  unit
