(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_connect_defaults = {
  namespace : string prop;  (** namespace *)
}

type setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type aws_ecs_cluster

val aws_ecs_cluster :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  unit ->
  aws_ecs_cluster

val yojson_of_aws_ecs_cluster : aws_ecs_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_name : string prop;
  id : string prop;
  pending_tasks_count : float prop;
  registered_container_instances_count : float prop;
  running_tasks_count : float prop;
  service_connect_defaults : service_connect_defaults list prop;
  setting : setting list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  string ->
  t Tf_core.resource
