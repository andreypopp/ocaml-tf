(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codeartifact_domain_permissions_policy

type t = private {
  domain : string prop;
  domain_owner : string prop;
  id : string prop;
  policy_document : string prop;
  policy_revision : string prop;
  resource_arn : string prop;
}

val aws_codeartifact_domain_permissions_policy :
  ?domain_owner:string prop ->
  ?id:string prop ->
  ?policy_revision:string prop ->
  domain:string prop ->
  policy_document:string prop ->
  string ->
  t
