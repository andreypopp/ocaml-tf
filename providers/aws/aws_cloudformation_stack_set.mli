(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type auto_deployment

val auto_deployment :
  ?enabled:bool prop ->
  ?retain_stacks_on_account_removal:bool prop ->
  unit ->
  auto_deployment

type managed_execution

val managed_execution :
  ?active:bool prop -> unit -> managed_execution

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

val timeouts : ?update:string prop -> unit -> timeouts

type aws_cloudformation_stack_set

val aws_cloudformation_stack_set :
  ?administration_role_arn:string prop ->
  ?call_as:string prop ->
  ?capabilities:string prop list ->
  ?description:string prop ->
  ?execution_role_name:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?permission_model:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  auto_deployment:auto_deployment list ->
  managed_execution:managed_execution list ->
  operation_preferences:operation_preferences list ->
  unit ->
  aws_cloudformation_stack_set

val yojson_of_aws_cloudformation_stack_set :
  aws_cloudformation_stack_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administration_role_arn : string prop;
  arn : string prop;
  call_as : string prop;
  capabilities : string list prop;
  description : string prop;
  execution_role_name : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  permission_model : string prop;
  stack_set_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  template_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?administration_role_arn:string prop ->
  ?call_as:string prop ->
  ?capabilities:string prop list ->
  ?description:string prop ->
  ?execution_role_name:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?permission_model:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?template_body:string prop ->
  ?template_url:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  auto_deployment:auto_deployment list ->
  managed_execution:managed_execution list ->
  operation_preferences:operation_preferences list ->
  string ->
  t
