(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack__timeouts
type aws_cloudformation_stack

type t = private {
  capabilities : string list prop;
  disable_rollback : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  notification_arns : string list prop;
  on_failure : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  policy_body : string prop;
  policy_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  template_url : string prop;
  timeout_in_minutes : float prop;
}

val aws_cloudformation_stack :
  ?capabilities:string prop list ->
  ?disable_rollback:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?notification_arns:string prop list ->
  ?on_failure:string prop ->
  ?parameters:(string * string prop) list ->
  ?policy_body:string prop ->
  ?policy_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeout_in_minutes:float prop ->
  ?timeouts:aws_cloudformation_stack__timeouts ->
  name:string prop ->
  string ->
  t
