(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_capacity_provider__auto_scaling_group_provider__managed_scaling

type aws_ecs_capacity_provider__auto_scaling_group_provider
type aws_ecs_capacity_provider

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ecs_capacity_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  auto_scaling_group_provider:
    aws_ecs_capacity_provider__auto_scaling_group_provider list ->
  string ->
  t
