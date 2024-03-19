(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_autoscaling_lifecycle_hook

val yojson_of_aws_autoscaling_lifecycle_hook :
  aws_autoscaling_lifecycle_hook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  autoscaling_group_name : string prop;
  default_result : string prop;
  heartbeat_timeout : float prop;
  id : string prop;
  lifecycle_transition : string prop;
  name : string prop;
  notification_metadata : string prop;
  notification_target_arn : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  t
