(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecs_tag

val aws_ecs_tag :
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  unit ->
  aws_ecs_tag

val yojson_of_aws_ecs_tag : aws_ecs_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key:string prop ->
  resource_arn:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
