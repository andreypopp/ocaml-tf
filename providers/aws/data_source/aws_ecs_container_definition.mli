(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecs_container_definition

val aws_ecs_container_definition :
  ?id:string prop ->
  container_name:string prop ->
  task_definition:string prop ->
  unit ->
  aws_ecs_container_definition

val yojson_of_aws_ecs_container_definition :
  aws_ecs_container_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_name : string prop;
  cpu : float prop;
  disable_networking : bool prop;
  docker_labels : (string * string) list prop;
  environment : (string * string) list prop;
  id : string prop;
  image : string prop;
  image_digest : string prop;
  memory : float prop;
  memory_reservation : float prop;
  task_definition : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  container_name:string prop ->
  task_definition:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  container_name:string prop ->
  task_definition:string prop ->
  string ->
  t Tf_core.resource
