(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codeartifact_repository_permissions_policy

val aws_codeartifact_repository_permissions_policy :
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?policy_revision:string prop ->
  domain:string prop ->
  policy_document:string prop ->
  repository:string prop ->
  unit ->
  aws_codeartifact_repository_permissions_policy

val yojson_of_aws_codeartifact_repository_permissions_policy :
  aws_codeartifact_repository_permissions_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  policy_document : string prop;
  policy_revision : string prop;
  repository : string prop;
  resource_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?policy_revision:string prop ->
  domain:string prop ->
  policy_document:string prop ->
  repository:string prop ->
  string ->
  t

val make :
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?policy_revision:string prop ->
  domain:string prop ->
  policy_document:string prop ->
  repository:string prop ->
  string ->
  t Tf_core.resource
