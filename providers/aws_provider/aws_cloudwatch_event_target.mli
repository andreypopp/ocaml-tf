(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_target__batch_target
type aws_cloudwatch_event_target__dead_letter_config

type aws_cloudwatch_event_target__ecs_target__capacity_provider_strategy

type aws_cloudwatch_event_target__ecs_target__network_configuration

type aws_cloudwatch_event_target__ecs_target__ordered_placement_strategy

type aws_cloudwatch_event_target__ecs_target__placement_constraint
type aws_cloudwatch_event_target__ecs_target
type aws_cloudwatch_event_target__http_target
type aws_cloudwatch_event_target__input_transformer
type aws_cloudwatch_event_target__kinesis_target
type aws_cloudwatch_event_target__redshift_target
type aws_cloudwatch_event_target__retry_policy
type aws_cloudwatch_event_target__run_command_targets

type aws_cloudwatch_event_target__sagemaker_pipeline_target__pipeline_parameter_list

type aws_cloudwatch_event_target__sagemaker_pipeline_target
type aws_cloudwatch_event_target__sqs_target
type aws_cloudwatch_event_target

val aws_cloudwatch_event_target :
  ?event_bus_name:string ->
  ?id:string ->
  ?input:string ->
  ?input_path:string ->
  ?role_arn:string ->
  ?target_id:string ->
  arn:string ->
  rule:string ->
  batch_target:aws_cloudwatch_event_target__batch_target list ->
  dead_letter_config:
    aws_cloudwatch_event_target__dead_letter_config list ->
  ecs_target:aws_cloudwatch_event_target__ecs_target list ->
  http_target:aws_cloudwatch_event_target__http_target list ->
  input_transformer:
    aws_cloudwatch_event_target__input_transformer list ->
  kinesis_target:aws_cloudwatch_event_target__kinesis_target list ->
  redshift_target:aws_cloudwatch_event_target__redshift_target list ->
  retry_policy:aws_cloudwatch_event_target__retry_policy list ->
  run_command_targets:
    aws_cloudwatch_event_target__run_command_targets list ->
  sagemaker_pipeline_target:
    aws_cloudwatch_event_target__sagemaker_pipeline_target list ->
  sqs_target:aws_cloudwatch_event_target__sqs_target list ->
  string ->
  unit
