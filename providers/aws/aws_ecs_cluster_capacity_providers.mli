(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_capacity_provider_strategy

val default_capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  default_capacity_provider_strategy

type aws_ecs_cluster_capacity_providers

val aws_ecs_cluster_capacity_providers :
  ?capacity_providers:string prop list ->
  ?id:string prop ->
  cluster_name:string prop ->
  default_capacity_provider_strategy:
    default_capacity_provider_strategy list ->
  unit ->
  aws_ecs_cluster_capacity_providers

val yojson_of_aws_ecs_cluster_capacity_providers :
  aws_ecs_cluster_capacity_providers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capacity_providers : string list prop;
  cluster_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?capacity_providers:string prop list ->
  ?id:string prop ->
  cluster_name:string prop ->
  default_capacity_provider_strategy:
    default_capacity_provider_strategy list ->
  string ->
  t

val make :
  ?capacity_providers:string prop list ->
  ?id:string prop ->
  cluster_name:string prop ->
  default_capacity_provider_strategy:
    default_capacity_provider_strategy list ->
  string ->
  t Tf_core.resource
