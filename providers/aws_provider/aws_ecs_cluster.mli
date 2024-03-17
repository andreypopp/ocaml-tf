(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecs_cluster__configuration__execute_command_configuration__log_configuration

type aws_ecs_cluster__configuration__execute_command_configuration
type aws_ecs_cluster__configuration
type aws_ecs_cluster__service_connect_defaults
type aws_ecs_cluster__setting
type aws_ecs_cluster

val aws_ecs_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  configuration:aws_ecs_cluster__configuration list ->
  service_connect_defaults:
    aws_ecs_cluster__service_connect_defaults list ->
  setting:aws_ecs_cluster__setting list ->
  string ->
  unit
