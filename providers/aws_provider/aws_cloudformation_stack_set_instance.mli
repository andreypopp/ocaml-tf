(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack_set_instance__deployment_targets
type aws_cloudformation_stack_set_instance__operation_preferences
type aws_cloudformation_stack_set_instance__timeouts

type aws_cloudformation_stack_set_instance__stack_instance_summaries = {
  account_id : string;  (** account_id *)
  organizational_unit_id : string;  (** organizational_unit_id *)
  stack_id : string;  (** stack_id *)
}

type aws_cloudformation_stack_set_instance

val aws_cloudformation_stack_set_instance :
  ?account_id:string ->
  ?call_as:string ->
  ?id:string ->
  ?parameter_overrides:(string * string) list ->
  ?region:string ->
  ?retain_stack:bool ->
  ?timeouts:aws_cloudformation_stack_set_instance__timeouts ->
  stack_set_name:string ->
  deployment_targets:
    aws_cloudformation_stack_set_instance__deployment_targets list ->
  operation_preferences:
    aws_cloudformation_stack_set_instance__operation_preferences list ->
  string ->
  unit
