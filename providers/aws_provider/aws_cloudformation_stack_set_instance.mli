(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack_set_instance__deployment_targets
type aws_cloudformation_stack_set_instance__operation_preferences
type aws_cloudformation_stack_set_instance__timeouts

type aws_cloudformation_stack_set_instance__stack_instance_summaries = {
  account_id : string prop;  (** account_id *)
  organizational_unit_id : string prop;
      (** organizational_unit_id *)
  stack_id : string prop;  (** stack_id *)
}

type aws_cloudformation_stack_set_instance

type t = private {
  account_id : string prop;
  call_as : string prop;
  id : string prop;
  organizational_unit_id : string prop;
  parameter_overrides : (string * string) list prop;
  region : string prop;
  retain_stack : bool prop;
  stack_id : string prop;
  stack_instance_summaries :
    aws_cloudformation_stack_set_instance__stack_instance_summaries
    list
    prop;
  stack_set_name : string prop;
}

val aws_cloudformation_stack_set_instance :
  ?account_id:string prop ->
  ?call_as:string prop ->
  ?id:string prop ->
  ?parameter_overrides:(string * string prop) list ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?timeouts:aws_cloudformation_stack_set_instance__timeouts ->
  stack_set_name:string prop ->
  deployment_targets:
    aws_cloudformation_stack_set_instance__deployment_targets list ->
  operation_preferences:
    aws_cloudformation_stack_set_instance__operation_preferences list ->
  string ->
  t
