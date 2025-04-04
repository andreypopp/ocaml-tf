(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type stack_instance_summaries = {
  account_id : string prop;  (** account_id *)
  organizational_unit_id : string prop;
      (** organizational_unit_id *)
  stack_id : string prop;  (** stack_id *)
}

type deployment_targets

val deployment_targets :
  ?account_filter_type:string prop ->
  ?accounts:string prop list ->
  ?accounts_url:string prop ->
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
  ?parameter_overrides:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?deployment_targets:deployment_targets list ->
  ?operation_preferences:operation_preferences list ->
  ?timeouts:timeouts ->
  stack_set_name:string prop ->
  unit ->
  aws_cloudformation_stack_set_instance

val yojson_of_aws_cloudformation_stack_set_instance :
  aws_cloudformation_stack_set_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  call_as : string prop;
  id : string prop;
  organizational_unit_id : string prop;
  parameter_overrides : string Tf_core.assoc prop;
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
  ?parameter_overrides:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?deployment_targets:deployment_targets list ->
  ?operation_preferences:operation_preferences list ->
  ?timeouts:timeouts ->
  stack_set_name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?call_as:string prop ->
  ?id:string prop ->
  ?parameter_overrides:string prop Tf_core.assoc ->
  ?region:string prop ->
  ?retain_stack:bool prop ->
  ?deployment_targets:deployment_targets list ->
  ?operation_preferences:operation_preferences list ->
  ?timeouts:timeouts ->
  stack_set_name:string prop ->
  string ->
  t Tf_core.resource
