(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_flow_definition__human_loop_activation_config__human_loop_activation_conditions_config

type aws_sagemaker_flow_definition__human_loop_activation_config

type aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price__amount_in_usd

type aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price

type aws_sagemaker_flow_definition__human_loop_config
type aws_sagemaker_flow_definition__human_loop_request_source
type aws_sagemaker_flow_definition__output_config
type aws_sagemaker_flow_definition

type t = private {
  arn : string prop;
  flow_definition_name : string prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_flow_definition :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  flow_definition_name:string prop ->
  role_arn:string prop ->
  human_loop_activation_config:
    aws_sagemaker_flow_definition__human_loop_activation_config list ->
  human_loop_config:
    aws_sagemaker_flow_definition__human_loop_config list ->
  human_loop_request_source:
    aws_sagemaker_flow_definition__human_loop_request_source list ->
  output_config:aws_sagemaker_flow_definition__output_config list ->
  string ->
  t
