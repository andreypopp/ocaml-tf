(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecommit_approval_rule_template_association

type t = private {
  approval_rule_template_name : string prop;
  id : string prop;
  repository_name : string prop;
}

val aws_codecommit_approval_rule_template_association :
  ?id:string prop ->
  approval_rule_template_name:string prop ->
  repository_name:string prop ->
  string ->
  t
