(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack__timeouts
type aws_cloudformation_stack

val aws_cloudformation_stack :
  ?capabilities:string list ->
  ?disable_rollback:bool ->
  ?iam_role_arn:string ->
  ?id:string ->
  ?notification_arns:string list ->
  ?on_failure:string ->
  ?parameters:(string * string) list ->
  ?policy_body:string ->
  ?policy_url:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?template_body:string ->
  ?template_url:string ->
  ?timeout_in_minutes:float ->
  ?timeouts:aws_cloudformation_stack__timeouts ->
  name:string ->
  string ->
  unit
