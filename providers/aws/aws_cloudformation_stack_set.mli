(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_stack_set__auto_deployment
type aws_cloudformation_stack_set__managed_execution
type aws_cloudformation_stack_set__operation_preferences
type aws_cloudformation_stack_set__timeouts
type aws_cloudformation_stack_set

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
  ?timeouts:aws_cloudformation_stack_set__timeouts ->
  name:string prop ->
  auto_deployment:aws_cloudformation_stack_set__auto_deployment list ->
  managed_execution:
    aws_cloudformation_stack_set__managed_execution list ->
  operation_preferences:
    aws_cloudformation_stack_set__operation_preferences list ->
  string ->
  t
