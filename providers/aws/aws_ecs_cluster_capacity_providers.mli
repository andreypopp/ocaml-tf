(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy

type aws_ecs_cluster_capacity_providers

type t = private {
  capacity_providers : string list prop;
  cluster_name : string prop;
  id : string prop;
}

val aws_ecs_cluster_capacity_providers :
  ?capacity_providers:string prop list ->
  ?id:string prop ->
  cluster_name:string prop ->
  default_capacity_provider_strategy:
    aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy
    list ->
  string ->
  t
