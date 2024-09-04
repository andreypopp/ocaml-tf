(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudformation_stack

val aws_cloudformation_stack :
  ?capabilities:string prop list ->
  ?disable_rollback:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?notification_arns:string prop list ->
  ?on_failure:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?policy_body:string prop ->
  ?policy_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_cloudformation_stack

val yojson_of_aws_cloudformation_stack :
  aws_cloudformation_stack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capabilities : string list prop;
  disable_rollback : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  notification_arns : string list prop;
  on_failure : string prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  policy_body : string prop;
  policy_url : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  template_body : string prop;
  template_url : string prop;
  timeout_in_minutes : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?capabilities:string prop list ->
  ?disable_rollback:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?notification_arns:string prop list ->
  ?on_failure:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?policy_body:string prop ->
  ?policy_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?capabilities:string prop list ->
  ?disable_rollback:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?notification_arns:string prop list ->
  ?on_failure:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?policy_body:string prop ->
  ?policy_url:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
