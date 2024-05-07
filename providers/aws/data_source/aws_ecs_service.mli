(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecs_service

val aws_ecs_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_arn:string prop ->
  service_name:string prop ->
  unit ->
  aws_ecs_service

val yojson_of_aws_ecs_service : aws_ecs_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_arn : string prop;
  desired_count : float prop;
  id : string prop;
  launch_type : string prop;
  scheduling_strategy : string prop;
  service_name : string prop;
  tags : (string * string) list prop;
  task_definition : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_arn:string prop ->
  service_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_arn:string prop ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
