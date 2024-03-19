(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_autoscaling_notification

val aws_autoscaling_notification :
  ?id:string prop ->
  group_names:string prop list ->
  notifications:string prop list ->
  topic_arn:string prop ->
  unit ->
  aws_autoscaling_notification

val yojson_of_aws_autoscaling_notification :
  aws_autoscaling_notification -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group_names : string list prop;
  id : string prop;
  notifications : string list prop;
  topic_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_names:string prop list ->
  notifications:string prop list ->
  topic_arn:string prop ->
  string ->
  t
