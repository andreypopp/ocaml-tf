(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeartifact_repository_permissions_policy

val aws_codeartifact_repository_permissions_policy :
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?policy_revision:string prop ->
  domain:string prop ->
  policy_document:string prop ->
  repository:string prop ->
  string ->
  unit
