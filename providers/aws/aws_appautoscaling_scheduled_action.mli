(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type scalable_target_action

val scalable_target_action :
  ?max_capacity:string prop ->
  ?min_capacity:string prop ->
  unit ->
  scalable_target_action

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
  scalable_target_action:scalable_target_action list ->
  unit ->
  aws_appautoscaling_scheduled_action

val yojson_of_aws_appautoscaling_scheduled_action :
  aws_appautoscaling_scheduled_action -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  end_time : string prop;
  id : string prop;
  name : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  schedule : string prop;
  service_namespace : string prop;
  start_time : string prop;
  timezone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  name:string prop ->
  resource_id:string prop ->
  scalable_dimension:string prop ->
  schedule:string prop ->
  service_namespace:string prop ->
  scalable_target_action:scalable_target_action list ->
  string ->
  t
