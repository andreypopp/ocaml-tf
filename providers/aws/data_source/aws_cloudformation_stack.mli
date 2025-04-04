(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudformation_stack

val aws_cloudformation_stack :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_cloudformation_stack

val yojson_of_aws_cloudformation_stack :
  aws_cloudformation_stack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capabilities : string list prop;
  description : string prop;
  disable_rollback : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  notification_arns : string list prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  template_body : string prop;
  timeout_in_minutes : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
