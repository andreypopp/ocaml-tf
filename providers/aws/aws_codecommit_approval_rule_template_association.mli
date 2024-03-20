(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codecommit_approval_rule_template_association

val aws_codecommit_approval_rule_template_association :
  ?id:string prop ->
  approval_rule_template_name:string prop ->
  repository_name:string prop ->
  unit ->
  aws_codecommit_approval_rule_template_association

val yojson_of_aws_codecommit_approval_rule_template_association :
  aws_codecommit_approval_rule_template_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  approval_rule_template_name : string prop;
  id : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  approval_rule_template_name:string prop ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  approval_rule_template_name:string prop ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
