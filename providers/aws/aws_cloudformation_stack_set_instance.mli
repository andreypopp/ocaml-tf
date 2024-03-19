(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type stack_instance_summaries = {
  account_id : string prop;  (** account_id *)
  organizational_unit_id : string prop;
      (** organizational_unit_id *)
  stack_id : string prop;  (** stack_id *)
}

type deployment_targets

val deployment_targets :
  ?organizational_unit_ids:string prop list ->
  unit ->
  deployment_targets

type operation_preferences

val operation_preferences :
  ?failure_tolerance_count:float prop ->
  ?failure_tolerance_percentage:float prop ->
  ?max_concurrent_count:float prop ->
  ?max_concurrent_percentage:float prop ->
  ?region_concurrency_type:string prop ->
  ?region_order:string prop list ->
  unit ->
  operation_preferences

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudformation_stack_set_instance

val aws_cloudformation_stack_set_instance :
  ?account_id:string prop ->
  ?call_as:string prop ->
  ?id:string prop ->
  ?parameter_overrides:(string * string prop) list ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?timeouts:timeouts ->
  stack_set_name:string prop ->
  deployment_targets:deployment_targets list ->
  operation_preferences:operation_preferences list ->
  unit ->
  aws_cloudformation_stack_set_instance

val yojson_of_aws_cloudformation_stack_set_instance :
  aws_cloudformation_stack_set_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  call_as : string prop;
  id : string prop;
  organizational_unit_id : string prop;
  parameter_overrides : (string * string) list prop;
  region : string prop;
  retain_stack : bool prop;
  stack_id : string prop;
  stack_instance_summaries : stack_instance_summaries list prop;
  stack_set_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?call_as:string prop ->
  ?id:string prop ->
  ?parameter_overrides:(string * string prop) list ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?timeouts:timeouts ->
  stack_set_name:string prop ->
  deployment_targets:deployment_targets list ->
  operation_preferences:operation_preferences list ->
  string ->
  t
