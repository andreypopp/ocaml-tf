(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy

type aws_ecs_cluster_capacity_providers

val aws_ecs_cluster_capacity_providers :
  ?capacity_providers:string list ->
  cluster_name:string ->
  default_capacity_provider_strategy:
    aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy
    list ->
  string ->
  unit
