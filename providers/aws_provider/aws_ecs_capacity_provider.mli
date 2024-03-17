(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_capacity_provider__auto_scaling_group_provider__managed_scaling

type aws_ecs_capacity_provider__auto_scaling_group_provider
type aws_ecs_capacity_provider

val aws_ecs_capacity_provider :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  auto_scaling_group_provider:
    aws_ecs_capacity_provider__auto_scaling_group_provider list ->
  string ->
  unit
