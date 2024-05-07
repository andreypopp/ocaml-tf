(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_alb_target_group_attachment

val aws_alb_target_group_attachment :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  target_group_arn:string prop ->
  target_id:string prop ->
  unit ->
  aws_alb_target_group_attachment

val yojson_of_aws_alb_target_group_attachment :
  aws_alb_target_group_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  availability_zone : string prop;
  id : string prop;
  port : float prop;
  target_group_arn : string prop;
  target_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  target_group_arn:string prop ->
  target_id:string prop ->
  string ->
  t

val make :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?port:float prop ->
  target_group_arn:string prop ->
  target_id:string prop ->
  string ->
  t Tf_core.resource
