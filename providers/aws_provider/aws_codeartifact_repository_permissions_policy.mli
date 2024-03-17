(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeartifact_repository_permissions_policy

val aws_codeartifact_repository_permissions_policy :
  ?domain_owner:string ->
  ?id:string ->
  ?policy_revision:string ->
  domain:string ->
  policy_document:string ->
  repository:string ->
  string ->
  unit
