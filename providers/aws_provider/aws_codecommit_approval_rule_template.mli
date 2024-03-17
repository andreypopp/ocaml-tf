(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecommit_approval_rule_template

type t = private {
  approval_rule_template_id : string prop;
  content : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  last_modified_user : string prop;
  name : string prop;
  rule_content_sha256 : string prop;
}

val aws_codecommit_approval_rule_template :
  ?description:string prop ->
  ?id:string prop ->
  content:string prop ->
  name:string prop ->
  string ->
  t
