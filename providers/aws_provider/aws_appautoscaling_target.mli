(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appautoscaling_target

val aws_appautoscaling_target :
  ?tags:(string * string) list ->
  max_capacity:float ->
  min_capacity:float ->
  resource_id:string ->
  scalable_dimension:string ->
  service_namespace:string ->
  string ->
  unit
