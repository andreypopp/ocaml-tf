(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecr_pull_through_cache_rule

val aws_ecr_pull_through_cache_rule :
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  unit ->
  aws_ecr_pull_through_cache_rule

val yojson_of_aws_ecr_pull_through_cache_rule :
  aws_ecr_pull_through_cache_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  credential_arn : string prop;
  ecr_repository_prefix : string prop;
  id : string prop;
  registry_id : string prop;
  upstream_registry_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  string ->
  t Tf_core.resource
