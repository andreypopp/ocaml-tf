(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_pull_through_cache_rule

val aws_ecr_pull_through_cache_rule :
  ?credential_arn:string ->
  ecr_repository_prefix:string ->
  upstream_registry_url:string ->
  string ->
  unit
