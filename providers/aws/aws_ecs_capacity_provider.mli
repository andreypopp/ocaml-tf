(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scaling_group_provider__managed_scaling

val auto_scaling_group_provider__managed_scaling :
  ?instance_warmup_period:float prop ->
  ?maximum_scaling_step_size:float prop ->
  ?minimum_scaling_step_size:float prop ->
  ?status:string prop ->
  ?target_capacity:float prop ->
  unit ->
  auto_scaling_group_provider__managed_scaling

type auto_scaling_group_provider

val auto_scaling_group_provider :
  ?managed_draining:string prop ->
  ?managed_termination_protection:string prop ->
  ?managed_scaling:auto_scaling_group_provider__managed_scaling list ->
  auto_scaling_group_arn:string prop ->
  unit ->
  auto_scaling_group_provider

type aws_ecs_capacity_provider

val aws_ecs_capacity_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  auto_scaling_group_provider:auto_scaling_group_provider list ->
  unit ->
  aws_ecs_capacity_provider

val yojson_of_aws_ecs_capacity_provider :
  aws_ecs_capacity_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  auto_scaling_group_provider:auto_scaling_group_provider list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  auto_scaling_group_provider:auto_scaling_group_provider list ->
  string ->
  t Tf_core.resource
