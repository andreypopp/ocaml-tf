(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ecr_pull_through_cache_rule

val aws_ecr_pull_through_cache_rule :
  ?credential_arn:string prop ->
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  upstream_registry_url:string prop ->
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
  ?credential_arn:string prop ->
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  upstream_registry_url:string prop ->
  string ->
  t
