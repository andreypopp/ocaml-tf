(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appautoscaling_target

val aws_appautoscaling_target :
  ?id:string prop ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  max_capacity:float prop ->
  min_capacity:float prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  service_namespace:string prop ->
  string ->
  unit
