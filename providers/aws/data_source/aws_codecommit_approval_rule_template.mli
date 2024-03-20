(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codecommit_approval_rule_template

val aws_codecommit_approval_rule_template :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_codecommit_approval_rule_template

val yojson_of_aws_codecommit_approval_rule_template :
  aws_codecommit_approval_rule_template -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
