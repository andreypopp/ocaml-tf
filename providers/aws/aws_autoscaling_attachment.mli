(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_autoscaling_attachment

val aws_autoscaling_attachment :
  ?elb:string prop ->
  ?id:string prop ->
  ?lb_target_group_arn:string prop ->
  autoscaling_group_name:string prop ->
  unit ->
  aws_autoscaling_attachment

val yojson_of_aws_autoscaling_attachment :
  aws_autoscaling_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  autoscaling_group_name : string prop;
  elb : string prop;
  id : string prop;
  lb_target_group_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?elb:string prop ->
  ?id:string prop ->
  ?lb_target_group_arn:string prop ->
  autoscaling_group_name:string prop ->
  string ->
  t

val make :
  ?elb:string prop ->
  ?id:string prop ->
  ?lb_target_group_arn:string prop ->
  autoscaling_group_name:string prop ->
  string ->
  t Tf_core.resource
