(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecs_task_definition

val aws_ecs_task_definition :
  ?id:string prop ->
  task_definition:string prop ->
  unit ->
  aws_ecs_task_definition

val yojson_of_aws_ecs_task_definition :
  aws_ecs_task_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  arn_without_revision : string prop;
  execution_role_arn : string prop;
  family : string prop;
  id : string prop;
  network_mode : string prop;
  revision : float prop;
  status : string prop;
  task_definition : string prop;
  task_role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  task_definition:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  task_definition:string prop ->
  string ->
  t Tf_core.resource
