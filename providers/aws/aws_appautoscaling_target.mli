(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_appautoscaling_target

val yojson_of_aws_appautoscaling_target :
  aws_appautoscaling_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  max_capacity : float prop;
  min_capacity : float prop;
  resource_id : string prop;
  role_arn : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  t
