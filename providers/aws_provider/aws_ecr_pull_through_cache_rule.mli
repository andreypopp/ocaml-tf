(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ecr_pull_through_cache_rule

type t = private {
  credential_arn : string prop;
  ecr_repository_prefix : string prop;
  id : string prop;
  registry_id : string prop;
  upstream_registry_url : string prop;
}

val aws_ecr_pull_through_cache_rule :
  ?credential_arn:string prop ->
  ?id:string prop ->
  ecr_repository_prefix:string prop ->
  upstream_registry_url:string prop ->
  string ->
  t
