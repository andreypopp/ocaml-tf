(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack_set__auto_deployment
type aws_cloudformation_stack_set__managed_execution
type aws_cloudformation_stack_set__operation_preferences
type aws_cloudformation_stack_set__timeouts
type aws_cloudformation_stack_set

val aws_cloudformation_stack_set :
  ?administration_role_arn:string ->
  ?call_as:string ->
  ?capabilities:string list ->
  ?description:string ->
  ?parameters:(string * string) list ->
  ?permission_model:string ->
  ?tags:(string * string) list ->
  ?template_url:string ->
  ?timeouts:aws_cloudformation_stack_set__timeouts ->
  name:string ->
  auto_deployment:aws_cloudformation_stack_set__auto_deployment list ->
  managed_execution:
    aws_cloudformation_stack_set__managed_execution list ->
  operation_preferences:
    aws_cloudformation_stack_set__operation_preferences list ->
  string ->
  unit
