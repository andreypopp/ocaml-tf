(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_autoscaling_notification

type t = private {
  group_names : string list prop;
  id : string prop;
  notifications : string list prop;
  topic_arn : string prop;
}

val aws_autoscaling_notification :
  ?id:string prop ->
  group_names:string prop list ->
  notifications:string prop list ->
  topic_arn:string prop ->
  string ->
  t
