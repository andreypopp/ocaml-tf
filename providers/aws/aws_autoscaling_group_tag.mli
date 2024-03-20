(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tag

val tag :
  key:string prop ->
  propagate_at_launch:bool prop ->
  value:string prop ->
  unit ->
  tag

type aws_autoscaling_group_tag

val aws_autoscaling_group_tag :
  ?id:string prop ->
  autoscaling_group_name:string prop ->
  tag:tag list ->
  unit ->
  aws_autoscaling_group_tag

val yojson_of_aws_autoscaling_group_tag :
  aws_autoscaling_group_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  autoscaling_group_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  autoscaling_group_name:string prop ->
  tag:tag list ->
  string ->
  t

val make :
  ?id:string prop ->
  autoscaling_group_name:string prop ->
  tag:tag list ->
  string ->
  t Tf_core.resource
